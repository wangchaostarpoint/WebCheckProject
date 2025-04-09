using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using Newtonsoft.Json;
using WebApplication1;
using Microsoft.AspNetCore.Mvc;
using System.Xml.Linq;
using System.Text;

namespace WebCheckProject
{
    public partial class SC : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string NO1 = Request.QueryString["NO"]; //获取前端传来的任务单编号
                Label1.Text = NO1;
                string syxm = Request.QueryString["syxm"]; //获取前端传来的实验项目部门
                TextBox5.Text = syxm;
                string query = "";
                string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    if (NO1.Contains("HX"))
                    {
                        query = "SELECT * FROM commission_sheet_sy WHERE cno= @NO";//根据任务单编号从对应委托单里搜索数据
                    }
                    if (NO1.Contains("YS"))
                    {
                         query = "SELECT * FROM commission_sheet_ys WHERE cno= @NO";//根据任务单编号从对应委托单里搜索数据
                    }
                    if (NO1.Contains("TG"))
                    {
                        query = "SELECT * FROM commission_sheet_tg WHERE cno= @NO";//根据任务单编号从对应委托单里搜索数据
                    }
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@NO", NO1);
                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.Read())//读取数据并显示在页面上
                    {
                            TextBox1.Text = reader["Gcmc"].ToString();
                            TextBox2.Text = reader["Wtdw"].ToString();
                            TextBox3.Text = reader["syr"].ToString();
                            TextBox4.Text = reader["lxdh"].ToString();
                            TextBox6.Text = reader["Qyrq"].ToString();
                            TextBox7.Text = reader["Syrq"].ToString();
                            TextBox8.Text = reader["Qyr"].ToString();
                    }                    
                    connection.Close();
                }
            }
        }


        public string GetDataForHandsontable() //获取大项检测项目
        {
            string NO1 = Label1.Text;
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            SqlConnection connection1 = new SqlConnection(connectionString);
            connection1.Open();            
            string query = "";
            if (NO1.Contains("HX"))
            {
                query = "SELECT jcxm FROM commission_sheet_sy WHERE cno= @NO";//从对应委托单里搜索项目编号
            }
            if (NO1.Contains("YS"))
            {
                query = "SELECT jcxm FROM commission_sheet_ys WHERE cno= @NO";//从对应委托单里搜索项目编号
            }
            if (NO1.Contains("TG"))
            {
                query = "SELECT jcxm FROM commission_sheet_tg WHERE cno= @NO";//根据任务单编号从对应委托单里搜索数据
            }

            SqlCommand command = new SqlCommand(query, connection1);
            command.Parameters.AddWithValue("@NO", NO1);
            SqlDataReader sdr = command.ExecuteReader();
            string xmmc = "";
            if (sdr.Read())
            {
                xmmc = sdr[0].ToString();
            }
            connection1.Close();

            /* string[] bh = xmbh.Split(' '); //项目编号根据空格分割成数组
             string xm = "";
             string jcxm = "";

             for (int i = 0; i < bh.Length - 1; i++)
             {
                 SqlConnection connection = new SqlConnection(connectionString);
                 connection.Open();
                 string query1 = "SELECT xmmc FROM commission_attribute_list WHERE xmbh= @bh";//根据项目编号获得项目名称
                 SqlCommand cd = new SqlCommand(query1, connection);
                 cd.Parameters.AddWithValue("@bh", bh[i]);
                 SqlDataReader sdr1 = cd.ExecuteReader();
                 if (sdr1.Read())
                 {
                     xm = sdr1[0].ToString();
                 }
                 jcxm += xm + " ";
                 connection.Close();
             }*/
             return "'" + xmmc + "'";
        }

        public string Getkxdata() //获取扩项的检测项目
        {
            string NO1 = Label1.Text;
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            SqlConnection connection1 = new SqlConnection(connectionString);
            connection1.Open();          
            string query = "";
            if (NO1.Contains("HX"))
            {
                query = "SELECT jcxm FROM commission_sheet_sy WHERE cno= @NO";//从对应委托单里搜索项目编号
            }
            if (NO1.Contains("YS"))
            {
                query = "SELECT jcxm FROM commission_sheet_ys WHERE cno= @NO";//从对应委托单里搜索项目编号
            }
            if (NO1.Contains("TG"))
            {
                query = "SELECT jcxm FROM commission_sheet_tg WHERE cno= @NO";//根据任务单编号从对应委托单里搜索数据
            }

            SqlCommand command = new SqlCommand(query, connection1);
            command.Parameters.AddWithValue("@NO", NO1);
            SqlDataReader sdr = command.ExecuteReader();
            string xmmc = "";
            if (sdr.Read())
            {
                xmmc = sdr[0].ToString();
            }
            connection1.Close();

            string[] xm = xmmc.Split(' '); //检测项目根据空格分割成数组
            string kx;
            string kxmc = "";

            for (int i = 0; i < xm.Length - 1; i++)
            {
                string query1 = "select kxmc from commission_attribute_list where xmmc LIKE @xm";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlCommand cd = new SqlCommand(query1, connection);
                    cd.Parameters.AddWithValue("@xm", xm[i] + "%");
                    connection.Open();
                    // 使用SqlDataReader来读取数据
                    using (SqlDataReader reader = cd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                // 假设只有一列数据
                                kx = reader[0].ToString();
                                kxmc += kx + " ";
                            }
                        }
                    }
                    connection.Close();
                }
            }
            return "'" + kxmc + "'";

        }

        public string GetCount()  //大项下若存在扩项项目，获得其数目
        {
            string NO1 = Label1.Text;
            //string syxm = TextBox5.Text;
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            SqlConnection connection1 = new SqlConnection(connectionString);
            connection1.Open();
            string query = "";
            if (NO1.Contains("HX"))
            {
                query = "SELECT jcxm FROM commission_sheet_sy WHERE cno= @NO";//从对应委托单里搜索项目编号
            }
            if (NO1.Contains("YS"))
            {
                query = "SELECT jcxm FROM commission_sheet_ys WHERE cno= @NO";//从对应委托单里搜索项目编号
            }
            if (NO1.Contains("TG"))
            {
                query = "SELECT jcxm FROM commission_sheet_tg WHERE cno= @NO";//根据任务单编号从对应委托单里搜索数据
            }

            SqlCommand command = new SqlCommand(query, connection1);
            command.Parameters.AddWithValue("@NO", NO1);
            SqlDataReader sdr = command.ExecuteReader();
            string xmmc = "";
            if (sdr.Read())
            {
                xmmc = sdr[0].ToString();
            }
            connection1.Close();

            string[] mc = xmmc.Split(' '); //项检测项目根据空格分割成数组
            string ct = "";
            string count = "";

            for (int i = 0; i < mc.Length - 1; i++)
            {
                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();
                string query1 = "select count(*) from commission_attribute_list where xmmc=@bh group by xmmc";//根据项目编号获得项目名称
                SqlCommand cd = new SqlCommand(query1, connection);
                cd.Parameters.AddWithValue("@bh", mc[i]);
                SqlDataReader sdr1 = cd.ExecuteReader();
                if (sdr1.Read())
                {
                    ct = sdr1[0].ToString();
                }
                count += ct + " ";
                connection.Close();
            }
            return "'" + count + "'";

        }


        public string GetData()
        {
            string cno = Request.QueryString["NO"];//获得任务单号
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            string query = "";
            if (cno.Contains("HX"))
            {
                query = "SELECT * FROM commission_sheet_sy WHERE cno= @NO";//从对应委托单里搜索数据
            }
            if (cno.Contains("YS"))
            {
                query = "SELECT * FROM commission_sheet_ys WHERE cno= @NO";//从对应委托单里搜索数据
            }
            if (cno.Contains("TG"))
            {
                query = "SELECT * FROM commission_sheet_tg WHERE cno= @NO";//根据任务单编号从对应委托单里搜索数据
            }
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
                    // 将DataTable转换为JSON
                    string json = JsonConvert.SerializeObject(dt, Formatting.Indented);
                    return json;
                }

            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            
            //删除已生成的任务单编号内容。
            {
                string NO = Request.QueryString["NO"];
                string syxm = Request.QueryString["syxm"];
                string deleteQuery = " ";
                string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
                if (NO.Contains("HX"))
                {
                    deleteQuery = "DELETE FROM commission_sheet_sy WHERE cno= @NO";//从对应委托单里搜索项目编号
                }
                if (NO.Contains("YS"))
                {
                    deleteQuery = "DELETE FROM commission_sheet_ys WHERE cno= @NO";//从对应委托单里搜索项目编号
                }
                if (NO.Contains("TG"))
                {
                    deleteQuery = "DELETE FROM commission_sheet_tg WHERE cno= @NO";//根据任务单编号从对应委托单里搜索数据
                }
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlCommand command = new SqlCommand(deleteQuery, connection);
                    command.Parameters.AddWithValue("@NO", NO);
                    connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        // 删除成功
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "ShowAlert", "alert('任务单原数据已清除！');", true);
                    }
                    else
                    {
                        // 删除失败
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "ShowAlert", "alert('出错！');", true); ;
                    }
                    connection.Close();
                }
                
             }

            string s_url = "ZHHeader_WTD_Fill_Others_TX.aspx" ; 
            Response.Redirect(s_url);

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string s_url = "ZHHeader_WTD.aspx"; 
            Response.Redirect(s_url);
        }
    }
}