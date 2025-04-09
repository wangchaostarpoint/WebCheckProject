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
    public partial class OtherHeaders_LQRW : System.Web.UI.Page
    {
         
        protected void Page_Load(object sender, EventArgs e)
        {
           
            String userse = Session["USERNAMECD"].ToString();
            Label4.Text = userse;
            if (!IsPostBack)
            {
                BindGridView();
            }
        }
        void BindGridView()
        {
            
            string type = Request.QueryString["Rol"]; //获取前端传来的身份
            string TXTno = Request.QueryString["name"];//获取前端传来的腾讯通号
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // 创建SQL查询
                connection.Open();
                SqlCommand command = new SqlCommand();
                command.Connection = connection;
                if (TXTno == "20198208")//陈震亚
                {
                    command.CommandText = "SELECT * FROM commission_sheet_tg2 c inner join task_custom t on c.cno = t.cno left join task_ry r on c.cno=r.cno ";
                }
                else if (TXTno == "20198222")//成佳杨
                {

                    command.CommandText = "SELECT * FROM commission_sheet_ys2 c inner join task_custom t on c.cno = t.cno left join task_ry r on c.cno=r.cno";
                }
                else if (TXTno == "20198218")//王艺华
                {
                    command.CommandText = "SELECT * FROM commission_sheet_sy2 c inner join task_custom t on c.cno = t.cno left join task_ry r on c.cno=r.cno";

                }
                else if (TXTno == "20198212")//徐青青
                {

                    command.CommandText = "SELECT * FROM commission_sheet_clt2 c inner join task_custom t on c.cno = t.cno left join task_ry r on c.cno=r.cno ";


                }
                else if(TXTno == "20140000")//特殊人员
                {

                   command.CommandText = "SELECT * FROM commission_sheet_jcysls2 c inner join task_custom t on c.cno = t.cno left join task_ry r on c.cno=r.cno ";
                  
                 }

                SqlDataReader reader = command.ExecuteReader();
                DataTable dataTable = new DataTable();
                dataTable.Load(reader);
                reader.Close();
                connection.Close();
                GridView1.DataSource = dataTable;
                GridView1.DataBind();
            }
        }

        //protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        //{

        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {
        //        DropDownList ddlStatus = (DropDownList)e.Row.FindControl("DropDownList1");
        //        if (ddlStatus != null)
        //        {
        //            ddlStatus.DataSource = GetStatusList(); // 调用方法获取下拉列表数据
        //            ddlStatus.DataBind();
        //        }
        //    }
        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {
        //        DropDownList ddlStatus = (DropDownList)e.Row.FindControl("DropDownList2");
        //        if (ddlStatus != null)
        //        {
        //            ddlStatus.DataSource = GetStatusList(); // 调用方法获取下拉列表数据
        //            ddlStatus.DataBind();

        //        }
        //    }
        //}

        //方法重构
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                //填表人员分派
                Button btn1 = e.Row.FindControl("Button1") as Button;
                if (btn1 != null)
                {
                    // 将当前行的索引（RowIndex）存入 CommandArgument
                    btn1.CommandArgument = e.Row.RowIndex.ToString();
                }

                DropDownList ddlStatus1 = (DropDownList)e.Row.FindControl("DropDownList1");
                if (ddlStatus1 != null)
                {
                    ddlStatus1.DataSource = GetStatusList(); // 调用方法获取下拉列表数据
                    ddlStatus1.DataBind();
                }

                //分派人员分派
                Button bt2 = e.Row.FindControl("Button2") as Button;
                if (bt2 != null)
                {
                    // 将当前行的索引（RowIndex）存入 CommandArgument
                    bt2.CommandArgument = e.Row.RowIndex.ToString();
                }

                DropDownList ddlStatus = (DropDownList)e.Row.FindControl("DropDownList2");
                if (ddlStatus != null)
                {
                    ddlStatus.DataSource = GetStatusList(); // 调用方法获取下拉列表数据
                    ddlStatus.DataBind();
                }

                //清空人员
                Button bt3 = e.Row.FindControl("Button3") as Button;
                if (bt3 != null)
                {
                    // 将当前行的索引（RowIndex）存入 CommandArgument
                    bt3.CommandArgument = e.Row.RowIndex.ToString();
                }

                DropDownList ddlStatus2 = (DropDownList)e.Row.FindControl("DropDownList2");
                if (ddlStatus2 != null)
                {
                    ddlStatus2.DataSource = GetStatusList(); // 调用方法获取下拉列表数据
                    ddlStatus2.DataBind();
                }
            }
        }

        private DataTable GetStatusList()
        {
            string type = Request.QueryString["Rol"]; //获取前端传来的身份
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // 创建SQL查询
                connection.Open();
                SqlCommand command = new SqlCommand();
                command.Connection = connection;
                if (type == "土工部门负责人")
                {
                    command.CommandText = "SELECT username FROM users where bmmc='土工' and role = '普通实验员'";
                }
                else if (type == "岩土部门负责人")
                {
                    command.CommandText = "SELECT username FROM users where bmmc='岩石' and role = '普通实验员'";
                }
                else 
                {
                    command.CommandText = "SELECT username FROM users where bmmc='化学' and role = '普通实验员'";
                }
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                return dt;

            }
        }

        //方法重构
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "GetValue")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument); // 直接获取行索引
                GridViewRow row = GridView1.Rows[rowIndex]; // 安全访问当前页的行

                // 查找 DropDownList（假设 ID 为 DropDownList1）
                DropDownList dropDownList = row.FindControl("DropDownList1") as DropDownList;

                // 查找 DropDownList
                if (dropDownList != null && !string.IsNullOrEmpty(dropDownList.SelectedValue))
                {
                    string tester = dropDownList.SelectedValue;

                    // 获取第一列的数据
                    string cno = row.Cells[0].Text;

                    string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
                    Database connection = new Database(connectionString);
                    bool success = connection.UpdateDate("task_custom", "rwdzt='已接受',tester='" + tester + "'", "cno='" + cno + "'");
                    string TXTno = Request.QueryString["name"];//获取前端传来的腾讯通号

                    if (success)
                    {
                        //根据身份不同查不同的sql
                        string role = Request.QueryString["Rol"];
                        if ("土工部门负责人".Equals(role))
                        {
                            string tableName = "task_list_tg";
                            string department = "TG";
                            CommonSuccess(tableName, TXTno, department);
                        }
                        else if ("材料部门负责人".Equals(role))
                        {
                            string tableName = "task_list_cl";
                            string department = "CL";
                            CommonSuccess(tableName, TXTno, department);
                        }
                        else if ("化学部门负责人".Equals(role))
                        {
                            string tableName = "task_list_sy";
                            string department = "HX";
                            CommonSuccess(tableName, TXTno, department);
                        }
                        else if ("岩石部门负责人".Equals(role))
                        {
                            string tableName = "task_list_ys";
                            string department = "YS";
                            CommonSuccess(tableName, TXTno, department);
                        }

                    }
                }
            }
            if (e.CommandName == "GetValue1")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument); // 直接获取行索引
                GridViewRow row = GridView1.Rows[rowIndex]; // 安全访问当前页的行

                // 查找 DropDownList（假设 ID 为 DropDownList2）
                DropDownList dropDownList = row.FindControl("DropDownList2") as DropDownList;

                // 查找 DropDownList
                if (dropDownList != null && !string.IsNullOrEmpty(dropDownList.SelectedValue))
                {
                    string tester = dropDownList.SelectedValue;

                    // 获取第一列的数据
                    string cno = row.Cells[0].Text;

                    string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
                    Database connection = new Database(connectionString);

                    //更新表task_ry之前判断表里是否存在cno对应的数据,若无则insert
                    SqlConnection conn = new SqlConnection(connectionString);
                    conn.Open();
                    var command = new SqlCommand("SELECT COUNT(*) FROM task_ry WHERE cno = @cno", conn);
                    command.Parameters.AddWithValue("@cno", cno);
                    int count = (int)command.ExecuteScalar();
                    bool success;
                    if (count == 0)
                    {
                        var insert_q = new SqlCommand("insert into task_ry(cno,lqrd) values (@cno,@lqrd)", conn);
                        insert_q.Parameters.AddWithValue("@cno", cno);
                        insert_q.Parameters.AddWithValue("@lqrd", tester);
                        success = insert_q.ExecuteNonQuery() > 0;

                    }
                    else
                    {
                        success = connection.UpdateDate("task_ry", "lqrd='" + tester + "'", "cno ='" + cno + "'");
                    }

                    string TXTno1 = Request.QueryString["name"];//获取前端传来的腾讯通号
                    if (success)
                    {
                        //根据身份不同查不同的sql
                        string role = Request.QueryString["Rol"];
                        if ("土工部门负责人".Equals(role))
                        {
                            string tableName = "task_list_tg";
                            string department = "TG";
                            CommonSuccess(tableName, TXTno1, department);
                        }
                        else if ("材料部门负责人".Equals(role))
                        {
                            string tableName = "task_list_cl";
                            string department = "CL";
                            CommonSuccess(tableName, TXTno1, department);
                        }
                        else if ("化学部门负责人".Equals(role))
                        {
                            string tableName = "task_list_sy";
                            string department = "HX";
                            CommonSuccess(tableName, TXTno1, department);
                        }
                        else if ("岩石部门负责人".Equals(role))
                        {
                            string tableName = "task_list_ys";
                            string department = "YS";
                            CommonSuccess(tableName, TXTno1, department);
                        }
                    }
                }
            }
            if (e.CommandName == "DeletValue")
            {
                int rowIndex2 = Convert.ToInt32(e.CommandArgument);

                // 获取DropDownList控件
                GridViewRow row2 = GridView1.Rows[rowIndex2];
                // 根据需要处理选定的值
                GridViewRow selectedRow2 = GridView1.Rows[rowIndex2];
                // 获取第一列的数据，假设第一列是ID列
                string cno = selectedRow2.Cells[0].Text;

                string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
                Database connection = new Database(connectionString);
                bool success = connection.UpdateDate("task_ry", "lqrd=''", "cno ='" + cno + "'");
                string TXTno2 = Request.QueryString["name"];//获取前端传来的腾讯通号
                if (success)
                {
                    //根据身份不同查不同的sql
                    string role = Request.QueryString["Rol"];
                    if ("土工部门负责人".Equals(role))
                    {
                        string tableName = "task_list_tg";
                        string department = "TG";
                        CommonSuccess(tableName, TXTno2, department);
                    }
                    else if ("材料部门负责人".Equals(role))
                    {
                        string tableName = "task_list_cl";
                        string department = "CL";
                        CommonSuccess(tableName, TXTno2, department);
                    }
                    else if ("化学部门负责人".Equals(role))
                    {
                        string tableName = "task_list_sy";
                        string department = "HX";
                        CommonSuccess(tableName, TXTno2, department);
                    }
                    else if ("岩石部门负责人".Equals(role))
                    {
                        string tableName = "task_list_ys";
                        string department = "YS";
                        CommonSuccess(tableName, TXTno2, department);
                    }
                }
            }
        }

        //通用success后的方法
        protected void CommonSuccess(string tablename,string txtno,string department)
        {
            DB dal = new DB();
            string query = "SELECT t.*,u.bmmc,a.tester,r.lqrd FROM " + tablename + " t left join task_ry r on t.cno = r.cno left JOIN users u ON u.username = t.lqr left JOIN task_custom a ON t.cno = a.cno where t.cno like '%" + department + "%' and u.TXTno = '" + txtno + "'";
            DataTable dt = dal.GetDataTable(query);
            GridView1.DataSource = dt;
            //GridView1.DataBind();
            BindGridView();
        }


        //protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        //{
        //    BindGridView();
        //    GridView1.PageIndex = e.NewPageIndex;
        //    DataBind();
        //}

        //方法修改
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            BindGridView(); // 必须重新绑定
        }
    }



}
