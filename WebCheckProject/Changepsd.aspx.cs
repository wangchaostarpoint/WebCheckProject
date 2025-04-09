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
using System.Web.SessionState;

namespace WebCheckProject
{
    public partial class Changepsd : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            String userse = Session["USER"].ToString();
            Label1.Text = userse;

        }
        public void ChangeSqlLoginPassword(string connectionString, string loginName, string newPassword,string oldPassword)
        {
            Boolean isValid = false;
            
            string query = "select * from Users where TXTno = @user and password = @password";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.AddWithValue("@user", loginName);
                cmd.Parameters.AddWithValue("@password", oldPassword);
                object a = cmd.ExecuteScalar();
                if (a != null)
                { isValid = true; }
                else
                { isValid = false; }

                if (isValid)
                {   // 旧密码正确，可以更新为新密码
                cmd.CommandText = "UPDATE Users SET password = @newPassword WHERE TXTno = @userName";
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@newPassword", newPassword);
                cmd.Parameters.AddWithValue("@userName", loginName);
                int result = cmd.ExecuteNonQuery();

                if (result > 0)
                {
                    // 密码更新成功
                    Response.Write("密码更新成功！");
                }
                else
                {
                    // 密码更新失败
                    Response.Write("密码更新失败，请重试。");
                }
                }
              else
              {
                // 旧密码错误
                Response.Write("用户名或原密码错误，请重新输入。");
              }
          }
    }

        
        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;"; ;
            String userse = Session["USER"].ToString();
            string loginName = userse;
            string oldPassword = TextBox2.Text;
            string newPassword = TextBox3.Text;
            ChangeSqlLoginPassword(connectionString, loginName, newPassword,oldPassword);
        }
    }
}