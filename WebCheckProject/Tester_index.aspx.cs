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
    public partial class Tester_index : System.Web.UI.Page
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
            String TXTnos = Session["USER"].ToString();
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            string query = "select bmmc,username from users where TXTno=@name";
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@name", TXTnos);
            SqlDataReader sdr = command.ExecuteReader();
            string bmmc = "";
            string username = "";
            ///你可以使用StrShiyong赋值了如下
            if (sdr.Read())
            {
                bmmc = sdr[0].ToString();
                username = sdr[1].ToString();
            }
            connection.Close();
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                // 创建SQL查询
                con.Open();
                SqlCommand cmd = new SqlCommand();
                command.Connection = con;
                if (bmmc == "土工")
                {
                    command.CommandText = "select t.*,c.tester,c.Ypbh from task_list_tg t left join task_custom c on c.cno=t.cno where tester=@tester";
                    command.Parameters.AddWithValue("@tester", username);

                }
                else if (bmmc == "岩石")
                {
                    command.CommandText = "select t.*,c.tester,c.Ypbh from task_list_ys t left join task_custom c on c.cno=t.cno where tester=@tester";
                    command.Parameters.AddWithValue("@tester", username);
                }
                else if (bmmc == "材料")
                {
                    command.CommandText = "select t.*,c.tester,c.Ypbh from task_list_cl t left join task_custom c on c.cno=t.cno where tester=@tester";
                    command.Parameters.AddWithValue("@tester", username);
                }

                else //bmmc == "化学"
                {
                    command.CommandText = "select t.*,c.tester,c.Ypbh from task_list_sy t left join task_custom c on c.cno=t.cno where tester=@tester";
                    command.Parameters.AddWithValue("@tester", username);
                }
                SqlDataReader reader = command.ExecuteReader();
                DataTable dataTable = new DataTable();
                dataTable.Load(reader);
                reader.Close();
                con.Close();
                GridView1.DataSource = dataTable;
                GridView1.DataBind();

            }
        }

        protected string Getbmmc()
        {
            // 这里应该是查询数据库或者其他存储来获取用户角色的逻辑
            String TXTnos = Session["USER"].ToString();
            SqlConnection conn = new SqlConnection("Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;");
            string sqlstr = "select bmmc from users where TXTno=@name";
            SqlCommand cmd = new SqlCommand(sqlstr, conn);
            cmd.Parameters.AddWithValue("@name", TXTnos);
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
        protected string Getusername()
        {
            // 这里应该是查询数据库或者其他存储来获取用户角色的逻辑
            String TXTnos = Session["USER"].ToString();
            SqlConnection conn = new SqlConnection("Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;");
            string sqlstr = "select username from users where TXTno=@name";
            SqlCommand cmd = new SqlCommand(sqlstr, conn);
            cmd.Parameters.AddWithValue("@name", TXTnos);
            conn.Open();
            string username = "";
            SqlDataReader sdr = cmd.ExecuteReader();
            ///你可以使用StrShiyong赋值了如下
            if (sdr.Read())
            {
                username = sdr[0].ToString();
            }
            sdr.Close();
            cmd.Dispose();
            conn.Close();
            // 示例中仅为说明，请根据实际情况实现
            return username;
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DropDownList ddl = e.Row.FindControl("DropDownList1") as DropDownList;
                DropDownList dd2 = e.Row.FindControl("DropDownList2") as DropDownList;
                if (ddl != null)
                {
                    // 填充DropDownList的数据，可以是静态数据或动态数据
                    ddl.Items.Add(new ListItem("已制备调制", "Value1"));
                    ddl.Items.Add(new ListItem("试验中", "Value2"));
                    ddl.Items.Add(new ListItem("已出报告", "Value3"));
                }
                if (dd2 != null)
                {
                    string bm = Getbmmc();
                    if (bm == "岩石")// 填充DropDownList的数据，可以是静态数据或动态数据
                    {
                        dd2.Items.Add(new ListItem("岩石模板1", "Value1"));
                        dd2.Items.Add(new ListItem("岩石模板2", "Value2"));
                    }
                    if (bm == "土工")
                    {
                        dd2.Items.Add(new ListItem("土工模板1", "Value1"));
                        dd2.Items.Add(new ListItem("土工模板2", "Value2"));
                        dd2.Items.Add(new ListItem("土工模板3", "Value3"));
                        dd2.Items.Add(new ListItem("土工模板4", "Value4"));
                        dd2.Items.Add(new ListItem("土工模板5", "Value5"));
                        dd2.Items.Add(new ListItem("土工模板6", "Value6"));
                        dd2.Items.Add(new ListItem("土工模板7", "Value7"));
                        dd2.Items.Add(new ListItem("土工模板8", "Value8"));
                        dd2.Items.Add(new ListItem("土工模板9", "Value9"));
                        dd2.Items.Add(new ListItem("土工模板10", "Value10"));
                        dd2.Items.Add(new ListItem("土工模板10_2", "Value11"));
                        dd2.Items.Add(new ListItem("土工模板11", "Value12"));
                    }
                    if (bm == "化学")
                    {
                        dd2.Items.Add(new ListItem("化学模板1", "Value1"));
                        dd2.Items.Add(new ListItem("化学模板2", "Value2"));
                    }
                    else
                    {
                        dd2.Items.Add(new ListItem(" ", "Value1"));
                    }
                }
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "GetValue1")
            {
                // 分割CommandArgument以获取DropDownList的ID
                string[] ids = e.CommandArgument.ToString().Split('_');
                string dropDownListId = ids[0];
                int rowIndex = Convert.ToInt32(ids[1]);
                // 获取DropDownList控件
                GridViewRow row = GridView1.Rows[rowIndex];
                DropDownList dropDownList = row.FindControl(dropDownListId) as DropDownList;
                // 获取选定的值
                string rwdzt = dropDownList.SelectedItem.Text.ToString();
                // 根据需要处理选定的值
                GridViewRow selectedRow = GridView1.Rows[rowIndex];
                // 获取第一列的数据，假设第一列是ID列
                string cno = selectedRow.Cells[0].Text;
                //Label1.Text = rwdzt;

                string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
                Database connection = new Database(connectionString);
                bool success = connection.UpdateDate("task_custom", "rwdzt='" + rwdzt + "'", "cno='" + cno + "'");
                if (success)
                {
                    DB dal = new DB();
					string query;
					
                    string username = "";
                   // string query;string username = "";
                    username= Getusername();
                    string bm = Getbmmc();
                    if (bm == "岩石") {
                        query = "SELECT *,t.rwdzt FROM commission_sheet_ys2 c inner join task_custom t on c.cno = t.cno ";
                        DataTable dt = dal.GetDataTable(query);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                    if (bm == "土工")
                    {
                        query = "SELECT *,t.rwdzt FROM commission_sheet_tg2 c inner join task_custom t on c.cno = t.cno ";
                        DataTable dt = dal.GetDataTable(query);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                    //部门属于化学报告不属于，这个逻辑要重新定，是否不能使用部门，或者粗粒土，水样，建筑用颗粒土用什么区分
                    if (bm == "化学")
                    {
                        query = "SELECT *,t.rwdzt FROM commission_sheet_sy2 c inner join task_custom t on c.cno = t.cno ";
                        DataTable dt = dal.GetDataTable(query);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                    if (bm == "材料")
                    {
                        query = "SELECT *,t.rwdzt FROM commission_sheet_cl c inner join task_custom t on c.cno = t.cno ";
                        DataTable dt = dal.GetDataTable(query);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                    /*else
                     {
                         query = "SELECT *,t.rwdzt FROM commission_sheet_cl c inner join task_custom t on c.cno = t.cno ";
                         DataTable dt = dal.GetDataTable(query);
                         GridView1.DataSource = dt;
                         GridView1.DataBind();
                     }*/

                    // 成功 刷新gridview
                    //  EventArgs eventArgs = new EventArgs();
                    // 调用 Page_Load 方法
                    // Page_Load(this, eventArgs);
                }
                else
                {
                    // 失败
                }
                
            }
            if (e.CommandName == "GetValue2")
            {
                // 分割CommandArgument以获取DropDownList的ID
                string[] ids = e.CommandArgument.ToString().Split('_');
                string dropDownListId = ids[0];
                int rowIndex = Convert.ToInt32(ids[1]);
                // 获取DropDownList控件
                GridViewRow row = GridView1.Rows[rowIndex];
                DropDownList dropDownList = row.FindControl(dropDownListId) as DropDownList;
                // 获取选定的值
                string mb = dropDownList.SelectedItem.Text.ToString();
                // 根据需要处理选定的值
                GridViewRow selectedRow = GridView1.Rows[rowIndex];
                // 获取第一列的数据，假设第一列是ID列
                string cno = selectedRow.Cells[0].Text;
                if (mb == "岩石模板1")
                {
                    
                    string s_url = "ZHHeader_BGD_TX_YS1.aspx?NO=" + cno; //将任务单单号传参至编辑页面
                    Response.Redirect(s_url);
                }
                if (mb == "岩石模板2")
                {
                    string s_url = "ZHHeader_BGD_TX_YS2.aspx?NO=" + cno; //将任务单单号传参至编辑页面
                    Response.Redirect(s_url);
                }
                if (mb == "土工模板1")
                {
                    string s_url = "ZHHeader_BGD_TX_TG1.aspx?NO=" + cno; //将任务单单号传参至编辑页面
                    Response.Redirect(s_url);
                }
                if (mb == "土工模板2")
                {
                    string s_url = "ZHHeader_BGD_TX_TG2.aspx?NO=" + cno; //将任务单单号传参至编辑页面
                    Response.Redirect(s_url);
                }
                if (mb == "土工模板3")
                {
                    string s_url = "ZHHeader_BGD_TX_TG3.aspx?NO=" + cno; //将任务单单号传参至编辑页面
                    Response.Redirect(s_url);
                }
                if (mb == "土工模板4")
                {
                    string s_url = "ZHHeader_BGD_TX_TG4.aspx?NO=" + cno; //将任务单单号传参至编辑页面
                    Response.Redirect(s_url);
                }
                if (mb == "土工模板5")
                {
                    string s_url = "ZHHeader_BGD_TX_TG5.aspx?NO=" + cno; //将任务单单号传参至编辑页面
                    Response.Redirect(s_url);
                }
                if (mb == "土工模板6")
                {
                    string s_url = "ZHHeader_BGD_TX_TG6.aspx?NO=" + cno; //将任务单单号传参至编辑页面
                    Response.Redirect(s_url);
                }
                if (mb == "土工模板7")
                {
                    string s_url = "ZHHeader_BGD_TX_TG7.aspx?NO=" + cno; //将任务单单号传参至编辑页面
                    Response.Redirect(s_url);
                }
                if (mb == "土工模板8")
                {
                    string s_url = "ZHHeader_BGD_TX_TG8.aspx?NO=" + cno; //将任务单单号传参至编辑页面
                    Response.Redirect(s_url);
                }
                if (mb == "土工模板9")
                {
                    string s_url = "ZHHeader_BGD_TX_TG9.aspx?NO=" + cno; //将任务单单号传参至编辑页面
                    Response.Redirect(s_url);
                }
                if (mb == "土工模板10")
                {
                    string s_url = "ZHHeader_BGD_TX_TG10.aspx?NO=" + cno; //将任务单单号传参至编辑页面
                    Response.Redirect(s_url);
                }
                if (mb == "土工模板10_2")
                {
                    string s_url = "ZHHeader_BGD_TX_TG10_2.aspx?NO=" + cno; //将任务单单号传参至编辑页面
                    Response.Redirect(s_url);
                }
                if (mb == "土工模板11")
                {
                    string s_url = "ZHHeader_BGD_TX_TG11.aspx?NO=" + cno; //将任务单单号传参至编辑页面
                    Response.Redirect(s_url);
                }
                if (mb == "化学模板1")
                {

                    string s_url = "ZHHeader_BGD_TX_HX1.aspx?NO=" + cno; //将任务单单号传参至编辑页面
                    Response.Redirect(s_url);
                }
                if (mb == "化学模板2")
                {

                    string s_url = "ZHHeader_BGD_TX_HX2.aspx?NO=" + cno; //将任务单单号传参至编辑页面
                    Response.Redirect(s_url);
                }
            }
            if (e.CommandName == "Select")
            {
  //方法重构
                // 获取当前行索引，调整前端 CommandArgument 传递方式
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[rowIndex];

                // 获取 DropDownList2 的选中值
                DropDownList ddlTemplate = row.FindControl("DropDownList2") as DropDownList;
                string selectedTemplate = ddlTemplate.SelectedItem.Text;

                // 根据模板名称跳转（示例）
                string cno = row.Cells[0].Text;
                string s_url = GetTemplateUrl(selectedTemplate, cno);
                Response.Redirect(s_url);
            }
        }

        // 辅助方法：映射模板名称到 URL
        private string GetTemplateUrl(string templateName, string cno)
        {
            switch (templateName)
            {
                case "土工模板1": return $"ZHHeader_BGD_BJ_TG1.aspx?NO={cno}";
                case "土工模板2": return $"ZHHeader_BGD_BJ_TG2.aspx?NO={cno}";
                case "土工模板3": return $"ZHHeader_BGD_BJ_TG3.aspx?NO={cno}";
                case "土工模板4": return $"ZHHeader_BGD_BJ_TG4.aspx?NO={cno}";
                case "土工模板5": return $"ZHHeader_BGD_BJ_TG5.aspx?NO={cno}";
                case "土工模板6": return $"ZHHeader_BGD_BJ_TG6.aspx?NO={cno}";
                case "土工模板7": return $"ZHHeader_BGD_BJ_TG7.aspx?NO={cno}";
                case "土工模板8": return $"ZHHeader_BGD_BJ_TG8.aspx?NO={cno}";
                case "土工模板9": return $"ZHHeader_BGD_BJ_TG9.aspx?NO={cno}";
                case "土工模板10": return $"ZHHeader_BGD_BJ_TG10.aspx?NO={cno}";
                case "土工模板10_2": return $"ZHHeader_BGD_BJ_TG10_2.aspx?NO={cno}";
                case "土工模板11": return $"ZHHeader_BGD_BJ_TG11.aspx?NO={cno}";
                case "岩石模板1": return $"ZHHeader_BGD_BJ_YS1.aspx?NO={cno}";
                case "岩石模板2": return $"ZHHeader_BGD_BJ_YS2.aspx?NO={cno}";
                case "化学模板1": return $"ZHHeader_BGD_BJ_HX1.aspx?NO={cno}";
                case "化学模板2": return $"ZHHeader_BGD_BJ_HX2.aspx?NO={cno}";
                // 其他模板映射...
                default: return $"Tester_BGD_Fill.aspx?NO={cno}";

            }
        }


        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

            BindGridView();
            GridView1.PageIndex = e.NewPageIndex;
            DataBind();
        }

    }

}