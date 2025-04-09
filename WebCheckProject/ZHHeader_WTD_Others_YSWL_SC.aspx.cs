using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using System.Data;
using System.Data.SqlClient;
using Newtonsoft.Json.Linq;

namespace WebCheckProject
{
    public partial class OtherHeaders_WTD_YSWL_SC : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string NO1 = Request.QueryString["NO"]; //获取前端传来的任务单编号
                Label2.Text = NO1;
                string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string query = "SELECT * FROM commission_sheet_ys WHERE cno= @NO";//根据任务单编号从委托单里搜索数据
                    //string query = "SELECT * FROM commission_sheet_ys WHERE cno= 'YSRW2024001'";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@NO", NO1);
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())//读取数据并显示在页面上
                            {
                                TextBox8.Text = reader["Gcmc"].ToString();
                                TextBox9.Text = reader["Gcbh"].ToString();
                                TextBox10.Text = reader["Wtdw"].ToString();
                                TextBox11.Text = reader["Syrq"].ToString();
                                TextBox12.Text = reader["jsr"].ToString();
                                TextBox13.Text = reader["Qyrq"].ToString();
                                Label1.Text = "";
                            }
                        }
                    }
                    connection.Close();
                }
            }
        }

       public string GetDataForHandsontable() //获取大项检测项目
        {
            string NO1 = Label2.Text;
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            SqlConnection connection1 = new SqlConnection(connectionString);
            connection1.Open();
            string query = "SELECT xmbh FROM commission_sheet_ys WHERE cno= @NO";//从 commission_sheet_ys表里根据任务单号搜索项目编号
            SqlCommand command = new SqlCommand(query, connection1);
            command.Parameters.AddWithValue("@NO", NO1);
            SqlDataReader sdr = command.ExecuteReader();
            string xmbh = "";
            if (sdr.Read())
            {
                xmbh = sdr[0].ToString();
            }
            connection1.Close();

            string[] bh = xmbh.Split(' '); //项目编号根据空格分割成数组
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
            }
            return "'" + jcxm+ "'";
         
        }

        public string Getkxdata() //获取扩项的检测项目
        {
            string NO1 = Label2.Text;
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            SqlConnection connection1 = new SqlConnection(connectionString);
            connection1.Open();
            string query = "SELECT xmbh FROM commission_sheet_ys WHERE cno= @NO";//从 commission_sheet_ys表里根据任务单号搜索项目编号
            SqlCommand command = new SqlCommand(query, connection1);
            command.Parameters.AddWithValue("@NO", NO1);
            SqlDataReader sdr = command.ExecuteReader();
            string xmbh = "";
            if (sdr.Read())
            {
                xmbh = sdr[0].ToString();
            }
            connection1.Close();

            string[] bh = xmbh.Split(' '); //项目编号根据空格分割成数组
            string kx;
            string kxmc = "";

            for (int i = 0; i < bh.Length - 1; i++)
            {
                string query1 = "select kxmc from commission_attribute_list where kxbh LIKE @bh";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlCommand cd = new SqlCommand(query1, connection);
                    cd.Parameters.AddWithValue("@bh", bh[i] + "%");
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
            string NO1 = Label2.Text;
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            SqlConnection connection1 = new SqlConnection(connectionString);
            connection1.Open();
            string query = "SELECT xmbh FROM commission_sheet_ys WHERE cno= @NO";//从 commission_sheet_ys表里根据任务单号搜索项目编号
            SqlCommand command = new SqlCommand(query, connection1);
            command.Parameters.AddWithValue("@NO", NO1);
            SqlDataReader sdr = command.ExecuteReader();
            string xmbh = "";
            if (sdr.Read())
            {
                xmbh = sdr[0].ToString();
            }
            connection1.Close();

            string[] bh = xmbh.Split(' '); //项目编号根据空格分割成数组
            string ct="";
            string count = "";

            for (int i = 0; i < bh.Length - 1; i++)
            {
                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();
                string query1 = "select count(*) from commission_attribute_list where xmbh=@bh group by xmbh";//根据项目编号获得项目名称
                SqlCommand cd = new SqlCommand(query1, connection);
                cd.Parameters.AddWithValue("@bh", bh[i]);
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

      
    }
}