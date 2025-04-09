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


namespace WebCheckProject
{
    public partial class ZHHeader_WTD_Index2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            SqlConnection connection = new SqlConnection(connectionString);
            string query = "SELECT * from commission_sheet_cl ";   //委托单里的所有数据         
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

        protected void Button3_Click(object sender, EventArgs e)//按照条件搜索
        {
            GridView1.DataSource = null;
            string NO = TextBox1.Text;
            string gcmc = TextBox2.Text;
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            string query = "";

            if (DropDownList1.SelectedItem.Text == "材料部门")
            {

                if (TextBox1.Text != "" && TextBox2.Text == "")//按任务单编号搜索
                {
                    query = "SELECT * from commission_sheet_cl WHERE cno = @no ";

                }
                else if (TextBox2.Text != "" && TextBox1.Text == "")
                {
                    query = "SELECT * from commission_sheet_cl WHERE gcmc like @gcmc ";//按工程名称模糊搜索

                }
                else if (TextBox2.Text != "" && TextBox1.Text != "")
                {
                    query = "SELECT * from commission_sheet_cl WHERE gcmc like @gcmc and cno = @no"; //按工程名称模糊和任务单编号搜索
                }
                else
                {
                    query = "SELECT * from commission_sheet_cl ";
                }
            }
            if (DropDownList1.SelectedItem.Text == "化学部门")
            {

                if (TextBox1.Text != "" && TextBox2.Text == "")//按任务单编号搜索
                {
                    query = "SELECT * from commission_sheet_sy WHERE cno = @no and ";

                }
                else if (TextBox2.Text != "" && TextBox1.Text == "")
                {
                    query = "SELECT * from commission_sheet_sy WHERE gcmc like @gcmc ";//按工程名称模糊搜索

                }
                else if (TextBox2.Text != "" && TextBox1.Text != "")
                {
                    query = "SELECT * from commission_sheet_sy WHERE gcmc like @gcmc and cno = @no"; //按工程名称模糊和任务单编号搜索
                }
                else
                {
                    query = "SELECT * from commission_sheet_sy ";
                }
            }
            if (DropDownList1.SelectedItem.Text == "岩石部门")
            {

                if (TextBox1.Text != "" && TextBox2.Text == "")//按任务单编号搜索
                {
                    query = "SELECT * from commission_sheet_ys WHERE cno = @no and ";

                }
                else if (TextBox2.Text != "" && TextBox1.Text == "")
                {
                    query = "SELECT * from commission_sheet_ys WHERE gcmc like @gcmc ";//按工程名称模糊搜索

                }
                else if (TextBox2.Text != "" && TextBox1.Text != "")
                {
                    query = "SELECT * from commission_sheet_ys WHERE gcmc like @gcmc and cno = @no"; //按工程名称模糊和任务单编号搜索
                }
                else
                {
                    query = "SELECT * from commission_sheet_ys ";
                }
            }
            if (DropDownList1.SelectedItem.Text == "土工部门")
            {

                if (TextBox1.Text != "" && TextBox2.Text == "")//按任务单编号搜索
                {
                    query = "SELECT * from commission_sheet_tg WHERE cno = @no and ";

                }
                else if (TextBox2.Text != "" && TextBox1.Text == "")
                {
                    query = "SELECT * from commission_sheet_tg WHERE gcmc like @gcmc ";//按工程名称模糊搜索

                }
                else if (TextBox2.Text != "" && TextBox1.Text != "")
                {
                    query = "SELECT * from commission_sheet_tg WHERE gcmc like @gcmc and cno = @no"; //按工程名称模糊和任务单编号搜索
                }
                else
                {
                    query = "SELECT * from commission_sheet_tg ";
                }
            }
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@gcmc", "%" + gcmc + "%");
            command.Parameters.AddWithValue("@no", NO);
            SqlDataReader reader = command.ExecuteReader();
            DataTable dataTable = new DataTable();
            dataTable.Load(reader);
            reader.Close();
            connection.Close();
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }


        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)//获取所选行的编号，方便进行编辑
        {
            int index = e.NewEditIndex;
            GridViewRow row = GridView1.Rows[index];
            TableCell cell = row.Cells[1];
            string value = cell.Text;
            string s_url = "ZHHeader_WTD_CL_Edit.aspx?NO=" + value; //将任务单单号传参至编辑页面
            Response.Redirect(s_url);
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)//获取所选行的编号，删除所选行数据
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            string No = row.Cells[1].Text;
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            Database connection = new Database(connectionString);
            bool success = connection.DeleteData("commission_sheet_cl", "cno='" + No + "'");
            if (success)
            {
                // 成功 刷新gridview
                EventArgs eventArgs = new EventArgs();
                // 调用 Page_Load 方法
                Page_Load(this, eventArgs);
            }
            else
            {
                // 失败
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ZHHeader_WTD_Fill_CL.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ZHHeader_WTD_Fill_Others_TX.aspx");
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            DataBind();
        }
    }
}