<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZHHeader_WTD_Others_YSWL_SC.aspx.cs" Inherits="WebCheckProject.OtherHeaders_WTD_YSWL_SC" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/handsontable@latest/dist/handsontable.full.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/handsontable@8.4.0/dist/handsontable.full.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="/Scripts/handsontable.full.js"></script>
    <style type="text/css">
        p.MsoNormal {
            margin-bottom: .0001pt;
            text-align: justify;
            text-justify: inter-ideograph;
            font-family: Calibri;
            font-size: 10.5000pt;
            margin-left: 0pt;
            margin-right: 0pt;
            margin-top: 0pt;
        }

        table.MsoNormalTable {
            font-family: 'Times New Roman';
            font-size: 10.0000pt;
        }

        .auto-style1 {
            font-family: 宋体;
        }

        #button {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100%;
        }

        @media print {
            #button {
                display: none;
            }

            #PrintContent { /*内容将会显示出来进行打印*/
                display: block;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="PrintContent">
            <div>
                <p align="center" class="MsoNormal" style="text-align: center; line-height: 150%;">
                    <b style="mso-bidi-font-weight: normal"><span style="mso-spacerun: 'yes'; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 'Times New Roman'; line-height: 150%; mso-ansi-font-weight: bold; font-size: 16.0000pt; mso-font-kerning: 1.0000pt;"><font face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 陕西省水利电力勘测设计研究院勘察分院</font></span><span style="mso-spacerun: 'yes'; font-family: Calibri; mso-fareast-font-family: 宋体; mso-bidi-font-family: 'Times New Roman'; line-height: 150%; mso-ansi-font-weight: bold; font-size: 16.0000pt; mso-font-kerning: 1.0000pt;"><o:p></o:p></span></b>
                </p>
                <p align="center" class="MsoNormal" style="text-align: center; line-height: 150%;">
                    <b style="mso-bidi-font-weight: normal"><span style="mso-spacerun: 'yes'; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 'Times New Roman'; line-height: 150%; mso-ansi-font-weight: bold; font-size: 18.0000pt; mso-font-kerning: 1.0000pt;"><font face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 岩石物理力学性质试验委托单</font><o:p></o:p></span></b>
                </p>

                <p class="MsoNormal">
                    <asp:Label ID="Label3" runat="server" Text="工程名称："></asp:Label>
                    <asp:TextBox ID="TextBox8" runat="server" BorderStyle="None"></asp:TextBox>
                    <asp:Label ID="Label10" runat="server" Text="取样日期："></asp:Label>
                    <asp:TextBox ID="TextBox13" runat="server" BorderStyle="None"></asp:TextBox>
                    <br />
                    <br />
                </p>
                <p class="MsoNormal">
                    <asp:Label ID="Label4" runat="server" Text="工程编号："></asp:Label>
                    <asp:TextBox ID="TextBox9" runat="server" BorderStyle="None"></asp:TextBox>
                    <asp:Label ID="Label6" runat="server" Text="送样日期："></asp:Label>
                    <asp:TextBox ID="TextBox11" runat="server" BorderStyle="None"></asp:TextBox>
                    <br />
                    <br />
                </p>
                <p class="MsoNormal">
                    <asp:Label ID="Label5" runat="server" Text="送样单位："></asp:Label>
                    <asp:TextBox ID="TextBox10" runat="server" BorderStyle="None"></asp:TextBox>
                    <asp:Label ID="Label8" runat="server" Text="接收人："></asp:Label>
                    <asp:TextBox ID="TextBox12" runat="server" BorderStyle="None"></asp:TextBox>
                    <br />
                    <br />
                </p>
                <p class="MsoNormal">
                    <asp:Label ID="Label7" runat="server" Text="执行标准："></asp:Label>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />

                </p>

            </div>
            <p class="MsoNormal">
                <asp:Label ID="Label9" runat="server" Text="任务单编号："></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                <br />
            </p>
            <br />

            <div id="handsontable"></div>

            <p class="MsoNormal">
                <span style="mso-spacerun: 'yes'; font-family: Calibri; mso-fareast-font-family: 宋体; mso-bidi-font-family: 'Times New Roman'; font-size: 10.5000pt; mso-font-kerning: 1.0000pt;">
                    <o:p>&nbsp;</o:p></span>
            </p>
            <p class="MsoNormal">
                <span style="mso-spacerun: 'yes'; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 'Times New Roman'; font-size: 10.5000pt; mso-font-kerning: 1.0000pt;"><font face="宋体">说明：</font><font face="Calibri">1.</font><font face="宋体">试验执行标准及测定项目划“√”号。</font><font face="Calibri">2. </font><font face="宋体">“试样含水状态”要求委托单位明确是：干燥或饱和。</font><font face="Calibri">3.</font><font face="宋体">变形及直剪试验要求芯样单块有效长度不小于</font><font face="Calibri">13cm</font><font face="宋体">，直径不小于</font><font face="Calibri">5cm</font></span>
            </p>
            <p class="MsoNormal">
                &nbsp;
            </p>
            <p class="MsoNormal" style="width: 1349px">
                <span style="mso-spacerun: 'yes'; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 'Times New Roman'; font-size: 10.5000pt; mso-font-kerning: 1.0000pt;"><font face="宋体">送样单位主管：</font></span><u><span style="mso-spacerun: 'yes'; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 'Times New Roman'; text-decoration: underline; text-underline: single; font-size: 10.5000pt; mso-font-kerning: 1.0000pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></u><span style="mso-spacerun: 'yes'; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 'Times New Roman'; font-size: 10.5000pt; mso-font-kerning: 1.0000pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="宋体">审查签名：</font></span><u><span style="mso-spacerun: 'yes'; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 'Times New Roman'; text-decoration: underline; text-underline: single; font-size: 10.5000pt; mso-font-kerning: 1.0000pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></u><span style="mso-spacerun: 'yes'; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 'Times New Roman'; font-size: 10.5000pt; mso-font-kerning: 1.0000pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="宋体">送样人签名及联系电话：</font></span><u><span style="mso-spacerun: 'yes'; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 'Times New Roman'; text-decoration: underline; text-underline: single; font-size: 10.5000pt; mso-font-kerning: 1.0000pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<o:p></o:p></span></u>
            </p>
            <p class="MsoNormal">
                <span class="auto-style1">&nbsp; </span><span style="mso-spacerun: 'yes'; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 'Times New Roman'; font-size: 10.5000pt; mso-font-kerning: 1.0000pt;"><font face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </font></span>
            </p>
        </div>
        <div id="button">
            <asp:Button ID="Button1" runat="server" Text="确 认" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="Button2" runat="server" Text="返 回" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" Text="打 印" OnClientClick="return print()" />
        </div>

    </form>

    <script type="text/javascript">  
        var handsontableData = <%=GetDataForHandsontable()%>;
        var count =<%=GetCount()%>;
        var kxdata =<%=Getkxdata()%>;

        var hot = new Handsontable(document.getElementById('handsontable'), {
            data: Handsontable.helper.createEmptySpreadsheetData(4, 25),
            licenseKey: 'non-commercial-and-evaluation',
            contextMenu: true,//实现菜单栏
            mergeCells: true,// 合并单元格
            mergeCells: [
                { row: 0, col: 0, rowspan: 2, colspan: 1 },
                { row: 0, col: 1, rowspan: 2, colspan: 1 },
                { row: 0, col: 2, rowspan: 2, colspan: 1 },
                { row: 0, col: 3, rowspan: 2, colspan: 1 },
                { row: 0, col: 4, rowspan: 2, colspan: 1 },
                { row: 0, col: 5, rowspan: 2, colspan: 1 },
                { row: 0, col: 6, rowspan: 2, colspan: 1 },
            ],
        });

        //将检测项目编号分割成一个一个
        let arr = handsontableData.split(' ');
        //document.write(arr + "\n");

        let ct = count.split(' ');
        let c = ct.map(Number);
        //document.write(c+"\n");

        let b = [];
        for (let i = 0; i < c.length; i++) {
            if (c[i] > 1) {
                b.push(i);
            }
        }
        //document.write(b + "\n");

        let sum = [];
        let a = 0;
        for (let i = 0; i < c.length; i++) {
            a = a + c[i]
            sum.push(a);
        }

        let kx = kxdata.split(' ');

        hot.setDataAtCell([
            [0, 0, "室内编号"],
            [0, 1, "野外编号"],
            [0, 2, "岩石名称"],
            [0, 3, "取样位置"],
            [0, 4, "取样深度（m）"],
            [0, 5, "风化程度"],
            [0, 6, "样品数量"],
        ]);


        /* for (i = 0; i < arr.length; i++) {
               if (arr[i] == "单轴抗压强度") {
                   hot.setDataAtCell([
                       [0, 7 + i, arr[i]],
                       [1, 7 + i, "干燥单轴抗压强度"],
                       [1, 8 + i, "饱和单轴抗压强度"],
                       [1, 9 + i, "软化系数"],
                   ]);
               }
               else if (arr[i] == "冻融") {
                   hot.setDataAtCell([
                       [0, 11 + i, arr[i]],
                       [1, 11 + i, "冻融后饱和单轴抗压强度"],
                       [1, 12 + i, "冻融系数"],
                       [1, 13 + i, "冻融质量损失率"],
                   ]);
               }
               else if (arr[i] == "变形模量") {
                   hot.setDataAtCell([
                       [0, 14 + i, arr[i]],
                       [1, 14 + i, "试样含水状态"],
                       [1, 15 + i, "变形模量"],
                       [1, 16 + i, "泊桑比"],
                   ]);
               }
               else if (arr[i] == "直剪强度") {
                   hot.setDataAtCell([
                       [0, 16 + i, arr[i]],
                       [1, 16 + i, "抗剪断"],
                       [1, 17 + i, "抗剪"],
                   ]);
               }
               else {
                   hot.setDataAtCell([
                       [0, 7 + i, arr[i]],
                   ]);
               }
           }
   */

        //第一行项目名称
        hot.setDataAtCell([
            [0, 7, arr[0]],
        ]);

        for (i = 1; i < arr.length - 1; i++) {
            hot.setDataAtCell([
                [0, 7 + sum[i - 1], arr[i]],
            ]);
        }

        //第二行扩项名称
        for (i = 0; i < kx.length; i++) {
            hot.setDataAtCell([
                [1, 7 + i + b[0], kx[i]],
                //[1, 7 + sum[i - 1], kx[i]],
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
