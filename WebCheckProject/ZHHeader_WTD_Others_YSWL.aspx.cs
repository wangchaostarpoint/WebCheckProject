using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using WebApplication1;

namespace WebCheckProject
{
    public partial class OtherHeaders_WTD_YSWL : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";  //执行标准
            Label2.Text = "";  //任务单编号
        }


        protected void Button1_Click(object sender, EventArgs e)//将内容保存数据库表，并跳转生成委托单表页面
        {
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            string SNno = TextBox1.Text;
            string YWno = TextBox2.Text;
            string ysmc = TextBox3.Text;
            string qywz = TextBox4.Text;
            string qysd = TextBox5.Text;
            string fhcd = TextBox6.Text;
            string ypsl = TextBox7.Text;
            string gcmc = TextBox8.Text;
            string gcbh = TextBox9.Text;
            string sydw = TextBox10.Text;
            string qyrq = TextBox13.Text;//取样日期
            string syrq = TextBox11.Text;//送样日期
            string jsr = TextBox12.Text;

            string syr = TextBox14.Text;
            string lxdh = TextBox15.Text;

            string date= DateTime.Now.ToString("yyyy-MM-dd");//当前日期
            string xmbh = "";
            string xmmc = "";

            //生成任务单号
            SqlConnection objConn = new SqlConnection(connectionString);
            objConn.Open();
            string sql = "SELECT COUNT(*) FROM commission_sheet_ys ";  //根据表中任务单的数据个数
            SqlCommand sqlCom = new SqlCommand(sql, objConn);
            DateTime currentTime = DateTime.Now;
            int year = currentTime.Year;
            int r = Convert.ToInt32(sqlCom.ExecuteScalar()) + 1;
            string re = r.ToString("D3");
            string NO = "YSRW" + year + re;  //生成任务单号


            //通过checkbox，获取所有检测项目的名称
            foreach (Control ct in form1.Controls)
            {
                if (ct is CheckBox)
                {
                    CheckBox cb = (CheckBox)ct;
                    if (cb.Checked == true)
                    {
                       xmmc += cb.Text + " ";
                    }
                }
            }

            //检测项目用（空格）分割成数组，并通过项目名称匹配项目编号，存入数据库中
            string[] mc = xmmc.Split(' ');
            string bh = "";
            for (int i = 0; i <mc.Length-1; i++)
            {
                SqlConnection connection1 = new SqlConnection(connectionString);              
                connection1.Open();
                string query = "SELECT xmbh FROM commission_attribute_list WHERE xmmc= @mc";//根据项目名称从表里搜索项目编号
                SqlCommand command = new SqlCommand(query, connection1);
                command.Parameters.AddWithValue("@mc", mc[i]);
                SqlDataReader sdr = command.ExecuteReader();
                if (sdr.Read())
                {
                    bh= sdr[0].ToString();
                }
                xmbh += bh + " ";//获取所有的项目编号
            }

            //向commission_sheet_ys表中插入数据
            Database connection = new Database(connectionString);
            bool isvalid = connection.InsertData("commission_sheet_ys", "('" + NO + "','" + gcmc + "','" + gcbh + "','" + sydw + "','" + syr + "','" + lxdh + "','" + qyrq + "','" + syrq + "','" + jsr + "','" + SNno + "','" + YWno + "','" + ysmc + "'," +
                "'" + qywz + "','" + qysd + "','" + fhcd + "','" + ypsl + "','" + xmbh + "','" + date + "','','','','')");
            if (isvalid)
            {
                //成功
                Response.Redirect("ZHHeader_WTD_Others_YSWL_SC.aspx?NO=" + NO );
            }
            else
            {
                //失败
            }
            objConn.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)//更新检测项目
        {
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            string xmbh = "";
            string xmmc = "";
            string NO = Label2.Text;

            //通过checkbox，获取所有检测项目的名称
            foreach (Control ct in form1.Controls)
            {
                if (ct is CheckBox)
                {
                    CheckBox cb = (CheckBox)ct;
                    if (cb.Checked == true)
                    {
                        xmmc += cb.Text + " ";
                    }
                }
            }

            //检测项目用（空格）分割成数组，并通过项目名称匹配项目编号，存入数据库中
            string[] mc = xmmc.Split(' ');
            string bh = "";
            for (int i = 0; i < mc.Length - 1; i++)
            {
                SqlConnection connection1 = new SqlConnection(connectionString);
                connection1.Open();
                string query = "SELECT xmbh FROM commission_attribute_list WHERE xmmc= @mc";//根据项目名称从表里搜索项目编号
                SqlCommand command = new SqlCommand(query, connection1);
                command.Parameters.AddWithValue("@mc", mc[i]);
                SqlDataReader sdr = command.ExecuteReader();
                if (sdr.Read())
                {
                    bh = sdr[0].ToString();
                }
                xmbh += bh + " ";//获取所有的项目编号
                connection1.Close();
            }

            //向commission_sheet_ys表中插入数据
            Database connection = new Database(connectionString);
            bool isvalid = connection.UpdateDate("commission_sheet_ys", "xmbh='" + xmbh + "'", "cno='" + Label2.Text + "'");
            if (isvalid)
            {
                //成功
                Response.Redirect("ZHHeader_WTD_Others_YSWL_SC.aspx?NO=" + NO);
            }
            else
            {
                //失败
            }
        }
    }
}