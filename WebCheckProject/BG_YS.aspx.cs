using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1;
using Microsoft.AspNetCore.Mvc;
using System.Text;
using System.Web.Services;
using System.Web.Script.Serialization;
using System.IO;
using Newtonsoft.Json.Linq;

namespace WebCheckProject
{
    [ApiController]
    [Route("api/[controller]")]
    public class DataController4 : Controller
    {
        [HttpPost]
        public IActionResult ReceiveData([FromBody] string[,] data)
        {
            // 处理接收到的数据
            Console.Write("data:" + data);
            StringBuilder sb = new StringBuilder();
            int rows = data.GetLength(0);
            int cols = data.GetLength(1);
            for (int i = 0; i < rows; i++)
            {
                for (int j = 0; j < cols; j++)
                {
                    sb.Append(data[i, j]);
                    if (j < cols - 1)
                        sb.Append(", ");
                }
                sb.AppendLine();
            }
            Console.Write("dataString" + sb.ToString());
            return Ok(new { message = "Data received", receivedData = sb.ToString() });
        }
    }

    public class DatabaseHelper4
    {
        private string _connectionString;
        public DatabaseHelper4(string connectionString)
        {
            _connectionString = connectionString;
        }
        public string BulkInsert(DataTable dataTable, string destinationTableName)
        {
            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                connection.Open();
                using (SqlBulkCopy bulkCopy = new SqlBulkCopy(connection))
                {
                    bulkCopy.DestinationTableName = destinationTableName;
                    // 可选：映射数据表列到目标表列
                    // bulkCopy.ColumnMappings.Add("SourceColumn", "DestinationColumn");
                    try
                    {
                        bulkCopy.WriteToServer(dataTable);
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine($"Error: {ex.Message}");
                    }
                }
            }
            return "success";
        }
    }

    namespace WebCheckProject
{
        public partial class BG_YS : System.Web.UI.Page
        {
            protected void Page_Load(object sender, EventArgs e)
            {
                if (!IsPostBack)
                {
                    string method = Request.QueryString["method"];
                    if (method == "ReceiveJsonData")
                    {
                        ReceiveJsonData();
                    }
                }
            }
            [WebMethod]
            private void ReceiveJsonData()
            {
                using (StreamReader reader = new StreamReader(Request.InputStream))
                {
                    string json = reader.ReadToEnd();
                    string[][] dataArray = JsonConvert.DeserializeObject<string[][]>(json);
                    string connectionString = "Data Source=localhost;Initial Catalog=test;Integrated Security=SSPI;";

                    DataTable dataTable = new DataTable();
                    //添加列名
                    dataTable.Columns.Add("cno", typeof(string));
                    dataTable.Columns.Add("Gcmc", typeof(string));
                    dataTable.Columns.Add("Gcbh", typeof(string));
                    dataTable.Columns.Add("Wtdw", typeof(string));
                    dataTable.Columns.Add("syr", typeof(string));
                    dataTable.Columns.Add("lxdh", typeof(string));
                    dataTable.Columns.Add("Qyrq", typeof(string));
                    dataTable.Columns.Add("Syrq", typeof(string));
                    dataTable.Columns.Add("Qyr", typeof(string));
                    dataTable.Columns.Add("SNno", typeof(string));
                    dataTable.Columns.Add("YWno", typeof(string));
                    dataTable.Columns.Add("Qtdz", typeof(string));
                    dataTable.Columns.Add("Ypzl", typeof(string));
                    dataTable.Columns.Add("Ypsl", typeof(string));
                    dataTable.Columns.Add("Qtsd", typeof(string));
                    dataTable.Columns.Add("Yxmc", typeof(string));
                    dataTable.Columns.Add("Klfx", typeof(bool));
                    dataTable.Columns.Add("Hsl", typeof(bool));
                    dataTable.Columns.Add("Trmd", typeof(bool));
                    dataTable.Columns.Add("Djmd", typeof(bool));
                    dataTable.Columns.Add("Jmmd", typeof(bool));
                    dataTable.Columns.Add("Bgmd", typeof(bool));
                    dataTable.Columns.Add("Hnl", typeof(bool));
                    dataTable.Columns.Add("Zrxzjss", typeof(bool));
                    dataTable.Columns.Add("Zrxzjsx", typeof(bool));
                    dataTable.Columns.Add("Yjzhl", typeof(bool));
                    dataTable.Columns.Add("Sryhl", typeof(bool));
                    dataTable.Columns.Add("Xdmd", typeof(bool));
                    dataTable.Columns.Add("Ststxs", typeof(bool));
                    dataTable.Columns.Add("Stljpj", typeof(bool));
                    dataTable.Columns.Add("Stphpj", typeof(bool));
                    

                    string[] col9 = { null, null, null, null, null, null, null, null, null };
                    // 将数据填充到 DataTable
                    for (int i = 0; i < dataArray.Length; i++)
                    {
                        var data = col9.Concat(dataArray[i]).ToArray();//将前9列数据补充到数据中
                        dataTable.Rows.Add(data);
                    }
                    // 使用 SqlBulkCopy 进行批量插入
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        connection.Open();
                        using (SqlBulkCopy bulkCopy = new SqlBulkCopy(connection))
                        {
                            bulkCopy.DestinationTableName = "commission_sheet_ys2";
                            try
                            {
                                bulkCopy.WriteToServer(dataTable);
                            }
                            catch (Exception ex)
                            {
                                Console.WriteLine($"Error: {ex.Message}");
                            }
                        }
                    }
                }
            }
        }
        }
}