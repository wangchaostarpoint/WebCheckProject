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
    public partial class TX: System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               BindGridView();
            }
        }

        private void BindGridView()//此部分代码不可删！！！！
        {
            using (SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;"))
            {
                con.Open();
                SqlDataAdapter adapter = new SqlDataAdapter("SELECT Top 5 * FROM commission_attribute_list", con);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DropDownList parentDropDownList= e.Row.FindControl("ddlCategory1") as DropDownList;
                if (parentDropDownList != null)
                {
                    using (SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;"))
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand("select distinct Lmc from commission_attribute_list", con);
                        parentDropDownList.DataSource = cmd.ExecuteReader();
                        parentDropDownList.DataTextField = "Lmc";
                        parentDropDownList.DataValueField = "Lmc";
                        parentDropDownList.DataBind();
                    }
                }
            }
        }

        protected void ddlCategory1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList parentDropDownList = (DropDownList)sender;
            GridViewRow row = (GridViewRow)parentDropDownList.NamingContainer;
            DropDownList childDropDownList = row.FindControl("ddlCategory2") as DropDownList;
            if (parentDropDownList.SelectedValue != "-1")
            {
                DataTable dtChild = GetChildData(parentDropDownList.SelectedItem.Text); // 获取二级数据
                childDropDownList.DataSource = dtChild;
                childDropDownList.DataTextField = "xmmc";
                childDropDownList.DataValueField = "xmmc";
                childDropDownList.DataBind();
            }
            else
            {
                childDropDownList.Items.Clear();
                childDropDownList.Items.Add(new ListItem("请选择", "-1"));
            }
        }

        private DataTable GetChildData(string parentText)
        {
            // 根据父级ID获取子级数据的逻辑
            DataTable dataTable = new DataTable();
            using (SqlConnection connection = new SqlConnection("Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;"))
            {
                string query = "select distinct xmmc from commission_attribute_list where Lmc=@Lmc";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Lmc", parentText);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                connection.Open();
                adapter.Fill(dataTable);
            }
            return dataTable;
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "GetValue")//确认
            {
                // 分割CommandArgument以获取DropDownList的ID
                string[] ids = e.CommandArgument.ToString().Split('_');
                string dropDownListId = ids[0];
                int rowIndex = Convert.ToInt32(ids[1]);
                // 获取DropDownList控件
                GridViewRow row = GridView1.Rows[rowIndex];
                DropDownList dropDownList = row.FindControl(dropDownListId) as DropDownList;
                // 获取选定的值
                string jcxm = dropDownList.SelectedItem.Text.ToString();
                Label2.Text += jcxm+" ";
            }
        
            if (e.CommandName == "DelValue")//删除
            {
                // 分割CommandArgument以获取DropDownList的ID
                string[] ids = e.CommandArgument.ToString().Split('_');
                string dropDownListId = ids[0];
                int rowIndex = Convert.ToInt32(ids[1]);
                // 获取DropDownList控件
                GridViewRow row = GridView1.Rows[rowIndex];
                DropDownList dropDownList = row.FindControl(dropDownListId) as DropDownList;
                // 获取选定的值
                string jcxm = dropDownList.SelectedItem.Text.ToString();
                //Label2.Text += jcxm + " ";
                Label2.Text = Label2.Text.Replace(jcxm, "");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            string gcmc = TextBox1.Text;
            string wtdw = TextBox2.Text;
            string syr = TextBox3.Text;
            string lxdh = TextBox4.Text;
            string syxm = TextBox5.Text;//获得试验项目种类的名称
            string qyrq = TextBox6.Text;
            string syrq = TextBox7.Text;
            string qyr = TextBox8.Text;
            string gcbh = TextBox9.Text;

            string a1 = TextBox11.Text;
            string a2 = TextBox12.Text;
            string a3 = TextBox13.Text;
            string a4 = TextBox14.Text;
            string a5 = TextBox15.Text;
            string a6 = TextBox16.Text;
            string a7 = TextBox17.Text;

            string date = DateTime.Now.ToString("yyyy-MM-dd");//当前日期
            //string xmbh = "";
            string xmmc = Label2.Text;//检测项目名称


            //检测项目用（空格）分割成数组，并通过项目名称匹配项目编号，存入数据库中
           /* string[] mc = xmmc.Split(' ');
            string bh = "";
            for (int i = 0; i < mc.Length - 1; i++)
            {
                SqlConnection connection1 = new SqlConnection(connectionString);
                connection1.Open();
                string query = "SELECT xmbh FROM commission_attribute_list WHERE xmmc= @mc";//根据项目名称从表里搜索项目编号
                SqlCommand command = new SqlCommand(query, connection1);
                command.Parameters.AddWithValue("@mc", mc[i]);
                SqlDataReader sdr = command.ExecuteReader();
                if (sdr.Read())
                {
                    bh = sdr[0].ToString();
                }
                xmbh += bh + " ";//获取所有的项目编号
            }*/

            SqlConnection objConn = new SqlConnection(connectionString);
            objConn.Open();

            if (syxm == "水样")
            {
                //生成任务单号
                string sql = "SELECT COUNT(*) FROM commission_sheet_sy ";  //根据表中任务单的数据个数
                SqlCommand sqlCom = new SqlCommand(sql, objConn);
                DateTime currentTime = DateTime.Now;
                int year = currentTime.Year;
                int r = Convert.ToInt32(sqlCom.ExecuteScalar()) + 1;
                string re = r.ToString("D3");
                string NO = "HXRW" + year + re;  //生成任务单号

                //向表中插入数据
                Database connection = new Database(connectionString);
                bool isvalid = connection.InsertData("commission_sheet_sy", "('" + NO + "','" + gcmc + "','" + gcbh + "','" + wtdw + "','" + syr + "','" + lxdh + "','" + qyrq + "','" + syrq + "','" + qyr + "','" + a1 + "','" + a2 + "','" + a3+ "'," +
                    "'" + a4 + "','" + a5+ "','" + a6 + "','" + xmmc + "','" + date + "','','','','')");
                if (isvalid)
                {
                    //成功
                    Response.Redirect("ZHHeader_WTD_Fill_Others_SC.aspx?NO=" + NO + "&syxm=" + syxm);
                }
                else
                {
                    //失败
                }
                objConn.Close();
            }
            if (syxm == "岩石")
            {
                //生成任务单号
                string sql = "SELECT COUNT(*) FROM commission_sheet_ys ";  //根据表中任务单的数据个数
                SqlCommand sqlCom = new SqlCommand(sql, objConn);
                DateTime currentTime = DateTime.Now;
                int year = currentTime.Year;
                int r = Convert.ToInt32(sqlCom.ExecuteScalar()) + 1;
                string re = r.ToString("D3");
                string NO = "YSRW" + year + re;  //生成任务单号

                //向表中插入数据
                Database connection = new Database(connectionString);
                bool isvalid = connection.InsertData("commission_sheet_ys", "('" + NO + "','" + gcmc + "','" + gcbh + "','" + wtdw + "','" + syr + "','" + lxdh + "','" + qyrq + "','" + syrq + "','" + qyr + "','" + a1 + "','" + a2 + "','" + a3 + "'," +
                    "'" + a4 + "','" + a5 + "','" + a6 + "','" + a7 + "','" + xmmc + "','" + date + "','','','','')");
                if (isvalid)
                {
                    //成功
                    Response.Redirect("ZHHeader_WTD_Fill_Others_SC.aspx?NO=" + NO + "&syxm=" + syxm);
                }
                else
                {
                    //失败
                }
                objConn.Close();
            }

            if (syxm == "土工"|| syxm == "建材用砂砾石"|| syxm == "粗粒土")
            {
                //生成任务单号
                string sql = "SELECT COUNT(*) FROM commission_sheet_tg ";  //根据表中任务单的数据个数
                SqlCommand sqlCom = new SqlCommand(sql, objConn);
                DateTime currentTime = DateTime.Now;
                int year = currentTime.Year;
                int r = Convert.ToInt32(sqlCom.ExecuteScalar()) + 1;
                string re = r.ToString("D3");
                string NO = "TGRW" + year + re;  //生成任务单号

                //向表中插入数据
                Database connection = new Database(connectionString);
                bool isvalid = connection.InsertData("commission_sheet_tg", "('" + NO + "','" + gcmc + "','" + gcbh + "','" + wtdw + "','" + syr + "','" + lxdh + "','" + qyrq + "','" + syrq + "','" + qyr + "','" + a1 + "','" + a2 + "','" + a3 + "'," +
                    "'" + a4 + "','" + a5 + "','" + a6 + "','" + a7 + "','" + xmmc + "','" + date + "','','','','')");
                if (isvalid)
                {
                    //成功
                    Response.Redirect("ZHHeader_WTD_Fill_Others_SC.aspx?NO=" + NO + "&syxm=" + syxm);
                }
                else
                {
                    //失败
                }
                objConn.Close();
            }         
        }


    }
}