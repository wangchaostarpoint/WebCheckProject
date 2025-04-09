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
    public partial class ZHHeader_BGD_TX_TG7 : System.Web.UI.Page
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
            string cno1 = Request.QueryString["NO"];
            SqlConnection conn = new SqlConnection("Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;");
            string sqlstr = "select gcmc from commission_sheet_tg2 where cno= @NO";
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

                        string checkSql = @"SELECT COUNT(*) FROM Report_list_tg07 WHERE YWno = @YWno AND SNno = @SNno";
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
                dataTable.Columns.Add("tdljjl ＞200%", typeof(string));
                dataTable.Columns.Add("tdljjl 200-60%", typeof(string));
                dataTable.Columns.Add("tdljll 60-40%", typeof(string));
                dataTable.Columns.Add("tdljll 40-20%", typeof(string));
                dataTable.Columns.Add("tdljll 20-10%", typeof(string));
                dataTable.Columns.Add("tdljll 10-5%", typeof(string));
                dataTable.Columns.Add("tdljll 5-2%", typeof(string));
                dataTable.Columns.Add("tdljsl 2-1%", typeof(string));
                dataTable.Columns.Add("tdljsl 1-0.5%", typeof(string));
                dataTable.Columns.Add("tdljsl 0.5-0.25%", typeof(string));
                dataTable.Columns.Add("tdljsl 0.25-0.075%", typeof(string));
                dataTable.Columns.Add("tdljxl 0.075-0.005%", typeof(string));
                dataTable.Columns.Add("tdljxl <0.005%", typeof(string));
                dataTable.Columns.Add("yxlj", typeof(string));
                dataTable.Columns.Add("xzlj", typeof(string));
                dataTable.Columns.Add("bjyxs", typeof(string));
                dataTable.Columns.Add("qlxs", typeof(string));
                dataTable.Columns.Add("tldh", typeof(string));
                dataTable.Columns.Add("tdmc", typeof(string));
                dataTable.Columns.Add("xdmdsyzdgmd", typeof(string));
                dataTable.Columns.Add("xdmdsyzxgmd", typeof(string));
                dataTable.Columns.Add("Attribute_1", typeof(string));
                dataTable.Columns.Add("Attribute_2", typeof(string));
                dataTable.Columns.Add("Attribute_3", typeof(string));
                dataTable.Columns.Add("Attribute_4", typeof(string));
                dataTable.Columns.Add("Attribute_5", typeof(string));

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
                        bulkCopy.DestinationTableName = "Report_list_tg07";
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
