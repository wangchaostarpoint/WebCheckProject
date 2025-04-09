using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1;
using Microsoft.AspNetCore.Mvc;
using System.Text;
using System.Web.Services;
using System.Web.Script.Serialization;
using System.IO;
using Newtonsoft.Json.Linq;

namespace WebCheckProject
{
    [ApiController]
    [Route("api/[controller]")]
    public partial class ZHHeader_BGD_TX_HX1 : System.Web.UI.Page
    {
        //方法重构
        protected void Page_Load(object sender, EventArgs e)
        {
            string method = Request.QueryString["method"];
            if (method == "ReceiveJsonData")
            {
                ReceiveJsonData();
                // 处理完成后立即结束响应
                Context.Response.End();
                return; // 确保后续代码不执行
            }
            else if (!IsPostBack)
            {
                // 原有的初始化代码
                string rp_no = "";
                Label1.Text = rp_no;
                Label2.Text = gcmcget();
                Label3.Text = DateTime.Now.ToShortDateString();
            }
        }
        protected string gcmcget()
        {
            string cno1 =  Request.QueryString["NO"];
            SqlConnection conn = new SqlConnection("Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;");
            string sqlstr = "select gcmc from commission_sheet_sy2 where cno= @NO";
            SqlCommand cmd = new SqlCommand(sqlstr, conn);
            cmd.Parameters.AddWithValue("@NO", cno1);
            conn.Open();
            string gcmc = cmd.ExecuteScalar().ToString();
            conn.Close();
            return gcmc;
        }


        public class tx
        {
            public string cno { get; set; }
            public string rp_no { get; set; }
            public string gcmc { get; set; }
            public string bgrq { get; set; }

            public string[][] submittedData { get; set; }
        }
        [WebMethod]
        private void ReceiveJsonData()//将数据用datatable批量插入数据库，保证数据提交后不会因为单条数据通过验证而写进数据库
        {
            using (StreamReader reader = new StreamReader(Request.InputStream))
            {

                string json = reader.ReadToEnd();
                tx tx1 = JsonConvert.DeserializeObject<tx>(json);
                string[][] dataArray = tx1.submittedData;
                string cno = tx1.cno;
                string rp_no = tx1.rp_no;
                string gcmc = tx1.gcmc;
                string bgrq = tx1.bgrq;
                string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";

                // 新增主键重复校验逻辑
                List<string> duplicates = new List<string>();
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    foreach (var row in dataArray)
                    {
                        string yw = row[0]; // 野外编号在数据数组第一个位置
                        string sn = row[1]; // 室内编号在第二个位置

                        string checkSql = @"SELECT COUNT(*) FROM Report_list_hx1 WHERE YWno = @YWno AND SNno = @SNno";
                        using (SqlCommand cmd = new SqlCommand(checkSql, conn))
                        {
                            cmd.Parameters.AddWithValue("@YWno", yw);
                            cmd.Parameters.AddWithValue("@SNno", sn);
                            if ((int)cmd.ExecuteScalar() > 0)
                            {
                                duplicates.Add($"野外：{yw} 室内：{sn}");
                            }
                        }
                    }
                    conn.Close();
                }

                if (duplicates.Count > 0)
                {
                    Context.Response.ContentType = "application/json";
                    Context.Response.Write(JsonConvert.SerializeObject(new
                    {
                        success = false,
                        message = "发现重复数据",
                        duplicates = duplicates
                    }));
                    Context.Response.End();
                    return;
                }

                DataTable dataTable = new DataTable();
                //添加列名
                dataTable.Columns.Add("cno", typeof(string));
                dataTable.Columns.Add("rp_no", typeof(string));
                dataTable.Columns.Add("Gcmc", typeof(string));
                dataTable.Columns.Add("bgrq", typeof(string));
                dataTable.Columns.Add("YWno", typeof(string));
                dataTable.Columns.Add("SNno", typeof(string));
                dataTable.Columns.Add("qywz", typeof(string));
                dataTable.Columns.Add("sylx", typeof(string));
                dataTable.Columns.Add("qysd", typeof(string));
                dataTable.Columns.Add("wlxzqw℃", typeof(string));
                dataTable.Columns.Add("wlxzsw℃", typeof(string));
                dataTable.Columns.Add("wlxzys", typeof(string));
                dataTable.Columns.Add("wlxzqw", typeof(string));
                dataTable.Columns.Add("wlxztmd", typeof(string));
                dataTable.Columns.Add("hxxzpHz", typeof(string));
                dataTable.Columns.Add("hxxzylCO2", typeof(string));
                dataTable.Columns.Add("hxxzqsCO2", typeof(string));
                dataTable.Columns.Add("hxxzCa2+", typeof(string));
                dataTable.Columns.Add("hxxzMg2+", typeof(string));
                dataTable.Columns.Add("hxxzK+ Na+", typeof(string));
                dataTable.Columns.Add("hxxzCl-", typeof(string));
                dataTable.Columns.Add("hxxzSO42-", typeof(string));
                dataTable.Columns.Add("hxxzHCO3-", typeof(string));
                dataTable.Columns.Add("hxxzCO32-", typeof(string));//少CO3一列
                dataTable.Columns.Add("hxxzlzzl", typeof(string));
                dataTable.Columns.Add("hxxzzjd", typeof(string));
                dataTable.Columns.Add("hxxzzyd", typeof(string));
                dataTable.Columns.Add("hxxzzsyd", typeof(string));
                dataTable.Columns.Add("hxxzyjyd", typeof(string));
                dataTable.Columns.Add("shxlx", typeof(string));

                string[] col4 = { cno, rp_no, gcmc, bgrq };
                // 将数据填充到 DataTable
                for (int i = 0; i < dataArray.Length; i++)
                {
                    var data = col4.Concat(dataArray[i]).ToArray();//将前4列数据补充到数据中
                    dataTable.Rows.Add(data);
                }
                // 使用 SqlBulkCopy 进行批量插入
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (SqlBulkCopy bulkCopy = new SqlBulkCopy(connection))
                    {
                        bulkCopy.DestinationTableName = "Report_list_hx1";
                        try
                        {
                            bulkCopy.WriteToServer(dataTable);
                        }
                        catch (Exception ex)
                        {
                            Console.WriteLine($"Error: {ex.Message}");
                        }
                    }
                    connection.Close();
                }
                //用Response替换
                Response.ContentType = "application/json";
                Response.Write(JsonConvert.SerializeObject(new { success = true }));
                Response.End();
            }

        }
    }
}
