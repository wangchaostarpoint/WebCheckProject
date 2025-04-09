using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCheckProject
{
    public partial class _1 : System.Web.UI.Page
    {
        protected List<string> dataSource = new List<string>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }

        private void BindGridView()
        {
            using (SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;"))
            {
                SqlDataAdapter adapter = new SqlDataAdapter("SELECT cno from commission_sheet_cl", con);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                GridViewPopup.DataSource = dt;
                GridViewPopup.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             // 创建一个数据表并添加一列
             DataTable dt = new DataTable();
             dt.Columns.Add(new DataColumn("检测项目", typeof(string)));
             // 创建一行并设置文本值
             DataRow row = dt.NewRow();
             //row["Text"] = "这是显示的文本";
             row["检测项目"] = TextBox1.Text;
             // 将行添加到数据表中
             dt.Rows.Add(row);
             // 将数据表设置为GridView的数据源并绑定数据
             GridView1.DataSource = dt;
             GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
              //  ModalPopupExtender.Hide();          
        }
    }
}