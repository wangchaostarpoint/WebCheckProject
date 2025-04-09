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
    
    public partial class ZHHeader_WTD_Fill_Others_TX_YS : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                
                string NO1 = Request.QueryString["NO"]; //获取前端传来的任务单编号
                Label1.Text = NO1;
                string method = Request.QueryString["method"];
                if (method == "ReceiveJsonData")
                {
                    ReceiveJsonData();
                }
                
            }
        }

        
        public class tx
        {
            public string gcmc { get; set; }
            public string Gcbh { get; set; }
            public string Wtdw { get; set; }
            public string syr { get; set; }
            public string lxdh { get; set; }
            public string Qyrq { get; set; }
            public string Syrq { get; set; }
            public string Qyr { get; set; }
            public string sno { get; set; }

            public string[][] submittedData { get; set; }
        }
        [WebMethod]
        private void ReceiveJsonData()//将数据用datatable批量插入数据库，保证数据提交后不会因为单条数据通过验证而写进数据库
        {
            using (StreamReader reader = new StreamReader(Request.InputStream))
            {
                string json = reader.ReadToEnd();
                tx tx1 = JsonConvert.DeserializeObject<tx>(json);
                string[][] dataArray = tx1.submittedData;
                string gcmc = tx1.gcmc;
                string Gcbh = tx1.Gcbh;
                string Wtdw = tx1.Wtdw;
                string syr = tx1.syr;
                string lxdh = tx1.lxdh;
                string Qyrq = tx1.Qyrq;
                string Syrq = tx1.Syrq;
                string Qyr = tx1.Qyr;
                string NO1 = tx1.sno;
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
                dataTable.Columns.Add("ysmc", typeof(string));
                dataTable.Columns.Add("qywz", typeof(string));
                dataTable.Columns.Add("qysd", typeof(string));
                dataTable.Columns.Add("Fhcd", typeof(string));
                dataTable.Columns.Add("Ypsl", typeof(string));
                dataTable.Columns.Add("Bz", typeof(bool));
                dataTable.Columns.Add("Gmd", typeof(bool));
                dataTable.Columns.Add("Bhmd", typeof(bool));
                dataTable.Columns.Add("Xsl", typeof(bool));
                dataTable.Columns.Add("Bhxsl", typeof(bool));
                dataTable.Columns.Add("Bhxs", typeof(bool));
                dataTable.Columns.Add("Xkxl", typeof(bool));
                dataTable.Columns.Add("Ylcl", typeof(bool));
                dataTable.Columns.Add("Dzkygz", typeof(bool));
                dataTable.Columns.Add("Dzkybh", typeof(bool));
                dataTable.Columns.Add("Dzkyrh", typeof(bool));
                dataTable.Columns.Add("Kddrhbh", typeof(bool));
                dataTable.Columns.Add("Kddr", typeof(bool));
                dataTable.Columns.Add("Kddrss", typeof(bool));
                dataTable.Columns.Add("Dzsy", typeof(bool));
                dataTable.Columns.Add("Dzbx", typeof(bool));
                dataTable.Columns.Add("Dzbs", typeof(bool));
                dataTable.Columns.Add("Zjkjd", typeof(bool));
                dataTable.Columns.Add("Zjkj", typeof(bool));
                dataTable.Columns.Add("Lsylhw", typeof(bool));
                dataTable.Columns.Add("Klqd", typeof(bool));
                dataTable.Columns.Add("dhqd", typeof(bool));

                 string[] col9 = { NO1, gcmc, Gcbh, Wtdw, syr, lxdh, Qyrq, Syrq, Qyr};
                 //string[] col9 = { null, null, null, null, null, null, null, null, null };
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
                    connection.Close();
                }
                DB dB = new DB();
                DateTime rq = DateTime.Today;
                dB.task_custom(NO1,rq,"已派发", "成佳杨", "");//如果插入成功，a是true
                dB.task_ry(NO1," ");
            }

        }
        
    }
}
