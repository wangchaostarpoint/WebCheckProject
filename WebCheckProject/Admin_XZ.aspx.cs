using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;
using WebApplication1;
using System.Web.UI;
using System.IO;

namespace WebCheckProject
{
    public partial class Admin_XZ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "SELECT * from rep_files ";           
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            DataTable dataTable = new DataTable();
            dataTable.Load(reader);
            reader.Close();
            connection.Close();
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            GridView1.DataSource = null;
            string query;
            string rno= TextBox1.Text;
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            if (rno != null)
            {
                query = "select * from rep_files where Rp_no like '%" + rno + "%'"; 
            }
            else
            {
                query = "SELECT * from rep_files ";
            }
            SqlCommand command = new SqlCommand(query, connection);
            //command.Parameters.AddWithValue("@rno", rno);
            SqlDataReader reader = command.ExecuteReader();
            DataTable dataTable = new DataTable();
            dataTable.Load(reader);
            reader.Close();
            connection.Close();
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
            }
        
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            DataBind();
        }


        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DownLoad_Click")
            {
                string fileUrl = e.CommandArgument.ToString();
                DownLoad_Click(fileUrl);
            }
        }

        private void DownLoad_Click(string savePath)
        {
            string filePath = Server.MapPath(savePath);
            if (File.Exists(filePath))
            {
                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
                Response.TransmitFile(filePath);
                Response.End();
            }
            else
            {
                // 处理文件未找到的情况
                Response.Write("File not found.");
            }
        }
    }

}