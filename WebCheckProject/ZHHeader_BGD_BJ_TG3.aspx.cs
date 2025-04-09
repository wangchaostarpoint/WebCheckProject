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
using static System.Net.Mime.MediaTypeNames;

namespace WebCheckProject
{
    [ApiController]
    [Route("api/[controller]")]

    public partial class ZHHeader_BGD_BJ_TG3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string rwno = " ";
                Label1.Text = "";
                string method = Request.QueryString["method"];//编辑后改写数据库数据
                if (method == "ReceiveJsonData")
                {

                    ReceiveJsonData();//添加新数据
                }
                else
                {
                    string NO1 = Request.QueryString["NO"]; //获取前端传来的任务单编号
                    //Label1.Text = NO1;
                    string query = "";//获取固定栏数据
                    string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        connection.Open();
                        query = "SELECT distinct gcmc,bgrq FROM report_list_tg03 WHERE CNO= @NO";//根据任务单编号从对应委托单里搜索数据
                        SqlCommand command = new SqlCommand(query, connection);
                        command.Parameters.AddWithValue("@NO", NO1);
                        SqlDataReader reader = command.ExecuteReader();
                        if (reader.Read())//读取固定栏数据并显示在页面上
                        {
                            Label2.Text = reader["Gcmc"].ToString();
                            Label3.Text = reader["bgrq"].ToString();
                        }
                        connection.Close();
                    }
                }

            }

        }
        public static string[][] Convert(DataTable dataTable)//datatable转换为二维字符串的方法
        {
            string[][] twoDArray = new string[dataTable.Rows.Count][];
            for (int i = 0; i < dataTable.Rows.Count; i++)
            {
                twoDArray[i] = new string[dataTable.Columns.Count];
                for (int j = 0; j < dataTable.Columns.Count; j++)
                {
                    twoDArray[i][j] = dataTable.Rows[i][j].ToString();
                }
            }
            return twoDArray;
        }
        public string Getdata()
        {
            string cno = "";
            if (Request.QueryString["NO"] is null)
            {   //用作修改处理传数没有真实意义
                cno = "1";
            }
            else
            {
                cno = Request.QueryString["NO"];
            }
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            //sql拼写问题修正，字段设计一定不能有空格，更不能带标点！！！
            string query = "SELECT YWno,SNno ,[yzkjczyljyl 100kPa] , [yzkjczyljyl 200kPa], [yzkjczyljyl 300kPa],[yzkjczyljyl 400kPa] , yzkjnjl ,yzkjnmcj,[bhkjczyljyl 100kPa] ,[bhkjczyljyl 200kPa] ,[bhkjczyljyl 300kPa] ,[bhkjczyljyl 400kPa] , bhkjnjl , bhkjnmcl FROM report_list_tg03 WHERE  cno= @NO order by YWno,SNno;"; 
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@NO", cno);
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    DataTable dt = new DataTable();
                    dt.Load(reader);
                    con.Close();
                    // 将DataTable转换为二维字符串
                    string[][] jsonArray = Convert(dt);
                    //将二维字符串转换为json
                    string json = JsonConvert.SerializeObject(jsonArray);
                    return json;
                }

            }
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

                DataTable dataTable = new DataTable();
                //添加列名
                dataTable.Columns.Add("cno", typeof(string));
                dataTable.Columns.Add("rp_no", typeof(string));
                dataTable.Columns.Add("Gcmc", typeof(string));
                dataTable.Columns.Add("bgrq", typeof(string));
                dataTable.Columns.Add("YWno", typeof(string));
                dataTable.Columns.Add("SNno", typeof(string));
                dataTable.Columns.Add("yzkjczyljyl 100kPa", typeof(string));
                dataTable.Columns.Add("yzkjczyljyl 200kPa", typeof(string));
                dataTable.Columns.Add("yzkjczyljyl 300kPa", typeof(string));
                dataTable.Columns.Add("yzkjczyljyl 400kPa", typeof(string));
                dataTable.Columns.Add("yzkjnjl", typeof(string));
                dataTable.Columns.Add("yzkjnmcj", typeof(string));
                dataTable.Columns.Add("bhkjczyljyl 100kPa", typeof(string));
                dataTable.Columns.Add("bhkjczyljyl 200kPa", typeof(string));
                dataTable.Columns.Add("bhkjczyljyl 300kPa", typeof(string));
                dataTable.Columns.Add("bhkjczyljyl 400kPa", typeof(string));
                dataTable.Columns.Add("bhkjnjl", typeof(string));
                dataTable.Columns.Add("bhkjnmcl", typeof(string));
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
                //错误表名更正
                string deleteQuery = "DELETE FROM report_list_tg03 WHERE cno= @NO";//从对应委托单里搜索项目编号
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlCommand command = new SqlCommand(deleteQuery, connection);
                    command.Parameters.AddWithValue("@NO", cno);
                    connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        // 删除成功
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "ShowAlert", "alert('任务单原数据已清除！');", true);
                        using (SqlBulkCopy bulkCopy = new SqlBulkCopy(connection))
                        {
                            bulkCopy.DestinationTableName = "report_list_tg03";
                            try
                            {
                                bulkCopy.WriteToServer(dataTable);
                            }
                            catch (Exception ex)
                            {
                                Console.WriteLine($"Error: {ex.Message}");
                            }
                        }
                    }
                    else
                    {
                        // 删除失败
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "ShowAlert", "alert('出错！');", true);
                    }

                    connection.Close();
                }

            }

        }
    }
}
