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
    public partial class ZHHeader_RWD_Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String userse = Session["USERNAMECD"].ToString();
            Label4.Text = userse;
            if (!IsPostBack)
            {
                string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
                SqlConnection connection = new SqlConnection(connectionString);
                string query = "SELECT t.*,u.bmmc FROM task_list_cl t left JOIN users u ON u.username = t.lqr  ";  //task_list_cl表和users表联立，主要查看所有任务单的任务领取人
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

        protected void Button1_Click(object sender, EventArgs e)//搜索数据
        {
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            string query = "";
            string NO = TextBox1.Text;
            string gcmc = TextBox2.Text;

            if (DropDownList1.SelectedItem.Text == "材料部门")
            {
                if (TextBox1.Text != "") //按任务单编号查询
                {
                    query = "SELECT t.*,u.bmmc FROM task_list_cl t left JOIN users u ON u.username = t.lqr  where t.cno=@no ";
                }
                if (TextBox2.Text != "") //按工程名称模糊查询
                {
                    query = "SELECT t.*,u.bmmc FROM task_list_cl t left JOIN users u ON u.username = t.lqr  where t.gcmc like @gcmc ";
                }
                if (TextBox1.Text != "" && TextBox2.Text != "")//如果都不为空
                {
                    query = "SELECT t.*,u.bmmc FROM task_list_cl t left JOIN users u ON u.username = t.lqr where t.gcmc like @gcmc and t.cno=@no";
                }
                if (TextBox1.Text == "" && TextBox2.Text == "")//如果都为空，则查询全部数据
                {
                    query = "SELECT t.*,u.bmmc FROM task_list_cl t left JOIN users u ON u.username = t.lqr ";
                }
            }
            if (DropDownList1.SelectedItem.Text == "土工部门")
            {
                if (TextBox1.Text != "") //按任务单编号查询
                {
                    query = "SELECT t.*,u.bmmc FROM task_list_tg t left JOIN users u ON u.username = t.lqr  where t.cno=@no ";
                }
                if (TextBox2.Text != "") //按工程名称模糊查询
                {
                    query = "SELECT t.*,u.bmmc FROM task_list_tg t left JOIN users u ON u.username = t.lqr where t.gcmc like @gcmc ";
                }
                if (TextBox1.Text != "" && TextBox2.Text != "")//如果都不为空
                {
                    query = "SELECT t.*,u.bmmc FROM task_list_tg t left JOIN users u ON u.username = t.lqr where t.gcmc like @gcmc and t.cno=@no";
                }
                    if (TextBox1.Text == "" && TextBox2.Text == "")//如果都为空，则查询全部数据
                {
                    query = "SELECT t.*,u.bmmc FROM task_list_tg t left JOIN users u ON u.username = t.lqr";
                }
            }
            if (DropDownList1.SelectedItem.Text == "岩石部门")
            {
                if (TextBox1.Text != "") //按任务单编号查询
                {
                    query = "SELECT t.*,u.bmmc FROM task_list_ys t left JOIN users u ON u.username = t.lqr  where t.cno=@no";
                }
                if (TextBox2.Text != "") //按工程名称模糊查询
                {
                    query = "SELECT t.*,u.bmmc FROM task_list_ys t left JOIN users u ON u.username = t.lqr where t.gcmc like @gcmc ";
                }
                if (TextBox1.Text != "" && TextBox2.Text != "")//如果都不为空
                {
                    query = "SELECT t.*,u.bmmc FROM task_list_tg t left JOIN users u ON u.username = t.lqr where t.gcmc like @gcmc and t.cno=@no";
                }
                if (TextBox1.Text == "" && TextBox2.Text == "")//如果都为空，则查询全部数据
                {
                    query = "SELECT t.*,u.bmmc FROM task_list_ys t left JOIN users u ON u.username = t.lqr";
                }
            }
            if (DropDownList1.SelectedItem.Text == "化学部门")
            {
                if (TextBox1.Text != "") //按任务单编号查询
                {
                    query = "SELECT t.*,u.bmmc FROM task_list_sy t left JOIN users u ON u.username = t.lqr where t.cno=@no ";
                }
                if (TextBox2.Text != "") //按工程名称模糊查询
                {
                    query = "SELECT t.*,u.bmmc FROM task_list_sy t left JOIN users u ON u.username = t.lqr where t.gcmc like @gcmc ";
                }
                if (TextBox1.Text != "" && TextBox2.Text != "")//如果都不为空，则查询全部数据
                {
                    query = "SELECT t.*,u.bmmc FROM task_list_tg t left JOIN users u ON u.username = t.lqr where t.gcmc like @gcmc and t.cno=@no";
                }
                if (TextBox1.Text == "" && TextBox2.Text == "")//如果都为空，则查询全部数据
                {
                    query = "SELECT t.*,u.bmmc FROM task_list_sy t left JOIN users u ON u.username = t.lqr";
                }
            }

            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@no", NO);
            command.Parameters.AddWithValue("@gcmc", "%" + gcmc + "%");

            SqlDataReader reader = command.ExecuteReader();
            DataTable dataTable = new DataTable();
            dataTable.Load(reader);
            reader.Close();
            connection.Close();
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
            //保存搜索条件
            ViewState["SelectedDepartment"] = DropDownList1.SelectedItem.Text;
            ViewState["SearchNO"] = TextBox1.Text;
            ViewState["SearchGcmc"] = TextBox2.Text;
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)//获取所在行数据，从数据库中删除
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            string No = row.Cells[1].Text;
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            Database connection = new Database(connectionString);
            bool success = true;
            if (DropDownList1.SelectedItem.Text == "材料部门")
            { success = connection.DeleteData("commission_sheet_cl2", "cno='" + No + "'"); }
            if (DropDownList1.SelectedItem.Text == "岩石部门")
            { success = connection.DeleteData("commission_sheet_ys2", "cno='" + No + "'"); }
            if (DropDownList1.SelectedItem.Text == "化学部门")
            { success = connection.DeleteData("commission_sheet_sy2", "cno='" + No + "'"); }
            if (DropDownList1.SelectedItem.Text == "土工部门")
            { success = connection.DeleteData("commission_sheet_tg2", "cno='" + No + "'"); }
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


        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                Control c = (Control)e.CommandSource;
                GridViewRow g = (GridViewRow)c.NamingContainer;
                string cno = g.Cells[0].Text;
                //this.Label4.Text = cno;
                if (DropDownList1.Text=="材料部门")
                {
                    string s_url = "ZHHeader_RWD_Fill.aspx?NO=" + cno;
                    Response.Redirect(s_url);
                }
                if (DropDownList1.Text == "岩石部门")
                {
                    string s_url = "ZHHeader_WTD_Fill_Others_BJ_YS.aspx?NO=" + cno;
                    Response.Redirect(s_url);
                }
                if (DropDownList1.Text == "土工部门")
                {
                    string s_url = "ZHHeader_WTD_Fill_Others_BJ_TG.aspx?NO=" + cno;
                    Response.Redirect(s_url);
                }
                if (DropDownList1.Text == "化学部门")
                {
                    string s_url = "ZHHeader_WTD_Fill_Others_BJ_SY.aspx?NO=" + cno;
                    Response.Redirect(s_url);
                }
                else
                {
                    string s_url = "ZHHeader_WTD_Fill_Others_SC.aspx?NO=" + cno;
                    Response.Redirect(s_url);
                }

            }
        }


        //方法重构
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            // 从ViewState获取搜索条件
            string department = ViewState["SelectedDepartment"]?.ToString() ?? "材料部门";
            string no = ViewState["SearchNO"]?.ToString() ?? "";
            string gcmc = ViewState["SearchGcmc"]?.ToString() ?? "";

            // 根据部门选择表名
            string tableName = "task_list_cl";
            switch (department)
            {
                case "土工部门": tableName = "task_list_tg"; break;
                case "岩石部门": tableName = "task_list_ys"; break;
                case "化学部门": tableName = "task_list_sy"; break;
            }

            // 构建基础查询
            string query = $"SELECT t.*,u.bmmc FROM {tableName} t LEFT JOIN users u ON u.username = t.lqr";
            List<string> conditions = new List<string>();

            // 添加过滤条件
            if (!string.IsNullOrEmpty(no))
                conditions.Add("t.cno = @no");
            if (!string.IsNullOrEmpty(gcmc))
                conditions.Add("t.gcmc LIKE @gcmc");

            if (conditions.Count > 0)
                query += " WHERE " + string.Join(" AND ", conditions);

            // 执行查询
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@no", no);
                command.Parameters.AddWithValue("@gcmc", "%" + gcmc + "%");

                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                DataTable dataTable = new DataTable();
                dataTable.Load(reader);
                GridView1.DataSource = dataTable;
                GridView1.PageIndex = e.NewPageIndex;
                GridView1.DataBind();
            }
        }
    }
}