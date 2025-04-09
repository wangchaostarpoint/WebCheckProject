using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using WebApplication1;

namespace WebCheckProject
{
    public partial class ZHHeader_BGD_Table : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String userse = Session["USERNAMECD"].ToString();
            Label4.Text = userse;
            if (!IsPostBack)
            {
                BindGridView();
            }
            void BindGridView()
            {
                DB dal = new DB();
                string query = "SELECT c.*,r.Rp_no FROM commission_sheet_cl c left join cno_Rp r on c.cno=r.cno"; // 查找材料中所有数据
                DataTable dt = dal.GetDataTable(query);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            string query;
            if (DropDownList1.SelectedItem.Text == "材料部门")//根据所选部门名称，在报告单表中查询相应部门的数据
            {
                query = "SELECT c.*,r.Rp_no FROM commission_sheet_cl c left join cno_Rp r on c.cno=r.cno ";
            }
            else if (DropDownList1.SelectedItem.Text == "化学部门")
            {
                query = "SELECT c.*,r.Rp_no FROM commission_sheet_sy2 c left join cno_Rp r on c.cno=r.cno ";
            }
            else if (DropDownList1.SelectedItem.Text == "土工部门")
            {
                query = "SELECT c.*,r.Rp_no FROM commission_sheet_tg2 c left join cno_Rp r on c.cno=r.cno ";
            }
            else if (DropDownList1.SelectedItem.Text == "岩石部门")
            {
                query = "SELECT c.*,r.Rp_no FROM commission_sheet_ys2 c left join cno_Rp r on c.cno=r.cno ";
            }
            else if (DropDownList1.SelectedItem.Text == "外业部门")
            {
                query = " SELECT c.*,r.Rp_no FROM rep_files c left join cno_Rp r on c.Rp_no=r.Rp_no";
            }
            else
            {
                query = " ";
            }
            SqlCommand command = new SqlCommand(query, connection);
            SqlDataReader reader = command.ExecuteReader();
            DataTable dataTable = new DataTable();
            dataTable.Load(reader);
            reader.Close();
            connection.Close();
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }


        protected void Button_Click(object sender, CommandEventArgs e)//表中的“查看”按钮，进入ZHHeader_QZGZSM详情页面
        {
            string Rpno = "";          
            string cno = "";
            Button btn = sender as Button; // 获取触发事件的按钮
            GridViewRow row = ((GridViewRow)((Control)btn).NamingContainer);

                // 获取GridView的DataKeys集合
            GridView gv = row.NamingContainer as GridView;

                 // 获取GridView中的单元格
            Rpno = gv.Rows[row.RowIndex].Cells[0].Text; // 获取报告单单编号数据，列数从0 开始          
            cno = gv.Rows[row.RowIndex].Cells[1].Text; // 获取任务单编号数据，列数从0 开始     
            string s_url = "ZHHeader_QZGZSM.aspx?NO=" + cno + "&RPNO=" + Rpno; //将任务单单号传参至编辑页面
            Response.Redirect(s_url);
            
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
         {
            string query = "";
            DB dal = new DB();            
            if (DropDownList1.SelectedItem.Text == "材料部门")//根据所选部门名称，在报告单表中查询相应部门的数据
             {
                query = "SELECT c.*,r.Rp_no FROM commission_sheet_cl c left join cno_Rp r on c.cno=r.cno"; 
             }
             else if (DropDownList1.SelectedItem.Text == "化学部门")
             {
                 query = "SELECT c.*,r.Rp_no FROM commission_sheet_sy2 c left join cno_Rp r on c.cno=r.cno ";
             }
             else if (DropDownList1.SelectedItem.Text == "土工部门")
             {
                 query = "SELECT c.*,r.Rp_no FROM commission_sheet_tg2 c left join cno_Rp r on c.cno=r.cno ";
             }
             else if (DropDownList1.SelectedItem.Text == "岩石部门")
             {
                 query = "SELECT c.*,r.Rp_no FROM commission_sheet_ys2 c left join cno_Rp r on c.cno=r.cno ";
             }
             else if (DropDownList1.SelectedItem.Text == "外业部门")
             {
                 query = " SELECT c.*,r.Rp_no FROM rep_files c left join cno_Rp r on c.cno=r.cno";
             }
             else
             {
                 query = " ";
             }
            // string query = "SELECT c.*,r.Rp_no FROM commission_sheet_cl c left join cno_Rp r on c.cno=r.cno"; // 查找材料中所有数据
             DataTable dt = dal.GetDataTable(query);
             GridView1.DataSource = dt;
             GridView1.DataBind();
             GridView1.PageIndex = e.NewPageIndex;
             DataBind();
         }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       
    }



}