using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1;

namespace WebCheckProject
{
    public partial class WYHeader : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String userse = Session["USERNAMECD"].ToString();
            Label4.Text = userse;
            if (!IsPostBack) 
            { 
                string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
                SqlConnection connection = new SqlConnection(connectionString);
                string query = "SELECT c.*,t.tester,t.rwdzt from task_list_cl c left JOIN  task_custom t ON c.cno=t.cno where c.bcsm like '%外业%' ";   //委托单里的所有数据
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
        }

        protected void Button1_Click(object sender, EventArgs e)//按条件搜索
        {
            string NO = TextBox1.Text;
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            string query;
            if (TextBox1.Text != "" )//按任务单编号搜索
            {
                query = "SELECT c.*,t.tester from task_list_cl c left JOIN  task_custom t ON c.cno=t.cno where c.bcsm like '%外业%' and cno = @no ";

            }
            else
            {
                query = "SELECT c.*,t.tester from task_list_cl c left JOIN  task_custom t ON c.cno=t.cno where c.bcsm like '%外业%' ";
            }
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@no", NO);
            SqlDataReader reader = command.ExecuteReader();
            DataTable dataTable = new DataTable();
            dataTable.Load(reader);
            reader.Close();
            connection.Close();
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // 获取当前行的索引，并加1因为索引是从0开始的
                int index = e.Row.RowIndex + 1;
                // 设置单元格的文本
                e.Row.Cells[0].Text = index.ToString();
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                Control c = (Control)e.CommandSource;
                GridViewRow g = (GridViewRow)c.NamingContainer;
                string cno = g.Cells[1].Text;
                
               /* string s_url = "ZHHeader_RWD_Fill.aspx?NO=" + cno;
                Response.Redirect(s_url);*/
            }
        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "SELECT c.*,t.tester,t.rwdzt from task_list_cl c left JOIN  task_custom t ON c.cno=t.cno where c.bcsm like '%外业%' ";   //任务单里的所有数据
            SqlCommand command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            DataTable dataTable = new DataTable();
            dataTable.Load(reader);
            reader.Close();
            connection.Close();
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
            GridView1.PageIndex = e.NewPageIndex;
            DataBind();
        }
    }
}