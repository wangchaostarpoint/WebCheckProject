using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;
using WebApplication1;
using System.Web.UI;


namespace WebCheckProject
{
    public partial class ZHHeader_WTD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String userse = Session["USERNAMECD"].ToString();
           // String headername = Session["headername"].ToString();//领取任务的人名，为部门部长
           // String headerid = Session["headerid"]. ToString();//领取任务的rtx
            Label4.Text = userse;
            if (!IsPostBack)
            {
                string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
                SqlConnection connection = new SqlConnection(connectionString);
                //部门不全
                //string query = "SELECT cno,gcmc,Wtdw,Qyr from commission_sheet_cl a union select cno,gcmc,Wtdw,Qyr from commission_sheet_sy2 b union select cno,gcmc,Wtdw,Qyr from  commission_sheet_tg2 c union select cno,gcmc,Wtdw,Qyr  from commission_sheet_ys2; ";   //委托单里的所有数据         
                string query = "SELECT cno,gcmc,Wtdw,Qyr from commission_sheet_cl union " +
                    "select cno,gcmc,Wtdw,Qyr from commission_sheet_sy2 union " +
                    "select cno,gcmc,Wtdw,Qyr from  commission_sheet_tg2 union " +
                    "select cno,gcmc,Wtdw,Qyr  from commission_sheet_ys2 union " +
                    "select cno,gcmc,Wtdw,Qyr  from commission_sheet_clt2 union " +
                    "select cno,gcmc,Wtdw,Qyr  from commission_sheet_jcysls2;";

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
            else {

                string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
                SqlConnection connection = new SqlConnection(connectionString);
                //string query = "SELECT cno, gcmc, Wtdw, Qyr from commission_sheet_cl a union select cno,gcmc,Wtdw,Qyr from commission_sheet_sy2 b union select cno,gcmc,Wtdw,Qyr from  commission_sheet_tg2 c union select cno,gcmc,Wtdw,Qyr from commission_sheet_ys2; "; //委托单里的所有数据         
                //部门不全
                string query = "SELECT cno,gcmc,Wtdw,Qyr from commission_sheet_cl union " +
                    "select cno,gcmc,Wtdw,Qyr from commission_sheet_sy2 union " +
                    "select cno,gcmc,Wtdw,Qyr from  commission_sheet_tg2 union " +
                    "select cno,gcmc,Wtdw,Qyr  from commission_sheet_ys2 union " +
                    "select cno,gcmc,Wtdw,Qyr  from commission_sheet_clt2 union " +
                    "select cno,gcmc,Wtdw,Qyr  from commission_sheet_jcysls2;";
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

        protected void Button3_Click(object sender, EventArgs e)//按照条件搜索
        {
            GridView1.DataSource = null;
            string NO = TextBox1.Text;
            string gcmc = TextBox2.Text;
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            string query = "";
            if (DropDownList1.SelectedItem.Text == "空")
            {

                if (TextBox1.Text != "" && TextBox2.Text == "")//按任务单编号搜索
                {
                    query = "select cno,gcmc,Wtdw,Qyr from (SELECT cno,gcmc,Wtdw,Qyr  from commission_sheet_cl a union select cno,gcmc,Wtdw,Qyr  from commission_sheet_sy2 b union select cno,gcmc,Wtdw,Qyr from  commission_sheet_tg2 c union select cno,gcmc,Wtdw,Qyr from commission_sheet_ys2 d union select cno,gcmc,Wtdw,Qyr from commission_sheet_clt2 e union select cno,gcmc,Wtdw,Qyr from  commission_sheet_jcysls2)e WHERE e.cno = @no ";

                }
                else if (TextBox2.Text != "" && TextBox1.Text == "")
                {
                    query = "select cno,gcmc,Wtdw,Qyr from (SELECT cno,gcmc,Wtdw,Qyr  from commission_sheet_cl a union select cno,gcmc,Wtdw,Qyr  from commission_sheet_sy2 b union select cno,gcmc,Wtdw,Qyr from  commission_sheet_tg2 c union select cno,gcmc,Wtdw,Qyr from commission_sheet_ys2 d union select cno,gcmc,Wtdw,Qyr from commission_sheet_clt2 e union select cno,gcmc,Wtdw,Qyr from  commission_sheet_jcysls2 )e WHERE e.gcmc like @gcmc ";//按工程名称模糊搜索

                }
                else if (TextBox2.Text != "" && TextBox1.Text != "")
                {
                    query = "select cno,gcmc,Wtdw,Qyr from (SELECT cno,gcmc,Wtdw,Qyr  from commission_sheet_cl a union select cno,gcmc,Wtdw,Qyr  from commission_sheet_sy2 b union select cno,gcmc,Wtdw,Qyr from  commission_sheet_tg2 c union select cno,gcmc,Wtdw,Qyr from commission_sheet_ys2 d union select cno,gcmc,Wtdw,Qyr from commission_sheet_clt2 e union select cno,gcmc,Wtdw,Qyr from  commission_sheet_jcysls2 )e WHERE e.gcmc like @gcmc and e.cno = @no"; //按工程名称模糊和任务单编号搜索
                }
                else
                {
                    query = "SELECT cno,gcmc,Wtdw,Qyr  from commission_sheet_cl a union select cno,gcmc,Wtdw,Qyr  from commission_sheet_sy2 b union select cno,gcmc,Wtdw,Qyr  from  commission_sheet_tg2 c union select cno,gcmc,Wtdw,Qyr  from commission_sheet_ys2 d union select cno,gcmc,Wtdw,Qyr from commission_sheet_clt2 e union select cno,gcmc,Wtdw,Qyr from  commission_sheet_jcysls2";
                }
            }
            if (DropDownList1.SelectedItem.Text == "材料部门委托单")
            {

                if (TextBox1.Text != "" && TextBox2.Text == "")//按任务单编号搜索
                {
                    query = "SELECT * from commission_sheet_cl WHERE cno = @no ";

                }
                else if (TextBox2.Text != "" && TextBox1.Text == "")
                {
                    query = "SELECT * from commission_sheet_cl WHERE gcmc like @gcmc ";//按工程名称模糊搜索

                }
                else if (TextBox2.Text != "" && TextBox1.Text != "")
                {
                    query = "SELECT * from commission_sheet_cl WHERE gcmc like @gcmc and cno = @no"; //按工程名称模糊和任务单编号搜索
                }
                else
                {
                    query = "SELECT * from commission_sheet_cl ";
                }
            }
            if (DropDownList1.SelectedItem.Text == "水样委托单")
            {

                if (TextBox1.Text != "" && TextBox2.Text == "")//按任务单编号搜索
                {
                    query = "SELECT * from commission_sheet_sy2 WHERE cno = @no";

                }
                else if (TextBox2.Text != "" && TextBox1.Text == "")
                {
                    query = "SELECT * from commission_sheet_sy2 WHERE gcmc like @gcmc ";//按工程名称模糊搜索

                }
                else if (TextBox2.Text != "" && TextBox1.Text != "")
                {
                    query = "SELECT * from commission_sheet_sy2 WHERE gcmc like @gcmc and cno = @no"; //按工程名称模糊和任务单编号搜索
                }
                else
                {
                    query = "SELECT * from commission_sheet_sy2 ";
                }
            }
            if (DropDownList1.SelectedItem.Text == "岩石委托单")
            {

                if (TextBox1.Text != "" && TextBox2.Text == "")//按任务单编号搜索
                {
                    query = "SELECT * from commission_sheet_ys2 WHERE cno = @no ";

                }
                else if (TextBox2.Text != "" && TextBox1.Text == "")
                {
                    query = "SELECT * from commission_sheet_ys2 WHERE gcmc like @gcmc ";//按工程名称模糊搜索

                }
                else if (TextBox2.Text != "" && TextBox1.Text != "")
                {
                    query = "SELECT * from commission_sheet_ys2 WHERE gcmc like @gcmc and cno = @no"; //按工程名称模糊和任务单编号搜索
                }
                else
                {
                    query = "SELECT * from commission_sheet_ys2 ";
                }
            }
            if (DropDownList1.SelectedItem.Text == "土工委托单")
            {

                if (TextBox1.Text != "" && TextBox2.Text == "")//按任务单编号搜索
                {
                    query = "SELECT * from commission_sheet_tg2 WHERE cno = @no ";

                }
                else if (TextBox2.Text != "" && TextBox1.Text == "")
                {
                    query = "SELECT * from commission_sheet_tg2 WHERE gcmc like @gcmc ";//按工程名称模糊搜索

                }
                else if (TextBox2.Text != "" && TextBox1.Text != "")
                {
                    query = "SELECT * from commission_sheet_tg2 WHERE gcmc like @gcmc and cno = @no"; //按工程名称模糊和任务单编号搜索
                }
                else
                {
                    query = "SELECT * from commission_sheet_tg2 ";
                }
            }
            if (DropDownList1.SelectedItem.Text == "建材用砂砾石委托单")
            {

                if (TextBox1.Text != "" && TextBox2.Text == "")//按任务单编号搜索
                {
                    query = "SELECT * from commission_sheet_jcysls2 WHERE cno = @no ";

                }
                else if (TextBox2.Text != "" && TextBox1.Text == "")
                {
                    query = "SELECT * from commission_sheet_jcysls2 WHERE gcmc like @gcmc ";//按工程名称模糊搜索

                }
                else if (TextBox2.Text != "" && TextBox1.Text != "")
                {
                    query = "SELECT * from commission_sheet_jcysls2 WHERE gcmc like @gcmc and cno = @no"; //按工程名称模糊和任务单编号搜索
                }
                else
                {
                    query = "SELECT * from commission_sheet_jcysls2 ";
                }
            }
            if (DropDownList1.SelectedItem.Text == "粗粒土委托单")
            {


                if (TextBox1.Text != "" && TextBox2.Text == "")//按任务单编号搜索
                {
                    query = "SELECT * from commission_sheet_clt2 WHERE cno = @no ";

                }
                else if (TextBox2.Text != "" && TextBox1.Text == "")
                {
                    query = "SELECT * from commission_sheet_clt2 WHERE gcmc like @gcmc ";//按工程名称模糊搜索

                }
                else if (TextBox2.Text != "" && TextBox1.Text != "")
                {
                    query = "SELECT * from commission_sheet_clt2 WHERE gcmc like @gcmc and cno = @no"; //按工程名称模糊和任务单编号搜索
                }
                else
                {
                    query = "SELECT * from commission_sheet_clt2 ";
                }
            }
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@gcmc", "%" + gcmc + "%");
            command.Parameters.AddWithValue("@no", NO);
            SqlDataReader reader = command.ExecuteReader();
            DataTable dataTable = new DataTable();
            dataTable.Load(reader);
            reader.Close();
            connection.Close();
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }

         protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)//获取所选行的编号，方便进行编辑
        {

            if (DropDownList1.SelectedItem.Text == "空") {
                int index = e.NewEditIndex;
                GridViewRow row = GridView1.Rows[index];
                TableCell cell = row.Cells[1];
                string value = cell.Text;
                if (value.Substring(0, 2) == "CL") {
                    string s_url = "ZHHeader_WTD_CL_Edit.aspx?NO=" + value; //将任务单单号传参至编辑页面
                    Response.Redirect(s_url);
                }
                if (value.Substring(0, 2) == "YS")
                {
                    string s_url = "ZHHeader_WTD_Fill_Others_BJ_YS.aspx?NO=" + value; //将任务单单号传参至编辑页面
                    Response.Redirect(s_url);
                }
               if (value.Substring(0, 2) == "TG")
                {

                    string s_url = "tips1.aspx"; //将任务单单号传参至编辑页面
                   Response.Redirect(s_url);
                }
                                 
                if (value.Substring(0, 2) == "HX")
                {
                    string s_url = "ZHHeader_WTD_Fill_Others_BJ_SY.aspx?NO=" + value; //将任务单单号传参至编辑页面
                    Response.Redirect(s_url);
                }
                
            }
            else
            {
                Button3_Click(sender, e);
                int index = e.NewEditIndex;
                GridViewRow row = GridView1.Rows[index];
                TableCell cell = row.Cells[1];
                string value = cell.Text;
                if (value.Substring(0, 2) == "CL")
                {
                    string s_url = "ZHHeader_WTD_CL_Edit.aspx?NO=" + value; //将任务单单号传参至编辑页面
                    Response.Redirect(s_url);
                }
                if (DropDownList1.SelectedItem.Text == "岩石委托单")
                {
                    string s_url = "ZHHeader_WTD_Fill_Others_BJ_YS.aspx?NO=" + value; //将任务单单号传参至编辑页面
                    Response.Redirect(s_url);
                }
                if (DropDownList1.SelectedItem.Text == "土工委托单")
                {
                    string s_url = "ZHHeader_WTD_Fill_Others_BJ_TG.aspx?NO=" + value; //将任务单单号传参至编辑页面
                    Response.Redirect(s_url);
                }
                if (DropDownList1.SelectedItem.Text == "粗粒土委托单")
                {
                    string s_url = "ZHHeader_WTD_Fill_Others_BJ_CLT.aspx?NO=" + value; //将任务单单号传参至编辑页面
                    Response.Redirect(s_url);
                }
                if (DropDownList1.SelectedItem.Text == "水样委托单")
                {
                    string s_url = "ZHHeader_WTD_Fill_Others_BJ_SY.aspx?NO=" + value; //将任务单单号传参至编辑页面
                    Response.Redirect(s_url);
                }
                if (DropDownList1.SelectedItem.Text == "建材用砂砾石委托单")
                {
                    string s_url = "ZHHeader_WTD_Fill_Others_BJ_JCYSLS.aspx?NO=" + value; //将任务单单号传参至编辑页面
                    Response.Redirect(s_url);
                }
                else
                {
                    string s_url = "ZHHeader_WTD_Fill_Others_SC.aspx?NO=" + value; //将任务单单号传参至编辑页面
                    Response.Redirect(s_url);
                }
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)//获取所选行的编号，删除所选行数据
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            string No = row.Cells[1].Text;
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            Database connection = new Database(connectionString);
            bool success = connection.DeleteData("commission_sheet_cl", "cno='" + No + "'");
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


        protected void Button1_Click(object sender, EventArgs e)//材料
        {
            Response.Redirect("ZHHeader_WTD_Fill_CL.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)//岩石
        {
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            SqlConnection objConn = new SqlConnection(connectionString);
            objConn.Open();
                //生成任务单号
                string sql = "SELECT COUNT(distinct cno) FROM commission_sheet_ys2 ";  //根据表中任务单的数据个数
                SqlCommand sqlCom = new SqlCommand(sql, objConn);
                DateTime currentTime = DateTime.Now;
                int year = currentTime.Year;
                int r = Convert.ToInt32(sqlCom.ExecuteScalar()) + 1;
                string re = r.ToString("D3");
                string NO = "YSRW" + year + re;  //生成任务单号
                Response.Redirect("ZHHeader_WTD_Fill_Others_TX_YS.aspx?NO=" + NO + "&syxm=" +"岩石");
                objConn.Close();
                
            }

        protected void Button7_Click(object sender, EventArgs e)//土工
        {
        string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
        SqlConnection objConn = new SqlConnection(connectionString);
        objConn.Open();
        //生成任务单号
        string sql = "SELECT COUNT(*) FROM commission_sheet_tg2 ";  //根据表中任务单的数据个数
        SqlCommand sqlCom = new SqlCommand(sql, objConn);
        DateTime currentTime = DateTime.Now;
        int year = currentTime.Year;
        int r = Convert.ToInt32(sqlCom.ExecuteScalar()) + 1;
        string re = r.ToString("D3");
        string sql2 = "SELECT (SELECT COUNT(*) FROM commission_sheet_clt2) + (SELECT COUNT(*) FROM commission_sheet_jcysls2) + (SELECT COUNT(*) FROM commission_sheet_tg2) AS total_count";
       //SqlCommand sqlCom = new SqlCommand(sql2, objConn);
        //int r2 = Convert.ToInt32(sqlCom2.ExecuteScalar()) + 1;
       // string re2 = r.ToString("D3");
        string NO = "TGRW" + year + re;  //生成任务单号
        Response.Redirect("ZHHeader_WTD_Fill_Others_TX_TG.aspx?NO=" + NO + "&syxm=" + "土工");
        objConn.Close();
         }
        protected void Button4_Click(object sender, EventArgs e)//建材用砂砾石
        {
        string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
        SqlConnection objConn = new SqlConnection(connectionString);
        objConn.Open();
        //生成任务单号
        //string sql = "SELECT COUNT(*) FROM commission_sheet_jcysls2";  //根据表中任务单的数据个数
        string sql2 = "SELECT (SELECT COUNT(*) FROM commission_sheet_clt2) + (SELECT COUNT(*) FROM commission_sheet_jcysls2) + (SELECT COUNT(*) FROM commission_sheet_tg2) AS total_count";
        SqlCommand sqlCom = new SqlCommand(sql2, objConn);
        //SqlCommand sqlCom2 = new SqlCommand(sql, objConn);
        DateTime currentTime = DateTime.Now;
        int year = currentTime.Year;
        int r = Convert.ToInt32(sqlCom.ExecuteScalar()) + 1;
        string re = r.ToString("D3");
        string NO = "TGRW" + year + re;  //生成任务单号
        Response.Redirect("ZHHeader_WTD_Fill_Others_TX_JCYSLS.aspx?NO=" + NO + "&syxm=" + "建材用砂砾石");
        objConn.Close();
    }
        protected void Button5_Click(object sender, EventArgs e)//粗粒土
        {
        string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
        SqlConnection objConn = new SqlConnection(connectionString);
        objConn.Open();
        //生成任务单号
      //  string sql = "SELECT COUNT(*) FROM commission_sheet_clt2 ";  //根据表中任务单的数据个数
        string sql2 = "SELECT (SELECT COUNT(*) FROM commission_sheet_clt2) + (SELECT COUNT(*) FROM commission_sheet_jcysls2) + (SELECT COUNT(*) FROM commission_sheet_tg2) AS total_count";
        SqlCommand sqlCom = new SqlCommand(sql2, objConn);
        DateTime currentTime = DateTime.Now;
        int year = currentTime.Year;
        int r = Convert.ToInt32(sqlCom.ExecuteScalar()) + 1;
        string re = r.ToString("D3");
        string NO = "TGRW" + year + re;  //生成任务单号
        Response.Redirect("ZHHeader_WTD_Fill_Others_TX_CLT.aspx?NO=" + NO + "&syxm=" + "粗粒土");
        objConn.Close();
    }
        protected void Button6_Click(object sender, EventArgs e)//水样
        {
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            SqlConnection objConn = new SqlConnection(connectionString);
            objConn.Open();
            //生成任务单号
            string sql = "SELECT COUNT(*) FROM commission_sheet_sy2 ";  //根据表中任务单的数据个数
            SqlCommand sqlCom = new SqlCommand(sql, objConn);
            DateTime currentTime = DateTime.Now;
            int year = currentTime.Year;
            int r = Convert.ToInt32(sqlCom.ExecuteScalar()) + 1;
            string re = r.ToString("D3");
            string NO = "HXRW" + year + re;  //生成任务单号
            Response.Redirect("ZHHeader_WTD_Fill_Others_TX_SY.aspx?NO=" + NO + "&syxm=" + "水样"); 
            objConn.Close();
        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.DataSource = null;
            string NO = TextBox1.Text;
            string gcmc = TextBox2.Text;
            GridView1.PageIndex = e.NewPageIndex;
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            string query = "";
            if (DropDownList1.SelectedItem.Text == "空")
            {

                if (TextBox1.Text != "" && TextBox2.Text == "")//按任务单编号搜索
                {
                    query = "select cno,gcmc,Wtdw,Qyr from (SELECT cno,gcmc,Wtdw,Qyr  from commission_sheet_cl a union select cno,gcmc,Wtdw,Qyr  from commission_sheet_sy2 b union select cno,gcmc,Wtdw,Qyr from  commission_sheet_tg2 c union select cno,gcmc,Wtdw,Qyr from commission_sheet_ys2 d union select cno,gcmc,Wtdw,Qyr from commission_sheet_clt2 e union select cno,gcmc,Wtdw,Qyr from  commission_sheet_jcysls2)e WHERE e.cno = @no ";

                }
                else if (TextBox2.Text != "" && TextBox1.Text == "")
                {
                    query = "select cno,gcmc,Wtdw,Qyr from (SELECT cno,gcmc,Wtdw,Qyr  from commission_sheet_cl a union select cno,gcmc,Wtdw,Qyr  from commission_sheet_sy2 b union select cno,gcmc,Wtdw,Qyr from  commission_sheet_tg2 c union select cno,gcmc,Wtdw,Qyr from commission_sheet_ys2 d union select cno,gcmc,Wtdw,Qyr from commission_sheet_clt2 e union select cno,gcmc,Wtdw,Qyr from  commission_sheet_jcysls2 )e WHERE e.gcmc like @gcmc ";//按工程名称模糊搜索

                }
                else if (TextBox2.Text != "" && TextBox1.Text != "")
                {
                    query = "select cno,gcmc,Wtdw,Qyr from (SELECT cno,gcmc,Wtdw,Qyr  from commission_sheet_cl a union select cno,gcmc,Wtdw,Qyr  from commission_sheet_sy2 b union select cno,gcmc,Wtdw,Qyr from  commission_sheet_tg2 c union select cno,gcmc,Wtdw,Qyr from commission_sheet_ys2 d union select cno,gcmc,Wtdw,Qyr from commission_sheet_clt2 e union select cno,gcmc,Wtdw,Qyr from  commission_sheet_jcysls2 )e WHERE e.gcmc like @gcmc and e.cno = @no"; //按工程名称模糊和任务单编号搜索
                }
                else
                {
                    query = "SELECT cno,gcmc,Wtdw,Qyr  from commission_sheet_cl a union select cno,gcmc,Wtdw,Qyr  from commission_sheet_sy2 b union select cno,gcmc,Wtdw,Qyr  from  commission_sheet_tg2 c union select cno,gcmc,Wtdw,Qyr  from commission_sheet_ys2 d union select cno,gcmc,Wtdw,Qyr from commission_sheet_clt2 e union select cno,gcmc,Wtdw,Qyr from  commission_sheet_jcysls2";
                }
            }
            if (DropDownList1.SelectedItem.Text == "材料部门委托单")
            {

                if (TextBox1.Text != "" && TextBox2.Text == "")//按任务单编号搜索
                {
                    query = "SELECT * from commission_sheet_cl WHERE cno = @no ";

                }
                else if (TextBox2.Text != "" && TextBox1.Text == "")
                {
                    query = "SELECT * from commission_sheet_cl WHERE gcmc like @gcmc ";//按工程名称模糊搜索

                }
                else if (TextBox2.Text != "" && TextBox1.Text != "")
                {
                    query = "SELECT * from commission_sheet_cl WHERE gcmc like @gcmc and cno = @no"; //按工程名称模糊和任务单编号搜索
                }
                else
                {
                    query = "SELECT * from commission_sheet_cl ";
                }
            }
            if (DropDownList1.SelectedItem.Text == "水样委托单")
            {

                if (TextBox1.Text != "" && TextBox2.Text == "")//按任务单编号搜索
                {
                    query = "SELECT * from commission_sheet_sy2 WHERE cno = @no";

                }
                else if (TextBox2.Text != "" && TextBox1.Text == "")
                {
                    query = "SELECT * from commission_sheet_sy2 WHERE gcmc like @gcmc ";//按工程名称模糊搜索

                }
                else if (TextBox2.Text != "" && TextBox1.Text != "")
                {
                    query = "SELECT * from commission_sheet_sy2 WHERE gcmc like @gcmc and cno = @no"; //按工程名称模糊和任务单编号搜索
                }
                else
                {
                    query = "SELECT * from commission_sheet_sy2 ";
                }
            }
            if (DropDownList1.SelectedItem.Text == "岩石委托单")
            {

                if (TextBox1.Text != "" && TextBox2.Text == "")//按任务单编号搜索
                {
                    query = "SELECT * from commission_sheet_ys2 WHERE cno = @no ";

                }
                else if (TextBox2.Text != "" && TextBox1.Text == "")
                {
                    query = "SELECT * from commission_sheet_ys2 WHERE gcmc like @gcmc ";//按工程名称模糊搜索

                }
                else if (TextBox2.Text != "" && TextBox1.Text != "")
                {
                    query = "SELECT * from commission_sheet_ys2 WHERE gcmc like @gcmc and cno = @no"; //按工程名称模糊和任务单编号搜索
                }
                else
                {
                    query = "SELECT * from commission_sheet_ys2 ";
                }
            }
            if (DropDownList1.SelectedItem.Text == "土工委托单")
            {

                if (TextBox1.Text != "" && TextBox2.Text == "")//按任务单编号搜索
                {
                    query = "SELECT * from commission_sheet_tg2 WHERE cno = @no ";

                }
                else if (TextBox2.Text != "" && TextBox1.Text == "")
                {
                    query = "SELECT * from commission_sheet_tg2 WHERE gcmc like @gcmc ";//按工程名称模糊搜索

                }
                else if (TextBox2.Text != "" && TextBox1.Text != "")
                {
                    query = "SELECT * from commission_sheet_tg2 WHERE gcmc like @gcmc and cno = @no"; //按工程名称模糊和任务单编号搜索
                }
                else
                {
                    query = "SELECT * from commission_sheet_tg2 ";
                }
            }
            if (DropDownList1.SelectedItem.Text == "建材用砂砾石委托单")
            {

                if (TextBox1.Text != "" && TextBox2.Text == "")//按任务单编号搜索
                {
                    query = "SELECT * from commission_sheet_jcysls2 WHERE cno = @no ";

                }
                else if (TextBox2.Text != "" && TextBox1.Text == "")
                {
                    query = "SELECT * from commission_sheet_jcysls2 WHERE gcmc like @gcmc ";//按工程名称模糊搜索

                }
                else if (TextBox2.Text != "" && TextBox1.Text != "")
                {
                    query = "SELECT * from commission_sheet_jcysls2 WHERE gcmc like @gcmc and cno = @no"; //按工程名称模糊和任务单编号搜索
                }
                else
                {
                    query = "SELECT * from commission_sheet_jcysls2 ";
                }
            }
            if (DropDownList1.SelectedItem.Text == "粗粒土委托单")
            {


                if (TextBox1.Text != "" && TextBox2.Text == "")//按任务单编号搜索
                {
                    query = "SELECT * from commission_sheet_clt2 WHERE cno = @no ";

                }
                else if (TextBox2.Text != "" && TextBox1.Text == "")
                {
                    query = "SELECT * from commission_sheet_clt2 WHERE gcmc like @gcmc ";//按工程名称模糊搜索

                }
                else if (TextBox2.Text != "" && TextBox1.Text != "")
                {
                    query = "SELECT * from commission_sheet_clt2 WHERE gcmc like @gcmc and cno = @no"; //按工程名称模糊和任务单编号搜索
                }
                else
                {
                    query = "SELECT * from commission_sheet_clt2 ";
                }
            }
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@gcmc", "%" + gcmc + "%");
            command.Parameters.AddWithValue("@no", NO);
            SqlDataReader reader = command.ExecuteReader();
            DataTable dataTable = new DataTable();
            dataTable.Load(reader);
            reader.Close();
            connection.Close();
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
            
            DataBind();
           
        }
     
    }



}