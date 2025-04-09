using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;
using WebApplication1;

namespace WebCheckProject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string NO1 = Request.QueryString["NO"]; //获取前端传来的任务单编号
                string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string query = "SELECT * FROM commission_sheet_cl WHERE cno= @NO";//根据任务单编号从委托单里搜索数据
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@NO", NO1);
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())//读取数据并显示在页面上
                            {
                                TextBox1.Text = reader["Gcmc"].ToString();
                                TextBox2.Text = reader["Jsdw"].ToString();
                                TextBox3.Text = reader["jldw"].ToString();
                                TextBox4.Text = reader["Sgdw"].ToString();
                                TextBox5.Text = reader["Wtdw"].ToString();
                                TextBox6.Text = reader["Lxr"].ToString();
                                TextBox7.Text = reader["Qyr"].ToString();
                                TextBox8.Text = reader["jzr"].ToString();
                                TextBox9.Text = reader["syr"].ToString();
                                TextBox10.Text = reader["Ypmc"].ToString();
                                TextBox11.Text = reader["Ypgg"].ToString();
                                //TextBox12.Text = reader["Scrq"].ToString().Substring(0, 10);
                                TextBox12.Text = reader.GetDateTime(reader.GetOrdinal("Scrq")).ToString("yyyy-MM-dd");
                                TextBox13.Text = reader["dbpl"].ToString();
                                TextBox14.Text = reader["PH"].ToString();
                                TextBox15.Text = reader["qydd"].ToString();
                                TextBox16.Text = reader["cj"].ToString();
                                TextBox17.Text = reader["sybw"].ToString();
                                Label2.Text = reader["jcxm"].ToString(); ;
                                TextBox19.Text = reader["jcyj"].ToString();
                                TextBox20.Text = reader["ppbz"].ToString();
                                TextBox21.Text = reader["Ypjsdz"].ToString();
                                TextBox22.Text = reader["Ypzt"].ToString();
                                TextBox23.Text = reader["Fcqk"].ToString();
                                TextBox24.Text = reader["Sl"].ToString();
                                TextBox25.Text = reader["Ypbh"].ToString();
                                //TextBox26.Text = reader["Wtrq"].ToString().Substring(0, 10);
                                TextBox26.Text = reader.GetDateTime(reader.GetOrdinal("Wtrq")).ToString("yyyy-MM-dd");
                                //TextBox27.Text = reader["sdwcrq"].ToString().Substring(0, 10);
                                TextBox27.Text = reader.GetDateTime(reader.GetOrdinal("sdwcrq")).ToString("yyyy-MM-dd");
                                TextBox28.Text = reader["Bcxx"].ToString();
                                Label1.Text = reader["cno"].ToString();
                                TextBox30.Text = "";
                                TextBox31.Text = reader["fs"].ToString();
                                TextBox32.Text = reader["bgjsdz"].ToString();
                                if (reader["sysyyp"].ToString() == "废弃")
                                {
                                    RadioButton1.Checked = true;
                                }
                                if (reader["sysyyp"].ToString() == "留样")
                                {
                                    RadioButton2.Checked = true;
                                    TextBox30.Text = reader["ts"].ToString();
                                }
                                if (reader["sysyyp"].ToString() == "寄回")
                                {
                                    RadioButton3.Checked = true;
                                }
                                if (reader["bglqfs"].ToString() == "自取")
                                {
                                    RadioButton4.Checked = true;
                                }
                                if (reader["bglqfs"].ToString() == "寄回")
                                {
                                    RadioButton5.Checked = true;
                                }
                            }
                        }
                    }
                    connection.Close();
                }
            }
    }
}