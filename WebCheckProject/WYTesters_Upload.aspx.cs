using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;
using WebApplication1;

namespace WebCheckProject
{
    public partial class WYTesters_Upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String userse = Session["USERNAMECD"].ToString();
            Label4.Text = userse;
        }
        static string cno = "";
        protected void Button1_Click(object sender, EventArgs e)//上传委托单
        {

            if (FileUpload1.HasFile)
            {
                string filename = Path.GetFileName(FileUpload1.FileName);
                string savePath = Server.MapPath("~/Uploads/") + filename;
                FileUpload1.SaveAs(savePath);

                string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
                SqlConnection objConn = new SqlConnection(connectionString);
                objConn.Open();
                string sql= "SELECT COUNT(*)+1 FROM com_files where cno like '%WY%'";
                SqlCommand sqlCom = new SqlCommand(sql, objConn);
                DateTime currentTime = DateTime.Now;
                int year = currentTime.Year;
                int r = Convert.ToInt32(sqlCom.ExecuteScalar()) ;
                string re = r.ToString("D3");
                cno = "WYRW"+ year + re;
                string gcmc = TextBox1.Text;
                Database connection = new Database(connectionString);
                bool isvalid = connection.InsertData("com_files", "('" + cno + "','" + savePath + "')");
                if (isvalid)
                {
                    //成功
                    StatusLabel3.Text = "文件上传成功,生成的委托单号为： " + cno;
                }
                else
                {
                    StatusLabel3.Text = "文件上传失败。";
                    //失败
                }
            }
            else
            {
                StatusLabel3.Text = "请先选择一个文件上传。";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)//上传报告单
        {
            if (FileUpload2.HasFile)
            {
                string gcmc  = TextBox1.Text;
                string filename = Path.GetFileName(FileUpload2.FileName);
                string savePath = Server.MapPath("~/Uploads/") + filename;
                FileUpload1.SaveAs(savePath);

                string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
                SqlConnection objConn = new SqlConnection(connectionString);
                objConn.Open();
                string sql = "SELECT COUNT(*)+1 FROM rep_files where Rp_no like '%WY%'";
                SqlCommand sqlCom = new SqlCommand(sql, objConn);
                DateTime currentTime = DateTime.Now;
                int year = currentTime.Year;
                int r = Convert.ToInt32(sqlCom.ExecuteScalar()) ;
                string re = r.ToString("D3");
                string rpno = "CSWY" + year + re;
                DateTime date1 = currentTime;

                Database connection = new Database(connectionString);
                bool isvalid = connection.InsertData("rep_files", "('" + rpno + "','" + savePath +"')");
                bool isvalid2 = connection.InsertData("cno_Rp", "('" + cno + "','" + rpno + "')");
                if (isvalid)
                {
                    //成功

                    StatusLabel2.Text = "文件上传成功,生成的报告单号为： " + rpno;
                }
                else
                {
                    StatusLabel2.Text = "文件上传失败。";
                    //失败
                }
            }
            else
            {
                StatusLabel2.Text = "请先选择一个文件上传。";
            }
        }

       

        protected void Button5_Click(object sender, EventArgs e)
        {
            string gcmc = TextBox1.Text;
        }

        
    }
}