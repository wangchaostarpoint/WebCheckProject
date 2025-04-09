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
    public partial class CLHeader_LRW : System.Web.UI.Page
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
            string TXTno = Request.QueryString["name"];//获取前端传来的腾讯通号
            DB dal = new DB();
            string query = " SELECT t.*,u.bmmc,a.tester,r.lqrd FROM task_list_cl t left join task_ry r on t.cno = r.cno left JOIN users u ON u.username = t.lqr left JOIN task_custom a ON t.cno = a.cno where t.cno like '%CL%' and u.TXTno = '" + TXTno + "'";
            DataTable dt = dal.GetDataTable(query);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        //分页方法
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            // 更新当前页码
            GridView1.PageIndex = e.NewPageIndex;

            // 重新绑定数据（如从数据库或缓存加载）
            BindGridView();
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
        //            /*string selectedValue = ddlStatus.SelectedItem.Text.ToString();
        //            // 根据需要处理所选的值
        //            string lqr = selectedValue;
        //            Console.Write(selectedValue);*/
        //        }
        //    }
        //    if (e.Row.RowType == DataControlRowType.DataRow)
        //    {
        //        DropDownList ddlStatus = (DropDownList)e.Row.FindControl("DropDownList2");
        //        if (ddlStatus != null)
        //        {
        //            ddlStatus.DataSource = GetStatusList(); // 调用方法获取下拉列表数据
        //            ddlStatus.DataBind();
        //            /*string selectedValue = ddlStatus.SelectedItem.Text.ToString();
        //            // 根据需要处理所选的值
        //            string lqr = selectedValue;
        //            Console.Write(selectedValue);*/
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
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            string query = "  SELECT username FROM users where role='普通实验员'and bmmc= '材料' ";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        adapter.Fill(dt);
                        return dt;
                    }
                }
            }
        }


        //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "GetValue")
        //    {
        //        // 分割CommandArgument以获取DropDownList的ID
        //        string[] ids = e.CommandArgument.ToString().Split('_');
        //        string dropDownListId = ids[0];
        //        int rowIndex = Convert.ToInt32(ids[1]);
        //        // 获取DropDownList控件
        //        GridViewRow row = GridView1.Rows[rowIndex];
        //        DropDownList dropDownList = row.FindControl(dropDownListId) as DropDownList;
        //        // 获取选定的值
        //        string tester = dropDownList.SelectedItem.Text.ToString();
        //        // 根据需要处理选定的值
        //        GridViewRow selectedRow = GridView1.Rows[rowIndex];
        //        // 获取第一列的数据，假设第一列是ID列
        //        string cno = selectedRow.Cells[0].Text;
        //        //Label1.Text = tester;

        //        string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
        //        Database connection = new Database(connectionString);
        //        bool success = connection.UpdateDate("task_custom", "rwdzt='已接受',tester='" + tester + "'", "cno='" + cno + "'");
        //        string TXTno = Request.QueryString["name"];//获取前端传来的腾讯通号
        //        if (success)
        //        {
        //            DB dal = new DB();
        //            string query = " SELECT t.*,u.bmmc,a.tester,r.lqrd FROM task_list_cl t left join task_ry r on t.cno = r.cno left JOIN users u ON u.username = t.lqr left JOIN task_custom a ON t.cno = a.cno where t.cno like '%CL%' and u.TXTno = '" + TXTno + "'";
        //            DataTable dt = dal.GetDataTable(query);
        //            GridView1.DataSource = dt;
        //            GridView1.DataBind();
        //        }
        //        else
        //        {
        //            // 失败
        //        }
        //    }

        //    if (e.CommandName == "GetValue1")
        //    {
        //        // 分割CommandArgument以获取DropDownList的ID
        //        string[] ids1 = e.CommandArgument.ToString().Split('_');
        //        string dropDownListId1 = ids1[0];
        //        int rowIndex1 = Convert.ToInt32(ids1[1]);
        //        // 获取DropDownList控件
        //        GridViewRow row1 = GridView1.Rows[rowIndex1];
        //        DropDownList dropDownList1 = row1.FindControl(dropDownListId1) as DropDownList;
        //        // 获取选定的值
        //        string tester1 = dropDownList1.SelectedItem.Text.ToString();
        //        // 根据需要处理选定的值
        //        GridViewRow selectedRow1 = GridView1.Rows[rowIndex1];
        //        // 获取第一列的数据，假设第一列是ID列
        //        string cno = selectedRow1.Cells[0].Text;
        //        //Label1.Text = tester;

        //        string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
        //        Database connection = new Database(connectionString);
        //        bool success = connection.UpdateDate("task_ry", "lqrd=lqrd+'" + tester1 + "'+';'", "cno ='" + cno + "'");
        //        string TXTno1 = Request.QueryString["name"];//获取前端传来的腾讯通号
        //        if (success)
        //        {
        //            DB dal = new DB();
        //            string query = " SELECT t.*,u.bmmc,a.tester,r.lqrd FROM task_list_cl t left join task_ry r on t.cno = r.cno left JOIN users u ON u.username = t.lqr left JOIN task_custom a ON t.cno = a.cno where t.cno like '%CL%' and u.TXTno = '" + TXTno1 + "'";
        //            DataTable dt = dal.GetDataTable(query);
        //            GridView1.DataSource = dt;
        //            GridView1.DataBind();
        //        }
        //        else
        //        {
        //            // 失败
        //        }

        //    }
        //    if (e.CommandName == "DeletValue")
        //    {
        //        // 分割CommandArgument以获取DropDownList的ID
        //        string[] ids2 = e.CommandArgument.ToString().Split('_');
        //        string dropDownListId2 = ids2[0];
        //        int rowIndex2 = Convert.ToInt32(ids2[1]);
        //        // 获取DropDownList控件
        //        GridViewRow row2 = GridView1.Rows[rowIndex2];
        //        DropDownList dropDownList2 = row2.FindControl(dropDownListId2) as DropDownList;
        //        // 获取选定的值
        //        string tester2 = dropDownList2.SelectedItem.Text.ToString();
        //        // 根据需要处理选定的值
        //        GridViewRow selectedRow2 = GridView1.Rows[rowIndex2];
        //        // 获取第一列的数据，假设第一列是ID列
        //        string cno = selectedRow2.Cells[0].Text;
        //        //Label1.Text = tester;

        //        string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
        //        Database connection = new Database(connectionString);
        //        bool success = connection.UpdateDate("task_ry", "lqrd=''", "cno ='" + cno + "'");
        //        string TXTno2 = Request.QueryString["name"];//获取前端传来的腾讯通号
        //        if (success)
        //        {
        //            DB dal = new DB();
        //            string query = "SELECT t.*,u.bmmc,a.tester,r.lqrd FROM task_list_cl t left join task_ry r on t.cno = r.cno left JOIN users u ON u.username = t.lqr left JOIN task_custom a ON t.cno = a.cno where t.cno like '%CL%' and u.TXTno = '" + TXTno2 + "'";
        //            DataTable dt = dal.GetDataTable(query);
        //            GridView1.DataSource = dt;
        //            GridView1.DataBind();
        //        }
        //        else
        //        {
        //            // 失败
        //        }

        //    }
        //}

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
                        DB dal = new DB();
                        string query = " SELECT t.*,u.bmmc,a.tester,r.lqrd FROM task_list_cl t left join task_ry r on t.cno = r.cno left JOIN users u ON u.username = t.lqr left JOIN task_custom a ON t.cno = a.cno where t.cno like '%CL%' and u.TXTno = '" + TXTno + "'";
                        DataTable dt = dal.GetDataTable(query);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
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
                        var insert_q= new SqlCommand("insert into task_ry(cno,lqrd) values (@cno,@lqrd)", conn );
                        insert_q.Parameters.AddWithValue("@cno", cno);
                        insert_q.Parameters.AddWithValue("@lqrd",tester);
                        success = insert_q.ExecuteNonQuery() > 0;

                    }
                    else
                    {
                        success = connection.UpdateDate("task_ry", "lqrd='" + tester + "'" , "cno ='" + cno + "'");
                    }

                    string TXTno1 = Request.QueryString["name"];//获取前端传来的腾讯通号
                    if (success)
                    {
                        DB dal = new DB();
                        string query = " SELECT t.*,u.bmmc,a.tester,r.lqrd FROM task_list_cl t left join task_ry r on t.cno = r.cno left JOIN users u ON u.username = t.lqr left JOIN task_custom a ON t.cno = a.cno where t.cno like '%CL%' and u.TXTno = '" + TXTno1 + "'";
                        DataTable dt = dal.GetDataTable(query);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
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
                    DB dal = new DB();
                    string query = "SELECT t.*,u.bmmc,a.tester,r.lqrd FROM task_list_cl t left join task_ry r on t.cno = r.cno left JOIN users u ON u.username = t.lqr left JOIN task_custom a ON t.cno = a.cno where t.cno like '%CL%' and u.TXTno = '" + TXTno2 + "'";
                    DataTable dt = dal.GetDataTable(query);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }

    }

}