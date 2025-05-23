﻿using Newtonsoft.Json;
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
    public partial class ZHHeader_WTD_Fill_Others_TX_JCYSLS : System.Web.UI.Page
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
            else
            {
                string NO1 = Request.QueryString["NO"];
                DB dB = new DB();
                DateTime rq = DateTime.Today;
                //dB.task_custom(NO1, rq,"已派发","陈震亚", "");
                //人名写错了
                dB.task_custom(NO1, rq, "已派发", "特殊人员", "");

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

                // 新增主键重复校验逻辑
                List<string> duplicates = new List<string>();
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    foreach (var row in dataArray)
                    {

                        string sn = row[0]; // 室内编号在第一个位置

                        string checkSql = @"SELECT COUNT(*) FROM commission_sheet_jcysls2 WHERE  SNno = @SNno";
                        using (SqlCommand cmd = new SqlCommand(checkSql, conn))
                        {
                            cmd.Parameters.AddWithValue("@SNno", sn);
                            if ((int)cmd.ExecuteScalar() > 0)
                            {
                                duplicates.Add($" 室内：{sn}");
                            }
                        }
                    }
                    conn.Close();
                }

                if (duplicates.Count > 0)
                {
                    Context.Response.ContentType = "application/json";
                    Context.Response.Write(JsonConvert.SerializeObject(new
                    {
                        success = false,
                        message = "发现重复数据",
                        duplicates = duplicates
                    }));
                    Context.Response.End();
                    return;
                }

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
                dataTable.Columns.Add("Snno", typeof(string));
                dataTable.Columns.Add("Ywno", typeof(string));
                dataTable.Columns.Add("Qtdz", typeof(string));
                dataTable.Columns.Add("Ypsl", typeof(string));
                dataTable.Columns.Add("Qysd", typeof(string));
                dataTable.Columns.Add("Skf", typeof(string));
                dataTable.Columns.Add("Sbgmd", typeof(string));
                dataTable.Columns.Add("Sdjmd", typeof(bool));
                dataTable.Columns.Add("Skxl", typeof(bool));
                dataTable.Columns.Add("Sxsl", typeof(bool));
                dataTable.Columns.Add("Shnl", typeof(bool));
                dataTable.Columns.Add("Sntkhl", typeof(bool));
                dataTable.Columns.Add("Symhl", typeof(bool));
                dataTable.Columns.Add("Sqwzhl", typeof(bool));
                dataTable.Columns.Add("Syjz", typeof(bool));
                dataTable.Columns.Add("Ssryhl", typeof(bool));
                dataTable.Columns.Add("Slhw", typeof(bool));
                dataTable.Columns.Add("Sjgx", typeof(bool));
                dataTable.Columns.Add("Lkf", typeof(bool));
                dataTable.Columns.Add("Lbgmd", typeof(bool));
                dataTable.Columns.Add("Lbjmd", typeof(bool));
                dataTable.Columns.Add("Lkxl", typeof(bool));
                dataTable.Columns.Add("Lxsl", typeof(bool));
                dataTable.Columns.Add("Lhnl", typeof(bool));
                dataTable.Columns.Add("Lntkhl", typeof(bool));
                dataTable.Columns.Add("Lzpzhl", typeof(bool));
                dataTable.Columns.Add("LRrklhl", typeof(bool));
                dataTable.Columns.Add("Lqwzhl", typeof(bool));
                dataTable.Columns.Add("Lyjz", typeof(bool));
                dataTable.Columns.Add("Llhw", typeof(bool));
                dataTable.Columns.Add("Ljgx", typeof(bool));
                dataTable.Columns.Add("Lyszs", typeof(bool));
                dataTable.Columns.Add("yuliu", typeof(string));//方便辨识

                string[] col9 = { NO1, gcmc, Gcbh, Wtdw, syr, lxdh, Qyrq, Syrq, Qyr };
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
                        bulkCopy.DestinationTableName = "commission_sheet_jcysls2";
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
                dB.task_custom(NO1, rq, "已派发", "特殊人员", "");//如果插入成功，a是true
                dB.task_ry(NO1, " ");

                Context.Response.ContentType = "application/json";
                Context.Response.Write(JsonConvert.SerializeObject(new { success = true }));
                Context.Response.End();

            }

        }
    }
}
