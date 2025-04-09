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
    public partial class ZHHeader_xmxz_Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*   String userse = Session["USERNAMECD"].ToString();
               Label4.Text = userse;*/
            if (!IsPostBack)
            {
                string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
                SqlConnection connection = new SqlConnection(connectionString);
                string query = "SELECT Lmc,Lbmc,xmbh,xmmc,kxbh,kxmc from  commission_attribute_list ";  //取出检测项目参数表中的数据
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

            if (DropDownList1.SelectedItem.Text == "岩石")
            {
                query = "SELECT Lmc,Lbmc,xmbh,xmmc,kxbh,kxmc from  commission_attribute_list where  Lno in (2,4,6) ORDER BY xmbh; ";

            }
            if (DropDownList1.SelectedItem.Text == "土工")
            {
                query = "SELECT Lmc,Lbmc,xmbh,xmmc,kxbh,kxmc from  commission_attribute_list where  Lno in (1,6,7) ORDER BY xmbh; ";

            }
            if (DropDownList1.SelectedItem.Text == "建材用砂砾石")
            {
                query = "SELECT Lmc,Lbmc,xmbh,xmmc,kxbh,kxmc from  commission_attribute_list where  Lno in (11,9) ORDER BY xmbh; ";

            }
            if (DropDownList1.SelectedItem.Text == "粗粒土")
            {
                query = "SELECT Lmc,Lbmc,xmbh,xmmc,kxbh,kxmc from  commission_attribute_list where  Lno in (10,12) ORDER BY xmbh; ";

            }
            if (DropDownList1.SelectedItem.Text == "水样")
            {
                query = "SELECT Lmc,Lbmc,xmbh,xmmc,kxbh,kxmc from  commission_attribute_list where  Lno in (3,21) ORDER BY xmbh; ";
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
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            string query = "";
            if (DropDownList1.SelectedItem.Text == "岩石")
            {
                query = "SELECT Lmc,Lbmc,xmbh,xmmc,kxbh,kxmc from  commission_attribute_list where  Lno in (2,4,6) ORDER BY xmbh; ";

            }
            if (DropDownList1.SelectedItem.Text == "土工")
            {
                query = "SELECT Lmc,Lbmc,xmbh,xmmc,kxbh,kxmc from  commission_attribute_list where  Lno in (1,6,7) ORDER BY xmbh; ";

            }
            if (DropDownList1.SelectedItem.Text == "建材用砂砾石")
            {
                query = "SELECT Lmc,Lbmc,xmbh,xmmc,kxbh,kxmc from  commission_attribute_list where  Lno in (11,9) ORDER BY xmbh; ";

            }
            if (DropDownList1.SelectedItem.Text == "粗粒土")
            {
                query = "SELECT Lmc,Lbmc,xmbh,xmmc,kxbh,kxmc from  commission_attribute_list where  Lno in (10,12) ORDER BY xmbh; ";

            }
            if (DropDownList1.SelectedItem.Text == "水样")
            {
                query = "SELECT Lmc,Lbmc,xmbh,xmmc,kxbh,kxmc from  commission_attribute_list where  Lno in (3,21) ORDER BY xmbh; ";
            }


            SqlCommand command = new SqlCommand(query, connection);
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

     /* protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                // 获取被选中的行索引
                int rowIndex = Convert.ToInt32(e.CommandArgument);

                // 获取CheckBox控件
                CheckBox chkBox = (GridView1.Rows[rowIndex].FindControl("CheckBoxID") as CheckBox);

                if (chkBox != null && chkBox.Checked)
                {
                    // 获取需要的数据
                    // 例如，获取GridView中绑定的数据
                    string data = GridView1.Rows[rowIndex].Cells[2].Text; // 假设你想要获取第二列的数据

                    // 插入数据到数据库
                    string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
                    SqlConnection connection = new SqlConnection(connectionString);
                    connection.Open();
                    string query = "INSERT INTO hbh_tempt VALUES (@data) ";
                    SqlCommand command = new SqlCommand(query, connection);
                    SqlDataReader reader = command.ExecuteReader();
                    DataTable dataTable = new DataTable();
                    dataTable.Load(reader);
                    reader.Close();
                    connection.Close();
                }
            }
        }
       */
      
    }
}