using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;

namespace WebCheckProject
{
    public partial class ZHHeader_RWD_Fill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string NO1 = Request.QueryString["NO"];//获取前端传来的任务单号
                string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    if (NO1.Contains("CL"))
                    {
                        string query = "select * from task_list_cl  where cno=@no";
                        using (SqlCommand command = new SqlCommand(query, connection))
                            {
                                command.Parameters.AddWithValue("@NO", NO1);
                                using (SqlDataReader reader = command.ExecuteReader())
                                {
                                    if (reader.Read())
                                    {
                                        Label1.Text = reader["cno"].ToString();
                                        TextBox1.Text = reader["Gcmc"].ToString();
                                        TextBox2.Text = reader["Ypbh"].ToString();
                                        //TextBox3.Text = reader["Wtrq"].ToString().Substring(0, 10);//数据库中数据有时分秒，采用Substring(0, 10)只获取年月日数据
                                        TextBox3.Text = reader.GetDateTime(reader.GetOrdinal("Wtrq")).ToString("yyyy-MM-dd");
                                        TextBox4.Text = reader.GetDateTime(reader.GetOrdinal("sdwcrq")).ToString("yyyy-MM-dd");
                                        //TextBox4.Text = reader["sdwcrq"].ToString().Substring(0, 10);
                                        TextBox5.Text = reader["Ypmc"].ToString();
                                        TextBox6.Text = reader["cj"].ToString();
                                        TextBox7.Text = reader["Ypgg"].ToString();
                                        //TextBox8.Text = reader["Scrq"].ToString().Substring(0, 10);
                                        TextBox8.Text = reader.GetDateTime(reader.GetOrdinal("Scrq")).ToString("yyyy-MM-dd");
                                        TextBox9.Text = reader["PH"].ToString();
                                        TextBox10.Text = reader["dbpl"].ToString();
                                        TextBox11.Text = reader["qydd"].ToString();
                                        TextBox12.Text = reader["ypms"].ToString();
                                        TextBox13.Text = reader["jcxm"].ToString();
                                        TextBox14.Text = reader["qksm"].ToString();
                                        TextBox15.Text = reader["jcyj"].ToString();
                                        TextBox16.Text = reader["ppbz"].ToString();
                                        //TextBox17.Text = reader.GetDateTime(reader.GetOrdinal("ffrq")).ToString("yyyy-MM-dd");
                                        TextBox18.Text = reader["lqsl"].ToString();
                                        TextBox19.Text = reader["lqr"].ToString();
                                        TextBox20.Text = reader["bcsm"].ToString();
                                        if (reader["sysyyp"].ToString() == "废弃")
                                        {
                                            RadioButton1.Checked = true;
                                        }
                                        if (reader["sysyyp"].ToString() == "留样")
                                        {
                                            RadioButton2.Checked = true;
                                        }
                                        if (reader["sysyyp"].ToString() == "寄回")
                                        {
                                            RadioButton3.Checked = true;
                                        }
                                    }
                                }
                            }
                    }
                    if (NO1.Contains("HX"))
                    {
                            string query = "select * from task_list_sy where cno=@no";
                            using (SqlCommand command = new SqlCommand(query, connection))
                            {
                                command.Parameters.AddWithValue("@NO", NO1);
                                using (SqlDataReader reader = command.ExecuteReader())
                                {
                                    if (reader.Read())
                                    {
                                        Label1.Text = reader["cno"].ToString();
                                        TextBox1.Text = reader["Gcmc"].ToString();                                  
                                        TextBox13.Text = reader["jcxm"].ToString();                                 
                                    }
                                }
                            }
                    }
                    if (NO1.Contains("YS"))
                    {
                        string query = "select * from task_list_ys where cno=@no";
                        using (SqlCommand command = new SqlCommand(query, connection))
                        {
                            command.Parameters.AddWithValue("@NO", NO1);
                            using (SqlDataReader reader = command.ExecuteReader())
                            {
                                if (reader.Read())
                                {
                                    Label1.Text = reader["cno"].ToString();
                                    TextBox1.Text = reader["Gcmc"].ToString();
                                    TextBox13.Text = reader["jcxm"].ToString();
                                }
                            }
                        }
                    }
                    if (NO1.Contains("TG"))
                    {
                        string query = "select * from task_list_tg where cno=@no";
                        using (SqlCommand command = new SqlCommand(query, connection))
                        {
                            command.Parameters.AddWithValue("@NO", NO1);
                            using (SqlDataReader reader = command.ExecuteReader())
                            {
                                if (reader.Read())
                                {
                                    Label1.Text = reader["cno"].ToString();
                                    TextBox1.Text = reader["Gcmc"].ToString();
                                    TextBox13.Text = reader["jcxm"].ToString();
                                }
                            }
                        }
                    }
                    connection.Close();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)  //提交数据，插入task_custom表
        {
            bool success = false;
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            Database connection = new Database(connectionString);
            string NO = Label1.Text;
            string ypms = TextBox12.Text;
            string qksm = TextBox14.Text;
            string ffrq = TextBox17.Text;
            string lqsl = TextBox18.Text;
            string lqr = DropDownList1.Text;
            string bcsm = TextBox20.Text;
            string rwdzt = "已派发";
            string ypbh = TextBox2.Text;
            //string sqlstr = "select * from task_custom where cno= "+ NO;
            if (connection.CheckIfHas("cno",NO,"task_custom"))//有数据是true
            {
                 ClientScript.RegisterStartupScript(this.GetType(), "AlertScript", "alert('重复提交！');", true);
             }
             else//没有数据增加数据
             {
                success = connection.InsertData("task_custom", "('" + NO + "','" + ypms + "','" + qksm + "','" + ffrq + "','" + lqsl + "','" + lqr + "','" + bcsm + "','" + rwdzt + "','','" + ypbh + "')");
                success = connection.InsertData("task_ry", "('" + NO+ "','"+"" + "','" + "" + "','" + "" + "','" + "" + "','" + "" + "','" + "" + "')");
            }
               
            if (success)
            {
                Response.Redirect("ZHHeader_RWD_Index.aspx");
            }
            else
            {
               
            }
        }

        protected void Button2_Click(object sender, EventArgs e) //返回
        {       
               Response.Redirect("ZHHeader_RWD_Index.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e) //数据更新
        {
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            Database connection = new Database(connectionString);
            string NO = Label1.Text;
            string ypbh = TextBox2.Text;
            string ypms = TextBox12.Text;
            string qksm = TextBox14.Text;
            string ffrq = TextBox17.Text;
            string lqsl = TextBox18.Text;
            string lqr = DropDownList1.Text;
            string bcsm = TextBox20.Text;
            string rwdzt = "已派发";
            bool success = connection.UpdateDate("task_custom", "ypms='" + ypms + "',qksm='" + qksm + "',ffrq='" + ffrq + "',lqsl='" + lqsl + "',lqr='" + lqr + "',bcsm='" + bcsm + "',Ypbh='" + ypbh + "',rwdzt='" + rwdzt + "'", "cno='" + NO + "'");
            if (success)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "AlertScript", "alert('数据库已更新！');", true);
            }
            else
            {
                // 失败
            }
        }
    }
}