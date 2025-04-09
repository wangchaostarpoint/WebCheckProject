using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace WebCheckProject
{
    /// <summary>
    /// SearchData 的摘要说明
    /// </summary>
    public class SearchData : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            string searchTerm = context.Request.QueryString["query"];

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = new SqlCommand($"SELECT xmmc FROM commission_attribute_list  where xmmc like @SearchTerm", connection);
                command.Parameters.AddWithValue("@SearchTerm", $"{searchTerm}%");

                using (SqlDataReader reader = command.ExecuteReader())
                {
                    StringBuilder results = new StringBuilder();
                    while (reader.Read())
                    {
                        // 假设您想显示每个结果的第一个列
                        results.AppendLine(reader[0].ToString());
                    }
                    context.Response.ContentType = "text/plain";
                    context.Response.Write(results.ToString());
                }
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}