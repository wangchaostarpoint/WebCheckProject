<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tester.aspx.cs" Inherits="WebCheckProject._3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/handsontable@latest/dist/handsontable.full.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/handsontable@8.4.0/dist/handsontable.full.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="/Scripts/handsontable.full.js"></script>
    <style>
        body, html {
            height: 100%;
            margin: 0;
        }

        h2 {
            font-family: 宋体;
            text-align: center;
        }

        h4 {
            font-family: 宋体;
            text-align: center;
        }

        #handsontable {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100%;
        }

        .title {
            text-align: center;
        }


        #button {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100%;
        }

        @media print {
            #button {
                display: none; /*button板块中内容将会显示出来进行打印*/
            }

            #PrintContent { /*PrintContent板块中内容将会显示出来进行打印*/
                display: block;
            }
        }
        form{
            margin-top:50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="PrintContent">
            <div class="title">
                <h4>陕  西  省  水  利  电  力  勘  测  设  计  研  究  院  勘  察  分  院</h4>
                <h2>检测检验报告附页</h2>
            </div>

            <asp:Label ID="Label1" runat="server" Text="报告单编号:" Font-Size="Small"></asp:Label>&nbsp;
            
            <br />
            <br />
            <div id="handsontable"></div>
        </div>
        <br />
        <br />
        <div id="button">
            <asp:Button ID="Button2" runat="server" Text="打印" OnClientClick="return print()" />
        </div>

    </form>

    <script type="text/javascript">  

        var handsontableData = <%=GetDataForHandsontable()%>;
        var hot = new Handsontable(document.getElementById('handsontable'), {
            data: Handsontable.helper.createEmptySpreadsheetData(25, 4),
            licenseKey: 'non-commercial-and-evaluation',
            contextMenu: true,//实现菜单栏
            colWidths: [200, 150, 100, 100],
            mergeCells: true,// 合并单元格

        });

        //将检测项目分割成一个一个
        let xm = handsontableData[0].jcxm;
        let arr = xm.split(" ");

        hot.setDataAtCell([
            [0, 0, "检测项目"],
            [0, 1, "标准（设计）要求"],
            [0, 2, "测试值"],
            [0, 3, "符合性"],
        ]);

        for (i = 0; i < arr.length; i++) {
            hot.setDataAtCell([
                [i + 1, 0, arr[i]],
            ]);
        }

        //打印功能
        function printHandsontable() {
            hot.print({
                copyHead: true, // 复制行头/列头
                copyRows: true, // 复制行
                copyCols: true, // 复制列
                title: 'Handsontable Data', // 打印标题
                printRows: 'all', // 打印所有行
                printCols: 'all' // 打印所有列
            });
        }

        // 调用打印函数
        printHandsontable();

    </script>

</body>
</html>
