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
using System.Collections;
using Xceed.Document.NET;

namespace WebCheckProject
{
    [ApiController]
    [Route("api/[controller]")]

    public partial class ZHHeader_WTD_Fill_Others_BJ_YS: System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string method = Request.QueryString["method"];//编辑后改写数据库数据
                if (method == "ReceiveJsonData")
                {

                    ReceiveJsonData();//添加新数据
                }
                else { 
                string NO1 = Request.QueryString["NO"]; //获取前端传来的任务单编号
                Label1.Text = NO1;
                string query = "";//获取固定栏数据
                string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    query = "SELECT distinct gcmc,gcbh,Wtdw,syr,lxdh,Qyrq,Syrq,Qyr FROM commission_sheet_ys2 WHERE cno= @NO";//根据任务单编号从对应委托单里搜索数据
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@NO", NO1);
                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.Read())//读取固定栏数据并显示在页面上
                    {
                        TextBox1.Text = reader["Gcmc"].ToString();
                        TextBox2.Text = reader["Wtdw"].ToString();
                        TextBox3.Text = reader["syr"].ToString();
                        TextBox4.Text = reader["lxdh"].ToString();
                        TextBox6.Text = reader["Qyrq"].ToString();
                        TextBox7.Text = reader["Syrq"].ToString();
                        TextBox8.Text = reader["Qyr"].ToString();
                        TextBoxg.Text = reader["gcbh"].ToString();
                        }
                    connection.Close();
                }
                }

            }
        }
        //数据展示部分
        
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
        public string getdata()
        {
            string cno = "";
            if (Request.QueryString["NO"] is null) {   //用作修改处理传数没有真实意义
                 cno = "1";
            }
            else
            {
                 cno = Request.QueryString["NO"];
            }
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            string query = "SELECT SNno,YWno,ysmc,qywz,qysd,Fhcd,Ypsl,Bz,Gmd,Bhmd,Xsl,Bhxsl,Bhxs,Xkxl,Ylcl,Dzkygz,Dzkybh,Dzkyrh,Kddrhbh,Kddr,Kddrss,Dzsy,Dzbx,Dzbs,Zjkjd,Zjkj,Lsylhw,Klqd,dhqd FROM commission_sheet_ys2 WHERE  cno= @NO order by SNno;";
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

//编辑部分

public class tx
        {
            public string gcmc { get; set; }
            public string Gcbh { get; set; }
            public string Wtdw { get; set; }
            public string syr { get; set; }
            public string lxdh { get; set; }
            public string Qyrq { get; set; }
            public string Syrq { get; set; }
            public string Qyr { get; set; }
            public string sno { get; set; }

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
                string gcmc = tx1.gcmc;
                string Gcbh = tx1.Gcbh;
                string Wtdw = tx1.Wtdw;
                string syr = tx1.syr;
                string lxdh = tx1.lxdh;
                string Qyrq = tx1.Qyrq;
                string Syrq = tx1.Syrq;
                string Qyr = tx1.Qyr;
                string NO1 = tx1.sno;
                string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";

                DataTable dataTable = new DataTable();
                //添加列名
                dataTable.Columns.Add("cno", typeof(string));
                dataTable.Columns.Add("Gcmc", typeof(string));
                dataTable.Columns.Add("Gcbh", typeof(string));
                dataTable.Columns.Add("Wtdw", typeof(string));
                dataTable.Columns.Add("syr", typeof(string));
                dataTable.Columns.Add("lxdh", typeof(string));
                dataTable.Columns.Add("Qyrq", typeof(string));
                dataTable.Columns.Add("Syrq", typeof(string));
                dataTable.Columns.Add("Qyr", typeof(string));
                dataTable.Columns.Add("SNno", typeof(string));
                dataTable.Columns.Add("YWno", typeof(string));
                dataTable.Columns.Add("ysmc", typeof(string));
                dataTable.Columns.Add("qywz", typeof(string));
                dataTable.Columns.Add("qysd", typeof(string));
                dataTable.Columns.Add("Fhcd", typeof(string));
                dataTable.Columns.Add("Ypsl", typeof(string));
                dataTable.Columns.Add("Bz", typeof(bool));
                dataTable.Columns.Add("Gmd", typeof(bool));
                dataTable.Columns.Add("Bhmd", typeof(bool));
                dataTable.Columns.Add("Xsl", typeof(bool));
                dataTable.Columns.Add("Bhxsl", typeof(bool));
                dataTable.Columns.Add("Bhxs", typeof(bool));
                dataTable.Columns.Add("Xkxl", typeof(bool));
                dataTable.Columns.Add("Ylcl", typeof(bool));
                dataTable.Columns.Add("Dzkygz", typeof(bool));
                dataTable.Columns.Add("Dzkybh", typeof(bool));
                dataTable.Columns.Add("Dzkyrh", typeof(bool));
                dataTable.Columns.Add("Kddrhbh", typeof(bool));
                dataTable.Columns.Add("Kddr", typeof(bool));
                dataTable.Columns.Add("Kddrss", typeof(bool));
                dataTable.Columns.Add("Dzsy", typeof(bool));
                dataTable.Columns.Add("Dzbx", typeof(bool));
                dataTable.Columns.Add("Dzbs", typeof(bool));
                dataTable.Columns.Add("Zjkjd", typeof(bool));
                dataTable.Columns.Add("Zjkj", typeof(bool));
                dataTable.Columns.Add("Lsylhw", typeof(bool));
                dataTable.Columns.Add("Klqd", typeof(bool));
                dataTable.Columns.Add("dhqd", typeof(bool));

                 string[] col9 = { NO1, gcmc, Gcbh, Wtdw, syr, lxdh, Qyrq, Syrq, Qyr};
                 //string[] col9 = { null, null, null, null, null, null, null, null, null };
                // 将数据填充到 DataTable
                for (int i = 0; i < dataArray.Length; i++)
                {
                    var data = col9.Concat(dataArray[i]).ToArray();//将前9列数据补充到数据中
                    dataTable.Rows.Add(data);
                }
                // 使用 SqlBulkCopy 进行批量插入
                string deleteQuery = "DELETE FROM commission_sheet_ys2 WHERE cno= @NO";//从对应委托单里搜索项目编号
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlCommand command = new SqlCommand(deleteQuery, connection);
                    command.Parameters.AddWithValue("@NO", NO1);
                    connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        // 删除成功
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "ShowAlert", "alert('任务单原数据已清除！');", true);
                        using (SqlBulkCopy bulkCopy = new SqlBulkCopy(connection))
                        {
                            bulkCopy.DestinationTableName = "commission_sheet_ys2";
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
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "ShowAlert", "alert('出错！');", true); ;
                    }

                    connection.Close();
                }
            }
        }
    }
}
