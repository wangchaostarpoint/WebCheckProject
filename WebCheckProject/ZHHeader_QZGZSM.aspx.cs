﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;
using WebApplication1;
using System.IO;

namespace WebCheckProject
{
    public partial class ZHHeader_QZGZSM : System.Web.UI.Page
    {
        string firstCellValue = " ";
        static string Rp_no = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string NO1 = Request.QueryString["NO"];
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // 创建SQL查询
                connection.Open();
                SqlCommand command = new SqlCommand();
                command.Connection = connection;
                if (NO1.Contains("CL"))
                {
                    command.CommandText = "SELECT c.*,r.Rp_no FROM commission_sheet_cl c left join cno_Rp r on c.cno=r.cno  where c.cno=@NO";
                    command.Parameters.AddWithValue("@NO", NO1);
                }
                if (NO1.Contains("HX"))
                {
                    command.CommandText = "SELECT c.*,r.Rp_no FROM commission_sheet_sy2 c left join cno_Rp r on c.cno=r.cno  where c.cno=@NO";
                    command.Parameters.AddWithValue("@NO", NO1);
                }
                if (NO1.Contains("YS"))
                {
                    command.CommandText = "SELECT c.*,r.Rp_no FROM commission_sheet_ys2 c left join cno_Rp r on c.cno=r.cno  where c.cno=@NO";
                    command.Parameters.AddWithValue("@NO", NO1);
                }
                if (NO1.Contains("TG"))
                {
                    command.CommandText = "SELECT c.*,r.Rp_no FROM commission_sheet_tg2 c left join cno_Rp r on c.cno=r.cno  where c.cno=@NO";
                    command.Parameters.AddWithValue("@NO", NO1);
                }
                if(NO1!=null)
                { 
                SqlDataReader reader = command.ExecuteReader();
                DataTable dataTable = new DataTable();
                dataTable.Load(reader);
                reader.Close();
                connection.Close();
                GridView1.DataSource = dataTable;
                GridView1.DataBind();
                }

            }
        }

        protected void Button2_Click(object sender, EventArgs e)//上传报告单,此时已经生成了报告单号
        {
            if (FileUpload1.HasFile)
            {
                string filename = Path.GetFileName(FileUpload1.FileName);
                string savePath = Server.MapPath("~/Uploads/") + filename;
                FileUpload1.SaveAs(savePath);
                string Rp_no = GridView1.Rows[0].Cells[0].Text;//获取报告单
                string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
                Database connection = new Database(connectionString);
                bool ishas = connection.CheckIfHas("savePath", savePath, "rep_files");
                if(ishas)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "AlertScript", "alert('文件重复上传!');", true);
                }
                else { 
                bool isvalid = connection.InsertData("rep_files", "('" + Rp_no + "','" + savePath + "')");
                if (isvalid)
                {
                     ClientScript.RegisterStartupScript(this.GetType(), "AlertScript", "alert('已上传成功!');", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "AlertScript", "alert('上传失败，请重新上传!');", true);
                }
            }
            }
            else
            {

            }
        }


        protected void Button3_Click(object sender, EventArgs e)//生成报告单编号
        {
            string cno = Request.QueryString["NO"];            //获取任务单号，判断属于哪个部门
            GridViewRow firstRow = GridView1.Rows[0]; // 获取第一行
            string firstCellValue = firstRow.Cells[0].Text; // 获取第一列的值
            if (GridView1.Rows.Count > 0) // 确保至少有一行数据
            {

                if (firstRow.Cells.Count > 0) // 确保至少有一列数据
                {
                    Label1.Text = "已有报告单，不能再更改！";                                           // 现在你可以使用 firstCellValue 变量了
                    if (firstCellValue != null || firstCellValue != "&nbsp;" || firstCellValue != " ")
                        Button3.Enabled = false;
                }
            }

            if (firstCellValue == null || firstCellValue == "&nbsp;" || firstCellValue == " ")
            {

                string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
                SqlConnection objConn = new SqlConnection(connectionString);
                objConn.Open();
                string sql ="";
                string a ="";

                if (cno.Contains("CL"))
                {
                    sql = "SELECT COUNT(*) FROM cno_Rp WHERE Rp_no like '%CL%'";
                    a = "CL";
                }
                else if (cno.Contains("TG"))
                {
                    sql = "SELECT COUNT(*) FROM cno_Rp WHERE Rp_no like '%TG%'";
                    a = "TG";
                }
                else if (cno.Contains("YS"))
                {
                    sql = "SELECT COUNT(*) FROM cno_Rp WHERE Rp_no like '%YS%'";
                    a = "YS";
                }
                else if (cno.Contains("HX"))
                {
                    sql = "SELECT COUNT(*) FROM cno_Rp WHERE Rp_no like '%HX%'";
                    a = "HX";
                }
                else
                { 
                                   
                }
                SqlCommand sqlCom = new SqlCommand(sql, objConn);
                DateTime currentTime = DateTime.Now;
                int year = currentTime.Year;
                int r = Convert.ToInt32(sqlCom.ExecuteScalar());
                string re = r.ToString("D3");
                Rp_no = "CS" + a + year + re;
                Database connection = new Database(connectionString);
                bool success = connection.InsertData("cno_Rp", "('" + cno + "','" + Rp_no + "')");
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
                objConn.Close();
            }
            Button3.Enabled = false;
        }

        protected void Button4_Click(object sender, EventArgs e)  //查看上传的报告单
        {
            //下载查看
            /* string filePath = Server.MapPath("~/Uploads/委托单.pdf"); // 替换为你的文件路径
             if (File.Exists(filePath))
             {
                 Response.ContentType = "application/octet-stream";
                 Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
                 Response.TransmitFile(filePath);
                 Response.End();
             }
             else
             {
                 // 文件不存在的处理逻辑
             }*/
                        
            //浏览器查看
            string StrShiyong = "";
            string Rp ="";
            /*if (Request.QueryString["RPNO"] != "")
            {
                Rp = Request.QueryString["RPNO"];
            }
            else*/
            if (isha()!=null)
            {
                Rp = isha();
            }
            else
            {
                Rp = Request.QueryString["RPNO"];
                Rp = Rp_no;
            }
            SqlConnection conn = new SqlConnection("Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;");
            string sqlstr = "select savePath from rep_files where Rp_no= @NO";
            SqlCommand cmd = new SqlCommand(sqlstr, conn);
            cmd.Parameters.AddWithValue("@NO", Rp);
            conn.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            ///你可以使用StrShiyong赋值了如下
            if (sdr.Read())
            {
                StrShiyong = sdr[0].ToString();
            }
            sdr.Close();
            cmd.Dispose();
            conn.Close();
            string filePath = StrShiyong;
            if (File.Exists(filePath))
            {
                string fileExtension = Path.GetExtension(filePath);
                string contentType = "text/plain"; // 默认文本文件类型

                // 根据文件扩展名设置合适的MIME类型
                switch (fileExtension)
                {
                    case ".pdf":
                        contentType = "application/pdf";
                        break;
                    case ".doc":
                        contentType = "application/msword";
                        break;
                    case ".docx":
                        contentType = "application/vnd.openxmlformats-officedocument.wordprocessingml.document"; // Word 2007+ 文件
                        break;
                    case ".txt":
                        contentType = "text/plain"; // 使用 text/plain 而不是 application/text
                        break;
                    case ".xls":
                        contentType = "application/vnd.ms-excel"; // Excel 97-2003 文件
                        break;
                    case ".xlsx":
                        contentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"; // Excel 2007+ 文件
                        break;
                    case ".jpg":
                    case ".jpeg":
                        contentType = "image/jpeg"; // JPEG 图片
                        break;
                    case ".png":
                        contentType = "image/png"; // PNG 图片
                        break;
                    case ".zip":
                        contentType = "application/zip"; // ZIP 压缩文件
                        break;
                    case ".rar":
                        contentType = "application/x-rar-compressed"; // RAR 压缩文件
                        break;
                    // 其他文件类型...
                    default:
                        contentType = "application/octet-stream"; // 默认二进制流
                        break;
                }
                Response.ContentType = contentType;
                Response.AppendHeader("Content-Disposition", "inline; filename=" + Path.GetFileName(filePath));
                Response.TransmitFile(filePath);
                Response.End();
            }
            else
            {
                // 文件不存在的处理逻辑
            }

        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            DataBind();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string s_url = "ZHHeader_BGD_Table.aspx"; //将任务单单号传参至编辑页面
            Response.Redirect(s_url);
        }

        protected string isha()
        {
            string cno1 = Request.QueryString["NO"];
            SqlConnection conn = new SqlConnection("Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;");
            string sqlstr = "select Rp_no from cno_Rp where cno= @NO";
            SqlCommand cmd = new SqlCommand(sqlstr, conn);
            cmd.Parameters.AddWithValue("@NO", cno1);
            conn.Open();
            string Rpno = cmd.ExecuteScalar().ToString();
            conn.Close();
            return Rpno;
        }
    }
}