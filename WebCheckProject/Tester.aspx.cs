using Newtonsoft.Json;
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
    public partial class _3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        public string GetDataForHandsontable()
        {
            string NO1 = Request.QueryString["NO"];//获得任务单号
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
                    command.CommandText = "SELECT c.*,r.Rp_no FROM commission_sheet_sy c left join cno_Rp r on c.cno=r.cno  where c.cno=@NO";
                    command.Parameters.AddWithValue("@NO", NO1);
                }
                if (NO1.Contains("YS"))
                {
                    command.CommandText = "SELECT c.*,r.Rp_no FROM commission_sheet_ys c left join cno_Rp r on c.cno=r.cno  where c.cno=@NO";
                    command.Parameters.AddWithValue("@NO", NO1);
                }
                if (NO1.Contains("TG"))
                {
                    command.CommandText = "SELECT c.*,r.Rp_no FROM commission_sheet_tg c left join cno_Rp r on c.cno=r.cno  where c.cno=@NO";
                    command.Parameters.AddWithValue("@NO", NO1);
                }
                    SqlDataReader reader = command.ExecuteReader();
                    DataTable dt = new DataTable();
                    dt.Load(reader);
                    connection.Close();
                    // 将DataTable转换为JSON
                    string json = JsonConvert.SerializeObject(dt, Formatting.Indented);
                    return json;                                    
            }         
        }
    }
}