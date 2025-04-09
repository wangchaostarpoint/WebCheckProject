using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public class Database
    {
        private string connectionString;

        public Database(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public bool Login(string TXTno, string password)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand("SELECT COUNT(*) FROM users WHERE TXTno = @username AND password = @password", connection))
                {
                    command.Parameters.AddWithValue("@username", TXTno);
                    command.Parameters.AddWithValue("@password", password);
                    int result = Convert.ToInt32(command.ExecuteScalar());
                    return result == 1;
                }
            }
        }

        public bool InsertData(string tableName, string condition)
        {
            string query = $"insert into {tableName} values {condition}";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();
                    return rowsAffected > 0;
                }
            }
        }


        public bool DeleteData(string tableName, string condition)
        {
            string query = $"DELETE FROM {tableName} WHERE {condition}";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();
                    return rowsAffected > 0;
                }
            }
        }

        public bool UpdateDate(string table,string list,string condition)
        {
            string query = $"update {table} set {list} WHERE {condition}";
            SqlConnection connection = new SqlConnection(connectionString);
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                connection.Open();
                int rowsAffected = command.ExecuteNonQuery();
                return rowsAffected > 0;
            }
        }

        public bool CheckIfHas(string xnamex,string xname,string tableName)//xnamex是列名，xname是数据，tablename是表名
        {
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                // 检查表中数据是否存在
                string sql = $"SELECT * FROM {tableName} WHERE {xnamex} = '{xname}'";
                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            return true;//存在这一数据
                        }
                        else
                        {
                            return false;//不存在这一数据
                        }
                       
                    }
                    
                }
                connection.Close();
            }
        }
    }
}