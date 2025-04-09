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
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button34_click(object sender, EventArgs e)
        {
            string shu = TextBox34.Text;
            if (TextBox34.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "AlertScript", "alert('请输入值!');", true);
            }
            else
            {
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

        }



        protected void Button1_Click(object sender, EventArgs e) //将所填数据插入数据库中的commission_sheet_cl表
        {

            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
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
            string scrq = TextBox12.Text;
            DateTime date1 = DateTime.Parse(scrq);
            //string date1= TextBox12.Text;
            string dbpl = TextBox13.Text;
            string ph = TextBox14.Text;
            string qydd = TextBox15.Text;
            string sccj = TextBox16.Text;
            string sybw = TextBox17.Text;
            string jcxm = Label2.Text;
            string jcyj = TextBox33.Text;//TextBox19.Text;
            string ppbz = TextBox20.Text;
            string ypjsdz = TextBox21.Text;
            string ypzt = TextBox22.Text;
            string fcqk = TextBox23.Text;
            string sl = TextBox24.Text;
            string ypbh = TextBox25.Text;
            string wtrq = DateTime.Now.ToString("yyyy-MM-dd");
            string date2 = TextBox27.Text;
            DateTime wcrq = DateTime.Parse(date2);
            string bcxx = TextBox28.Text;
            string syyp = "";
            string tianshu = "";
            if (RadioButton1.Checked == true)
            {
                syyp = RadioButton1.Text;

            }
            if (RadioButton2.Checked == true)
            {
                syyp = RadioButton2.Text;
                tianshu = TextBox30.Text;
            }
            if (RadioButton3.Checked == true)
            {
                syyp = RadioButton3.Text;
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
            string bgjsdz = TextBox32.Text;
            string fenshu = TextBox31.Text;
            string date = DateTime.Now.ToString("yyyy-MM-dd");

            SqlConnection objConn = new SqlConnection(connectionString);
            objConn.Open();
            string sql = "SELECT COUNT(*) FROM commission_sheet_cl WHERE cno like @no";  //根据commission_sheet_cl表中材料部门的数据个数
            SqlCommand sqlCom = new SqlCommand(sql, objConn);
            sqlCom.Parameters.AddWithValue("@no", "%CL%");
            DateTime currentTime = DateTime.Now;
            int year = currentTime.Year;
            int r = Convert.ToInt32(sqlCom.ExecuteScalar()) + 1;
            string re = r.ToString("D3");
            string NO = "CLRW" + year + re;  //生成任务单号

            //向commission_sheet_cl表中插入数据
            Database connection = new Database(connectionString);
            bool isvalid = connection.InsertData("commission_sheet_cl", "('" + NO + "','" + gcmc + "','" + jsdw + "','" + jldw + "','" + sgdw + "','" + wtdw + "','" + lxr + "','" + qyr + "','" + jzr + "'," +
                "'" + syr + "','" + ypmc + "','" + ypgg + "','" + date1 + "','" + dbpl + "','" + ph + "','" + qydd + "','" + sccj + "','" + sybw + "','" + jcxm + "','" + jcyj + "','" + ppbz + "'," +
                "'" + syyp + "','" + ypjsdz + "','" + bglqfs + "','" + bgjsdz + "','" + ypzt + "','" + fcqk + "','" + sl + "','" + ypbh + "','" + wtrq + "','" + wcrq + "','" + bcxx + "','" + tianshu + "','" + fenshu + "','" + date + "','')");
            if (isvalid)
            {
                //成功
                string s_url = "ZHHeader_WTD_Fill_CL_SC.aspx?NO=" + NO; //将任务单单号传参至编辑页面
                Response.Redirect(s_url);
            }
            else
            {
                //失败
            }
            objConn.Close();


        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton1.Checked)
            {
                TextBox30.Text = string.Empty;
            };
        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton3.Checked)
            {
                TextBox30.Text = string.Empty;
            };
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

        public void method()
        {
            ClientScript.RegisterStartupScript(this.GetType(), "AlertScript", "alert('test!');", true);

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
                DropDownList dropDownList = row.FindControl(dropDownListId) as DropDownList; // 获取选定的值
                DropDownList dropDownList1 = row1.FindControl(dropDownListId1) as DropDownList; // 获取选定的值
                if (dropDownList.SelectedItem == null)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "AlertScript", "alert('请输入值!');", true);
                }
                else if (dropDownList1.SelectedItem == null)
                {
                    string jcxm = dropDownList.SelectedItem.Text.ToString();
                    Label2.Text += jcxm + " ";
                    using (SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;"))
                    {
                        SqlCommand cmd = new SqlCommand("select distinct gf from commission_attribute_list where xmmc = '" + jcxm + "'", con);
                        {
                            con.Open();
                            object result = cmd.ExecuteScalar(); // 获取单个值
                            TextBox33.Text += result.ToString() + " ";
                            if (result != null)
                            {
                                Console.WriteLine(result.ToString());
                            }
                            else
                            {
                                Console.WriteLine("No data found.");
                            }
                        }
                        con.Close();
                    }
                }
                else
                {
                    string jcxm = dropDownList.SelectedItem.Text.ToString();
                    string kx = dropDownList1.SelectedItem.Text.ToString();
                    Label2.Text += jcxm + kx + " ";
                    using (SqlConnection con = new SqlConnection("Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;"))
                    {
                        SqlCommand cmd = new SqlCommand("select distinct gf from commission_attribute_list where xmmc = '" + jcxm + "'", con);
                        {
                            con.Open();
                            object result = cmd.ExecuteScalar(); // 获取单个值
                            TextBox33.Text += result.ToString() + " ";
                            if (result != null)
                            {
                                Console.WriteLine(result.ToString());
                            }
                            else
                            {
                                Console.WriteLine("No data found.");
                            }
                        }
                        con.Close();
                    }
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

        protected void Button35_Click(object sender, EventArgs e)
        {
            string s_url = "ZHHeader_WTD.aspx"; //将任务单单号传参至编辑页面
            Response.Redirect(s_url);
        }
    }
}