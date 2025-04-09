using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using WebApplication1;

namespace WebCheckProject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Button1.Click += Button1_Click;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            string TXTno = txtusername.Text;
            string password = txtpass.Text;
            string capt = txtcapt.Text;
            string t1 = capt;
            string t2 = Session["ValidateNum"].ToString();
            Session["USER"] = TXTno;
            string usernamecd1 = GetUsername(TXTno);
            Session["USERNAMECD"] = usernamecd1;
            Database connection = new Database(connectionString);
            bool isvalid = connection.Login(TXTno, password);
            string bmmc = Getbmmc(TXTno);
            Session["BM"] = bmmc;
            Session["USERNAMECD"] = usernamecd1;
            if (TXTno == "" || password == "" || capt == "")
            {
                //Label4.Text = "用户名或密码或验证码不能为空";
            }
            else
            {
                if (isvalid) //用户及密码存在于数据库中
                {
                    if (t1.ToUpper() == t2.ToUpper())//判断验证码是否正确
                    {
                        // Label4.Text = "成功登录";
                        //通过输入的 username获得用户的typeid
                        string userRole = GetUserRole(TXTno);
                        string bm = Getbmmc(TXTno);
                        if (userRole == "综合部门负责人")
                        {
                            // 综合部门负责人登录后跳转到综合部门负责人页面
                            string s_url = "ZHHeader_WTD.aspx?name=" + TXTno; //
                            Response.Redirect(s_url);
                        }
                        else if (userRole == "外业部门负责人")
                        {
                            // 外业负责人登录后跳转到外业部门负责人页面
                            string s_url = "WYHeader.aspx?name=" + TXTno; //
                            Response.Redirect(s_url);
                        }
                        else if (userRole == "普通实验员")
                        {
                            //测试人员页面
                            //Response.Redirect("Tester_index.aspx");
                            string s_url = "Tester_index.aspx?name=" + TXTno+"&bm=" + bm; //
                            Response.Redirect(s_url);
                        }
                        else if (userRole == "材料部门负责人")
                        {
                            string s_url = "CLHeader_LRW.aspx?name=" + TXTno; //
                            Response.Redirect(s_url);
                        }
                        else if (userRole == "外业实验员")
                        {
                            string s_url = "WYTesters_Upload.aspx?name=" + TXTno; //
                            Response.Redirect(s_url);
                        }
                        else if (userRole == "超级管理员")
                        {
                            string s_url = "Admin_Index_New.aspx?name=" + TXTno; //
                            Response.Redirect(s_url);

                        }
                        else//表示是土岩化部门负责人
                        {
                            //Response.Redirect("OtherHeaders_LQRW.aspx");
                            string s_url = "OtherHeaders_LQRW.aspx?Rol=" + userRole + "&name=" + TXTno; //
                            Response.Redirect(s_url);
                        }
                    }
                    else
                    {
                        //Label4.Text = "验证码错误！";
                    }
                }
                else//用户及密码不存在于数据库中
                {
                    // 登录失败
                    //Label4.Text = "用户名或密码错误";
                }
            }
        }


        private string GetUserRole(string TXTno)
        {
            // 这里应该是查询数据库或者其他存储来获取用户角色的逻辑
            SqlConnection conn = new SqlConnection("Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;");
            string sqlstr = "select typeid from users where TXTno=@name";
            SqlCommand cmd = new SqlCommand(sqlstr, conn);
            cmd.Parameters.AddWithValue("@name", TXTno);
            conn.Open();
            string type = "";
            SqlDataReader sdr = cmd.ExecuteReader();
            ///你可以使用StrShiyong赋值了如下
            if (sdr.Read())
            {
                type = sdr[0].ToString();
            }
            sdr.Close();
            cmd.Dispose();
            conn.Close();
            int typeid = int.Parse(type);
            // 示例中仅为说明，请根据实际情况实现
            if (typeid == 0)
            {
                return "超级管理员";
            }
            if (typeid == 1)
            {
                return "数据管理员";
            }
            if (typeid == 2)
            {
                return "综合部门负责人";
            }
            if (typeid == 3)
            {
                return "材料部门负责人";
            }
            if (typeid == 4)
            {
                return "岩土部门负责人";
            }
            if (typeid == 5)
            {
                return "土工部门负责人";
            }
            if (typeid == 6)
            {
                return "化学部门负责人";
            }
            if (typeid == 7)
            {
                return "外业部门负责人";
            }
            if (typeid == 8)
            {
                return "普通实验员";
            }
            if (typeid == 9)
            {
                return "外业实验员";
            }
            else//表示typeid=9
            {
                return "";
            }

        }
        private string Getbmmc(string TXTno)
        {
            // 这里应该是查询数据库或者其他存储来获取用户角色的逻辑
            SqlConnection conn = new SqlConnection("Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;");
            string sqlstr = "select bmmc from users where TXTno=@name";
            SqlCommand cmd = new SqlCommand(sqlstr, conn);
            cmd.Parameters.AddWithValue("@name", TXTno);
            conn.Open();
            string bm = "";
            SqlDataReader sdr = cmd.ExecuteReader();
            ///你可以使用StrShiyong赋值了如下
            if (sdr.Read())
            {
                bm = sdr[0].ToString();
            }
            sdr.Close();
            cmd.Dispose();
            conn.Close();
            // 示例中仅为说明，请根据实际情况实现
            return bm;
        } 

        private string GetUsername(string TXTno)
        {
            // 这里应该是查询数据库或者其他存储来获取用户角色的逻辑
            SqlConnection conn = new SqlConnection("Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;");
            string sqlstr = "select username from users where TXTno=@name";
            SqlCommand cmd = new SqlCommand(sqlstr, conn);
            cmd.Parameters.AddWithValue("@name", TXTno);
            conn.Open();
            string usernamecd = "";
            SqlDataReader sdr = cmd.ExecuteReader();
            ///你可以使用StrShiyong赋值了如下
            if (sdr.Read())
            {
                usernamecd = sdr[0].ToString();
            }
            sdr.Close();
            cmd.Dispose();
            conn.Close();
            // 示例中仅为说明，请根据实际情况实现
            return usernamecd;
        }
    }
    
}