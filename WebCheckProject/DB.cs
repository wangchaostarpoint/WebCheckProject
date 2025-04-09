using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;

namespace WebCheckProject
{

    public class DB
    {
        private string connectionString;
        public DB()
        {
            connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
        }
        public DataTable GetDataTable(string query)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        adapter.Fill(dt);
                        return dt;
                    }
                }
            }
        }
        public bool task_custom_check(string cno, string lqr, string tester)//将信息从后台发送给task_custom表
        {
            string cno1 = cno;
            string lqr1 = lqr;
            string tester1 = tester;
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            string query = "SELECT COUNT(*) FROM task_custom WHERE cno = @cno";
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                int rowsAffected = command.ExecuteNonQuery();
                connection.Close();
                if (rowsAffected > 0)
                { return true; }
                else { return false; }
            }

        }

        public void task_custom(string cno, DateTime ffrq, string rwdzt, string lqr, string tester)//将信息从后台发送给task_custom表
        {
            string cno1 = cno;
            DateTime ffrq1 = ffrq;
            string rwdzt1 = rwdzt;
            string lqr1 = lqr;
            string tester1 = tester;
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            string query1 = "INSERT INTO task_custom(cno, ffrq,rwdzt,lqr, tester) VALUES(@cno,@ffrq,@rwdzt,@lqr, @tester)";
            using (SqlCommand command2 = new SqlCommand(query1, connection))
            {
                // 注意：这里我添加了using语句来确保SqlCommand被正确释放
                // 添加参数，注意参数名和SQL查询中的参数名必须匹配
                command2.Parameters.AddWithValue("@cno", cno1); // 确保cno1是已定义的变量或值
                command2.Parameters.AddWithValue("@ffrq", ffrq1); // 确保cno1是已定义的变量或值
                command2.Parameters.AddWithValue("@rwdzt", rwdzt1); // 确保cno1是已定义的变量或值
                command2.Parameters.AddWithValue("@lqr", lqr1); // 确保lqr1是已定义的变量或值
                command2.Parameters.AddWithValue("@tester", tester1); // 确保tester1是已定义的变量或值

                // 打开数据库连接（如果尚未打开）
                if (connection.State != ConnectionState.Open)
                {
                    connection.Open();
                }

                // 执行INSERT操作，ExecuteNonQuery()返回受影响的行数
                int rowsAffected2 = command2.ExecuteNonQuery();

                // 可以在这里检查rowsAffected来确认是否成功插入了行
                // 例如：if (rowsAffected > 0) { /* 插入成功 */ }

                // 注意：通常不需要关闭connection，因为如果在using块外部创建的，它会在外部被管理
                // 但如果在这里创建了connection，则应该在using块内创建它，以便自动关闭和释放
            }

            connection.Close();


        }

        public void task_ry(string cno,string lqrd)//将信息从后台发送给task_ry表
        {
            string cno1 = cno;
            string lqrd1 = lqrd;
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            string query1 = "INSERT INTO task_ry(cno,lqrd) VALUES(@cno,@lqrd)";
            using (SqlCommand command2 = new SqlCommand(query1, connection))
            {
                // 注意：这里我添加了using语句来确保SqlCommand被正确释放
                // 添加参数，注意参数名和SQL查询中的参数名必须匹配
                command2.Parameters.AddWithValue("@cno", cno1); // 确保cno1是已定义的变量或值
                command2.Parameters.AddWithValue("@lqrd", lqrd1);
                // 打开数据库连接（如果尚未打开）
                if (connection.State != ConnectionState.Open)
                {
                    connection.Open();
                }
                int rowsAffected2 = command2.ExecuteNonQuery();
            }

            connection.Close();

        }

        public void task_bgcs(string cno, string ym)//将信息从后台发送给task_bgcs表
        {
            string cno1 = cno;
            string lqrd1 = ym;
            string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            string query1 = "INSERT INTO task_bgcs(cno,ym) VALUES(@cno,@ym)";
            using (SqlCommand command2 = new SqlCommand(query1, connection))
            {
                // 注意：这里我添加了using语句来确保SqlCommand被正确释放
                // 添加参数，注意参数名和SQL查询中的参数名必须匹配
                command2.Parameters.AddWithValue("@cno", cno1); // 确保cno1是已定义的变量或值
                command2.Parameters.AddWithValue("@ym", ym);
                // 打开数据库连接（如果尚未打开）
                if (connection.State != ConnectionState.Open)
                {
                    connection.Open();
                }
                int rowsAffected2 = command2.ExecuteNonQuery();
            }

            connection.Close();

        }
    }
}
   
