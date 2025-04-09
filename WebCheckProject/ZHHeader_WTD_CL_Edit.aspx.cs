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
    public partial class CL_WTD_Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string NO1 = Request.QueryString["NO"]; //获取前端传来的任务单编号
                string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {

                    connection.Open();
                    /* SqlDataAdapter adapter = new SqlDataAdapter("SELECT Top 5 * FROM commission_attribute_list ", connection);
                     DataSet ds = new DataSet();
                     adapter.Fill(ds);
                     GridView1.DataSource = ds;
                     GridView1.DataBind();*/

                    string query = "SELECT * FROM commission_sheet_cl WHERE cno= @NO";//根据任务单编号从委托单里搜索数据
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@NO", NO1);
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())//读取数据并显示在页面上
                            {
                                TextBox1.Text = reader["Gcmc"].ToString();
                                TextBox2.Text = reader["Jsdw"].ToString();
                                TextBox3.Text = reader["jldw"].ToString();
                                TextBox4.Text = reader["Sgdw"].ToString();
                                TextBox5.Text = reader["Wtdw"].ToString();
                                TextBox6.Text = reader["Lxr"].ToString();
                                TextBox7.Text = reader["Qyr"].ToString();
                                TextBox8.Text = reader["jzr"].ToString();
                                TextBox9.Text = reader["syr"].ToString();
                                TextBox10.Text = reader["Ypmc"].ToString();
                                TextBox11.Text = reader["Ypgg"].ToString();
                                //TextBox12.Text = reader["Scrq"].ToString().Substring(0, 10);
                                TextBox12.Text = reader.GetDateTime(reader.GetOrdinal("Scrq")).ToString("yyyy-MM-dd");
                                TextBox13.Text = reader["dbpl"].ToString();
                                TextBox14.Text = reader["PH"].ToString();
                                TextBox15.Text = reader["qydd"].ToString();
                                TextBox16.Text = reader["cj"].ToString();
                                TextBox17.Text = reader["sybw"].ToString();
                                Label2.Text = reader["jcxm"].ToString(); ;
                                TextBox19.Text = reader["jcyj"].ToString();
                                TextBox20.Text = reader["ppbz"].ToString();
                                TextBox21.Text = reader["Ypjsdz"].ToString();
                                TextBox22.Text = reader["Ypzt"].ToString();
                                TextBox23.Text = reader["Fcqk"].ToString();
                                TextBox24.Text = reader["Sl"].ToString();
                                TextBox25.Text = reader["Ypbh"].ToString();
                                //TextBox26.Text = reader["Wtrq"].ToString().Substring(0, 10);
                                TextBox26.Text = reader.GetDateTime(reader.GetOrdinal("Wtrq")).ToString("yyyy-MM-dd");
                                //TextBox27.Text = reader["sdwcrq"].ToString().Substring(0, 10);
                                TextBox27.Text = reader.GetDateTime(reader.GetOrdinal("sdwcrq")).ToString("yyyy-MM-dd");
                                TextBox28.Text = reader["Bcxx"].ToString();
                                TextBox29.Text = reader["cno"].ToString();
                                TextBox30.Text = "";
                                TextBox31.Text = reader["fs"].ToString();
                                TextBox32.Text = reader["bgjsdz"].ToString();
                                if (reader["sysyyp"].ToString() == "废弃")
                                {
                                    RadioButton1.Checked = true;
                                }
                                if (reader["sysyyp"].ToString() == "留样")
                                {
                                    RadioButton2.Checked = true;
                                    TextBox30.Text = reader["ts"].ToString();
                                }
                                if (reader["sysyyp"].ToString() == "寄回")
                                {
                                    RadioButton3.Checked = true;
                                }
                                if (reader["bglqfs"].ToString() == "自取")
                                {
                                    RadioButton4.Checked = true;
                                }
                                if (reader["bglqfs"].ToString() == "寄回")
                                {
                                    RadioButton5.Checked = true;
                                }
                            }
                        }
                    }
                    connection.Close();
                }
            }
        }
        protected void Button34_click(object sender, EventArgs e)
        {
            string shu = TextBox34.Text;
            using (SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;"))
            {
                con.Open();
                SqlDataAdapter adapter = new SqlDataAdapter("SELECT Top " + shu + " * FROM commission_attribute_list ", con);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            };

        }

        protected void Button1_Click(object sender, EventArgs e)//更新数据
        {
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            Database connection = new Database(connectionString);
            string gcmc = TextBox1.Text;
            string jsdw = TextBox2.Text;
            string jldw = TextBox3.Text;
            string sgdw = TextBox4.Text;
            string wtdw = TextBox5.Text;
            string lxr = TextBox6.Text;
            string qyr = TextBox7.Text;
            string jzr = TextBox8.Text;
            string syr = TextBox9.Text;
            string ypmc = TextBox10.Text;
            string ypgg = TextBox11.Text;
            string dbpl = TextBox13.Text;
            string ph = TextBox14.Text;
            string qydd = TextBox15.Text;
            string sccj = TextBox16.Text;
            string sybw = TextBox17.Text;
            string jcxm = Label2.Text;
            string jcyj = TextBox19.Text;
            string ppbz = TextBox20.Text;
            string ypjsdz = TextBox21.Text;
            string ypzt = TextBox22.Text;
            string fcqk = TextBox23.Text;
            string sl = TextBox24.Text;
            string ypbh = TextBox25.Text;
            string date2 = TextBox27.Text;
            DateTime wcrq = DateTime.Parse(date2);
            string bcxx = TextBox28.Text;
            string bgjsdz = TextBox32.Text;
            string fenshu = TextBox31.Text;
            string syyp = "";
            string tianshu = "";
            if (RadioButton1.Checked == true)
            {
                syyp = RadioButton1.Text;
                tianshu = "";
            }
            if (RadioButton2.Checked == true)
            {
                syyp = RadioButton2.Text;
                tianshu = TextBox30.Text;
            }
            if (RadioButton3.Checked == true)
            {
                syyp = RadioButton3.Text;
                tianshu = "";
            }
            string bglqfs = "";
            if (RadioButton4.Checked == true)
            {
                bglqfs = RadioButton4.Text;
            }
            if (RadioButton5.Checked == true)
            {
                bglqfs = RadioButton5.Text;
            }

            bool success = connection.UpdateDate("commission_sheet_cl", "gcmc='" + gcmc + "',Jsdw='" + jsdw + "',jldw='" + jldw + "',Sgdw='" + sgdw + "',Wtdw='" + wtdw + "',Lxr='" + lxr + "',Qyr='" + qyr + "',jzr='" + jzr + "',Syr='" + syr + "',Ypmc='" + ypmc + "'" +
                ",Ypgg='" + ypgg + "',dbpl='" + dbpl + "',PH='" + ph + "',qydd='" + qydd + "',cj='" + sccj + "',sybw='" + sybw + "',jcxm='" + jcxm + "',jcyj='" + jcyj + "',ppbz='" + ppbz + "',sysyyp='" + syyp + "',Ypjsdz='" + ypjsdz + "',bglqfs='" + bglqfs + "'" +
                ",bgjsdz='" + bgjsdz + "',Ypzt='" + ypzt + "',Fcqk='" + fcqk + "',Sl='" + sl + "',Ypbh='" + ypbh + "',sdwcrq='" + wcrq + "',Bcxx='" + bcxx + "',ts='" + tianshu + "',fs='" + fenshu + "'", "cno='" + TextBox29.Text + "'");
            if (success)
            {
                /*      // 成功 刷新gridview
                      EventArgs eventArgs = new EventArgs();
                      // 调用 Page_Load 方法
                      Page_Load(this, eventArgs);*/
                //成功
                string s_url = "ZHHeader_WTD_Fill_CL_SC.aspx?NO=" + TextBox29.Text; //将任务单单号传参至编辑页面
                Response.Redirect(s_url);
            }
            else
            {
                // 失败
            }

        }

        protected void Button2_Click(object sender, EventArgs e)//返回
        {
            Response.Redirect("ZHHeader_WTD.aspx");
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DropDownList parentDropDownList = e.Row.FindControl("ddlCategory1") as DropDownList;
                if (parentDropDownList != null)
                {
                    using (SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;"))
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand("select distinct Lmc from commission_attribute_list ", con);
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

        protected void ddlCategory2_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList parentDropDownList = (DropDownList)sender;
            GridViewRow row = (GridViewRow)parentDropDownList.NamingContainer;
            DropDownList childDropDownList = row.FindControl("ddlCategory3") as DropDownList;
            if (parentDropDownList.SelectedValue != "-1")
            {
                DataTable dtChild = GetChildData2(parentDropDownList.SelectedItem.Text); // 获取三级数据
                childDropDownList.DataSource = dtChild;
                childDropDownList.DataTextField = "kxmc";
                childDropDownList.DataValueField = "kxmc";
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
        private DataTable GetChildData2(string parentText)
        {
            // 根据父级ID获取子级数据的逻辑
            DataTable dataTable = new DataTable();
            using (SqlConnection connection = new SqlConnection("Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;"))
            {
                string query = "select distinct kxmc from commission_attribute_list where xmmc=@xmmc";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@xmmc", parentText);
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
                int rowIndex = Convert.ToInt32(ids[2]);
                string dropDownListId1 = ids[1];
                int rowIndex1 = Convert.ToInt32(ids[2]);
                // 获取DropDownList控件
                GridViewRow row = GridView1.Rows[rowIndex];
                GridViewRow row1 = GridView1.Rows[rowIndex1];
                DropDownList dropDownList = row.FindControl(dropDownListId) as DropDownList;
                // 获取选定的值
                DropDownList dropDownList1 = row.FindControl(dropDownListId1) as DropDownList;
                // 获取选定的值
                string jcxm = dropDownList.SelectedItem.Text.ToString();
                if (dropDownList1.SelectedItem == null)
                {
                    Label2.Text += jcxm + " ";
                }
                else
                {
                    string kx = dropDownList1.SelectedItem.Text.ToString();
                    Label2.Text += jcxm + kx + " ";
                }

            }

            if (e.CommandName == "DelValue")//删除
            {
                // 分割CommandArgument以获取DropDownList的ID
                string[] ids = e.CommandArgument.ToString().Split('_');
                string dropDownListId = ids[0];
                int rowIndex = Convert.ToInt32(ids[2]);
                string dropDownListId1 = ids[1];
                int rowIndex1 = Convert.ToInt32(ids[2]);
                // 获取DropDownList控件
                GridViewRow row = GridView1.Rows[rowIndex];
                GridViewRow row1 = GridView1.Rows[rowIndex1];
                DropDownList dropDownList = row.FindControl(dropDownListId) as DropDownList;
                DropDownList dropDownList1 = row1.FindControl(dropDownListId1) as DropDownList;
                // 获取选定的值
                if (dropDownList1.SelectedItem == null)
                {
                    string jcxm = dropDownList.SelectedItem.Text.ToString();
                    Label2.Text = Label2.Text.Replace(jcxm + " ", "");
                }
                else
                {
                    string jcxm = dropDownList.SelectedItem.Text.ToString();
                    string kx = dropDownList1.SelectedItem.Text.ToString();
                    Label2.Text = Label2.Text.Replace(jcxm + kx + " ", "");
                }
            }
        }

    }
}