using System.Data;
using System.Data.SqlClient;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using WebApplication1;


namespace WebCheckProject
{
    public partial class _2 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        public string GetDataForHandsontable()
        {    
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            string query = "SELECT r.* ,c.jcxm FROM report_list_1 r left join commission_sheet_cl c on r.cno=c.cno where r.cno='CLRW2024001'";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    DataTable dt = new DataTable();
                    dt.Load(reader);
                    // 将DataTable转换为JSON
                    string json = JsonConvert.SerializeObject(dt, Formatting.Indented);
                    return json;
                    //Response.Write(json);
                }
            }
        }

    }
}