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
    public partial class AddUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
        //    SqlConnection objConn = new SqlConnection(connectionString);
        //    objConn.Open();
        //    string sql = "insert into users(username,password,TXTno,role,bmmc,typeid) values (@username,@password,@TXTno,@role,@bmmc,@typeid)";  //根据commission_sheet_cl表中材料部门的数据个数
        //    SqlCommand sqlCom = new SqlCommand(sql, objConn);
        //    sqlCom.Parameters.AddWithValue("@username", TextBox1.Text.ToString());
        //    sqlCom.Parameters.AddWithValue("@password", TextBox3.Text.ToString());
        //    sqlCom.Parameters.AddWithValue("@TXTno", TextBox2.Text.ToString());
        //    sqlCom.Parameters.AddWithValue("@role", DropDownList2.SelectedValue.ToString());
        //    sqlCom.Parameters.AddWithValue("@bmmc", DropDownList3.SelectedValue.ToString());
        //    int a = idget(DropDownList2.SelectedValue.ToString());
        //    sqlCom.Parameters.AddWithValue("@typeid", a);
        //    int rowsAffected = sqlCom.ExecuteNonQuery();
        //    ClientScript.RegisterStartupScript(this.GetType(), "AlertScript", "alert('已加入此人!');", true);
        //    objConn.Close();
        //}

        //优化代码
        protected void Button1_Click(object sender, EventArgs e)
        {
            // 1. 检查必填字段
            if (string.IsNullOrEmpty(TextBox1.Text) || string.IsNullOrEmpty(TextBox2.Text) || string.IsNullOrEmpty(TextBox3.Text))
            {
                ClientScript.RegisterStartupScript(
                    this.GetType(),
                    "AlertScript",
                    "alert('角色姓名、腾讯通号和密码不能为空！');",
                    true
                );
                return;
            }

            // 2. 使用 using 自动释放资源
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            using (SqlConnection objConn = new SqlConnection(connectionString))
            {
                try
                {
                    objConn.Open();
                    string sql = @"INSERT INTO users(username, password, TXTno, role, bmmc, typeid) 
                            VALUES (@username, @password, @TXTno, @role, @bmmc, @typeid)";
                    using (SqlCommand sqlCom = new SqlCommand(sql, objConn))
                    {
                        sqlCom.Parameters.AddWithValue("@username", TextBox1.Text.ToString());
                        sqlCom.Parameters.AddWithValue("@password", TextBox3.Text.ToString());
                        sqlCom.Parameters.AddWithValue("@TXTno", TextBox2.Text.ToString());
                        sqlCom.Parameters.AddWithValue("@role", DropDownList2.SelectedValue.ToString());
                        sqlCom.Parameters.AddWithValue("@bmmc", DropDownList3.SelectedValue.ToString());
                        int typeid = idget(DropDownList2.SelectedValue.ToString());
                        sqlCom.Parameters.AddWithValue("@typeid", typeid);

                        int rowsAffected = sqlCom.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            ClientScript.RegisterStartupScript(
                                this.GetType(),
                                "AlertScript",
                                "alert('添加成功！'); window.location.href = 'Admin_Index_New.aspx';", // 重定向页面
                                true
                            );
                        }
                    }
                }
                catch (Exception ex)
                {
                    // 记录日志并提示
                    //Console.Error("插入用户失败", ex);
                    ClientScript.RegisterStartupScript(
                        this.GetType(),
                        "AlertScript",
                        "alert('添加失败，请联系管理员。');",
                        true
                    );
                }
            }
        }

        private object gettypeid(string v)
        {
            throw new NotImplementedException();
        }
    
        protected int idget(string role)
        {
            if (role == "超级管理员")
            {
                return 0;
            }
            if (role == "数据管理员")
            {
                return 1;
            }
            if (role == "综合部门负责人")
            {
                return 2;
            }
            if (role == "材料部门负责人")
            {
                return 3;
            }
            if (role == "岩土部门负责人")
            {
                return 4;
            }
            if (role == "土工部门负责人")
            {
                return 5;
            }
            if (role == "化学部门负责人")
            {
                return 6;
            }
            if (role == "外业部门负责人")
            {
                return 7;
            }
            if (role == "普通实验员")
            {
            return 8;
            }
            if (role == "外业实验员")
            {
                return 9;
            }
            else//表示typeid=9
            {
                return 10;
            }
        }
    }
}