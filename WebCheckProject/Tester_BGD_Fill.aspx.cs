using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using WebApplication1;


namespace WebCheckProject
{
    public partial class Tester_BGD_Fill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string NO1 = Request.QueryString["NO"];//获得任务单号
                string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    SqlCommand command = new SqlCommand();
                    command.Connection = connection;
                    if (NO1.Contains("CL"))
                    {
                        command.CommandText = "select * from commission_sheet_cl where cno=@NO";
                        command.Parameters.AddWithValue("@NO", NO1);
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                TextBox1.Text = reader["Gcmc"].ToString();
                                TextBox2.Text = reader["Jsdw"].ToString();
                                TextBox3.Text = reader["jldw"].ToString();
                                TextBox4.Text = reader["Sgdw"].ToString();
                                TextBox5.Text = reader["Wtdw"].ToString();
                                TextBox6.Text = reader["Lxr"].ToString();
                                TextBox7.Text = reader.GetDateTime(reader.GetOrdinal("Wtrq")).ToString("yyyy-MM-dd");
                                TextBox8.Text = reader["Qyr"].ToString();
                                TextBox9.Text = reader["jzr"].ToString();
                                TextBox10.Text = reader["syr"].ToString();
                                TextBox11.Text = reader["Ypmc"].ToString();
                                TextBox13.Text = reader["Ypbh"].ToString();
                                TextBox14.Text = reader["sybw"].ToString();
                                TextBox15.Text = reader["Ypzt"].ToString();
                                TextBox16.Text = reader["cj"].ToString();
                                TextBox17.Text = reader["dbpl"].ToString();
                                TextBox18.Text = reader["qydd"].ToString();
                                TextBox19.Text = reader["jcyj"].ToString();
                                TextBox20.Text = reader["ppbz"].ToString();
                                TextBox22.Text= DateTime.Today.ToString("yyyy-MM-dd");//检测日期
                                TextBox23.Text = reader["Bcxx"].ToString();
                                //TextBox26.Text=reader.GetDateTime(reader.GetOrdinal("Qfrq")).ToString("yyyy-MM-dd");  //签发日期
                                //TextBox27.Text = reader["sdwcrq"].ToString().Substring(0, 10);  第几页
                                //TextBox28.Text = reader["Bcxx"].ToString(); 共几页
                            }
                        }
                    }
                    else
                    {
                        if (NO1.Contains("HX"))
                        {
                            command.CommandText = "select * from commission_sheet_sy where cno=@NO";
                            command.Parameters.AddWithValue("@NO", NO1);
                        }
                        if (NO1.Contains("YS"))
                        {
                            command.CommandText = "select * from commission_sheet_ys where cno=@NO";
                            command.Parameters.AddWithValue("@NO", NO1);
                        }
                        if (NO1.Contains("TG"))
                        {
                            command.CommandText = "select * from commission_sheet_tg where cno=@NO";
                            command.Parameters.AddWithValue("@NO", NO1);
                        }
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                TextBox1.Text = reader["Gcmc"].ToString();                              
                                TextBox5.Text = reader["Wtdw"].ToString();
                                TextBox6.Text = reader["lxdh"].ToString();
                                TextBox7.Text = reader.GetDateTime(reader.GetOrdinal("Attribute_4")).ToString("yyyy-MM-dd");         
                                TextBox10.Text = reader["syr"].ToString();
                                TextBox22.Text = DateTime.Today.ToString("yyyy-MM-dd");//检测日期
                                //TextBox26.Text=reader.GetDateTime(reader.GetOrdinal("Qfrq")).ToString("yyyy-MM-dd");  //签发日期
                                //TextBox27.Text = reader["sdwcrq"].ToString().Substring(0, 10);  第几页
                                //TextBox28.Text = reader["Bcxx"].ToString(); 共几页

                            }
                        }
                    }                 
                    connection.Close();
                }
               
            }
        }

        protected void Button1_Click(object sender, EventArgs e)//提交，将文本框中内容存入数据库中
        {
            /* string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
             string cno = Request.QueryString["NO"];//获得任务单号
             string gcmc = TextBox1.Text;
             string jsdw = TextBox2.Text;
             string jldw = TextBox3.Text;
             string sgdw = TextBox4.Text;
             string wtdw = TextBox5.Text;
             string lxr = TextBox6.Text;
             string a = TextBox7.Text;
             DateTime wtrq = DateTime.Parse(a);
             string qyr = TextBox8.Text;
             string jzr = TextBox9.Text;
             string syr = TextBox10.Text;
             string ypmc = TextBox11.Text;
             string ggxh = TextBox12.Text;
             string ypbh = TextBox13.Text;
             string sybw = TextBox14.Text;
             string ypzt = TextBox15.Text;
             string sccj = TextBox16.Text;
             string dbpl = TextBox17.Text;
             string qydd = TextBox18.Text;
             string jcyj = TextBox19.Text;           
             string ppbz = TextBox20.Text;
             string syhj = TextBox21.Text;
             string jcrq = TextBox22.Text;
             string bcxx = TextBox23.Text;
             string zyyq = TextBox24.Text;
             string jcjl = TextBox25.Text;
             DateTime qfrq = DateTime.Today;
             string Rp_no = TextBox29.Text;

             SqlConnection objConn = new SqlConnection(connectionString);
             objConn.Open();
             string query = "select * from commission_sheet_cl where cno = @NO";
             SqlCommand command = new SqlCommand(query, objConn);
             command.Parameters.AddWithValue("@NO", cno);

             Database connection = new Database(connectionString);
             bool isvalid = connection.InsertData("report_list_1", "('" + Rp_no + "','" + gcmc + "','" + jsdw + "','" + jldw + "','" + sgdw + "','" + wtdw + "','" + lxr + "','" + wtrq + "','" + qyr + "','" + jzr + "'," +
                 "'" + syr + "','" + ypmc + "','" + ggxh+ "','" + ypbh+ "','" + sybw + "','" + ypzt + "','" + sccj + "','" + dbpl+ "','" + qydd+ "','" + jcyj+ "','" + ppbz + "'," +
                 "'" + syhj + "','" + jcrq + "','" + bcxx + "','" + zyyq + "','" + jcjl+ "','" + qfrq + "','" + cno + "')");
             if (isvalid)
             {
                 //成功

             }
             else
             {
                 //失败
             }*/
            string NO1 = Request.QueryString["NO"];//获得任务单号
            string s_url = "Tester.aspx?NO=" + NO1;
            Response.Redirect(s_url);
        }
    }
}