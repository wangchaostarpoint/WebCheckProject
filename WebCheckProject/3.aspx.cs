using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Xceed.Document.NET;
using Xceed.Words.NET;

namespace WebCheckProject
{
    public partial class _31 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void ExportToWord()
        {
            // 创建一个新的Word文档
            using (var document = DocX.Create("example.docx"))
            {
                // 添加标题
                document.InsertParagraph("数据导出示例").FontSize(20).Alignment = Alignment.center;

                // 添加一个表格
                var table = document.AddTable(2, 2); // 2行2列的表格
                table.Design = TableDesign.ColorfulGrid;

                // 填充数据到表格
                table.Rows[0].Cells[0].Paragraphs[0].Append("列1");
                table.Rows[0].Cells[1].Paragraphs[0].Append("列2");
                table.Rows[1].Cells[0].Paragraphs[0].Append("数据1");
                table.Rows[1].Cells[1].Paragraphs[0].Append("数据2");

                // 保存文档到服务器的文件系统
                document.Save();
            }

            // 将文档发送到客户端进行下载
            string filename = "example.docx";
            FileInfo fileInfo = new FileInfo(filename);
            Response.Clear();
            Response.ClearContent();
            Response.ClearHeaders();
            Response.AddHeader("Content-Disposition", "attachment; filename=" + filename);
            Response.AddHeader("Content-Length", fileInfo.Length.ToString());
            Response.ContentType = "application/octet-stream";
            Response.WriteFile(fileInfo.FullName);
            Response.Flush();
            System.IO.File.Delete(filename); // 删除服务器上的文件
            Response.End();
        }
    }
}