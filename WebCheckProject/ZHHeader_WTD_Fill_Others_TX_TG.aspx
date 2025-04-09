<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZHHeader_WTD_Fill_Others_TX_TG.aspx.cs" Inherits="WebCheckProject.ZHHeader_WTD_Fill_Others_TX_TG" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml"><head runat="server">
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

        table.MsoTableGrid {
            text-align: justify;
            text-justify: inter-ideograph;
            font-family: 'Times New Roman';
            font-size: 10.0000pt;
        }

        table.MsoNormalTable {
            font-family: 'Times New Roman';
            font-size: 10.0000pt;
        }

        .style4 {
            width: 79px;
        }

        .style6 {
            width: 80px;
        }

        .style8 {
            width: 35px;
        }

        .style10 {
            height: 23pt;
        }

        .style11 {
            width: 74.5000pt;
            height: 23pt;
        }

        .style12 {
            width: 39.3500pt;
            height: 23pt;
        }

        .CurledLineMiddle {
            border-right: medium none;
            border-top: medium none;
            font-size: 9pt;
            border-left: medium none;
            border-bottom: #a0a0a0 1px solid;
            background-color: transparent;
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
                display: none;
            }

            #PrintContent { /*内容将会显示出来进行打印*/
                display: block;
            }
        }
                form{
            margin-top:50px;
        }
        .auto-style1 {
            width: 67pt;
        }
        .auto-style2 {
            font-size: 9pt;
            border-bottom: #a0a0a0 1px solid;
            background-color: transparent;
            text-align: center;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="PrintContent">
        <table border="0" cellspacing="0" class="MsoNormalTable">
            <tr style="height: 24.0000pt;">
                <td colspan="6" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    <p class="MsoNormal">
                        <span style="font-family: 宋体; font-size: 10.0000pt; mso-font-kerning: 0.0000pt;">
                            <font face="宋体">工程名称:<asp:TextBox ID="TextBox1" runat="server" CssClass="CurledLineMiddle"></asp:TextBox>
                            </font>
                            <o:p></o:p>
                        </span>
                    </p>
                </td>
                <td nowrap
                    style="width: 74.5000pt; padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center" width="99">
                    <p class="MsoNormal">
                        <span style="font-family: 宋体; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                            <o:p>
                                &nbsp;</o:p></span>
                    </p>
                </td>
    <td colspan="10" nowrap
        style="width: 328.9500pt; padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
        valign="center" width="438">
        <p align="center" class="MsoNormal" style="text-align: center;">
            <b>
                <span style="font-family: 宋体; font-weight: bold; font-size: 16.0000pt; mso-font-kerning: 0.0000pt;">
                    <font face="宋体">陕西省水利电力勘测设计研究院（集团）有限公司</font><o:p></o:p>
                </span>
            </b>
        </p>
    </td>
                <td nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    <p class="MsoNormal">
                        <span style="font-family: 宋体; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                            <o:p>
                                &nbsp;</o:p></span>
                    </p>
                </td>
                <td nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    <p class="MsoNormal">
                        <span style="font-family: 宋体; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                            <o:p>
                                &nbsp;</o:p></span>
                    </p>
                </td>
                <td colspan="9" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center";>
                    <!-- 保持原有内容结构 -->
                    <div style="display: flex; justify-content: space-between; align-items: center; margin-left: 170%; text-align: left;">
                        <p align="right" class="MsoNormal" style="margin: 0;">
                            <span style="font-family: 宋体; font-size: 10.0000pt; mso-font-kerning: 0.0000pt;">
                                <font face="宋体">取样日期：</font><o:p></o:p>
                            </span>
                        </p>
                        <p align="center" class="MsoNormal" style="margin: 0;">
                            <span style="font-family: 宋体; font-size: 10.0000pt; mso-font-kerning: 0.0000pt;">
                                <asp:TextBox 
                                    ID="TextBox6" 
                                    runat="server" 
                                    CssClass="CurledLineMiddle"
                                    style="display: inline-block;">
                                </asp:TextBox>
                            </span>
                        </p>
                    </div>
                </td>
            </tr>
            <tr style="height: 24.7500pt;">
                <td colspan="6" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    <p class="MsoNormal">
                        <span style="font-family: 宋体; font-size: 10.0000pt; mso-font-kerning: 0.0000pt;">
                            <font face="宋体">委托单位:</font><o:p><span
                                style="font-family: 宋体; font-size: 10.0000pt; mso-font-kerning: 0.0000pt;"><font
                                    face="宋体"><asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style2"></asp:TextBox>
                                </font></span>
                            </o:p>
                        </span>
                    </p>
                </td>
                <td nowrap
                    style="width: 74.5000pt; padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center" width="99">
                    <p class="MsoNormal">
                        <b>
                            <span style="font-family: 宋体; font-weight: bold; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                                <o:p>
                                    &nbsp;</o:p></span></b>
                    </p>
                </td>
    <td colspan="10" nowrap
        style="width: 328.9500pt; padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
        valign="center" width="438">
        <p align="center" class="MsoNormal" style="text-align: center;">
            <b style="mso-bidi-font-weight: normal">
                <span style="font-family: 宋体; mso-ansi-font-weight: bold; font-size: 20.0000pt; mso-font-kerning: 0.0000pt;">
                    <font face="宋体">土工试验项目委托单 </font><o:p></o:p>
                </span>
            </b>
        </p>
    </td>
                <td nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    <p class="MsoNormal">
                        <b>
                            <span style="font-family: 宋体; font-weight: bold; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                                <o:p>
                                    &nbsp;</o:p></span></b>
                    </p>
                </td>
                <td nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    <p class="MsoNormal">
                        <b>
                            <span style="font-family: 宋体; font-weight: bold; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                                <o:p>
                                    &nbsp;</o:p></span></b>
                    </p>
                </td>
                <td colspan="9" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center";>
                    <!-- 保持原有内容结构 -->
                    <div style="display: flex; justify-content: space-between; align-items: center; margin-left: 170%; text-align: left;">
                        <p align="right" class="MsoNormal" style="margin: 0;">
                            <span style="font-family: 宋体; font-size: 10.0000pt; mso-font-kerning: 0.0000pt;">
                                <font face="宋体">送样日期：</font><o:p></o:p>
                            </span>
                        </p>
                        <p align="center" class="MsoNormal" style="margin: 0;">
                            <span style="font-family: 宋体; font-size: 10.0000pt; mso-font-kerning: 0.0000pt;">
                                <asp:TextBox 
                                    ID="TextBox7" 
                                    runat="server" 
                                    CssClass="CurledLineMiddle"
                                    style="display: inline-block;">
                                </asp:TextBox>
                            </span>
                        </p>
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="3" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center" class="style10">
                    <p class="MsoNormal">
                        <span style="font-family: 宋体; font-size: 10.0000pt; mso-font-kerning: 0.0000pt;">
                            <font face="宋体">送样人:</font><o:p><span
                                style="font-family: 宋体; font-size: 10.0000pt; mso-font-kerning: 0.0000pt;"><font
                                    face="宋体"><asp:TextBox ID="TextBox3" runat="server" CssClass="CurledLineMiddle"></asp:TextBox>
                                </font></span>
                            </o:p>
                        </span>
                    </p>
                </td>
                <td colspan="3" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center" class="style10">
                    <p class="MsoNormal">
                        <span style="font-family: 宋体; font-size: 10.0000pt; mso-font-kerning: 0.0000pt;">
                            <font face="宋体">联系电话:</font><o:p><span
                                style="font-family: 宋体; font-size: 10.0000pt; mso-font-kerning: 0.0000pt;"><font
                                    face="宋体"><asp:TextBox ID="TextBox4" runat="server" CssClass="CurledLineMiddle"></asp:TextBox>
                                </font></span>
                            </o:p>
                        </span>
                    </p>
                </td>
                <td nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center" class="style10">
                    <p class="MsoNormal">
                        <span style="font-family: 宋体; font-size: 10.0000pt; mso-font-kerning: 0.0000pt;">
                            <font face="宋体">任务单编号:</font><o:p><span
                                style="font-family: 宋体; font-size: 10.0000pt; mso-font-kerning: 0.0000pt;"><font
                                    face="宋体"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                </font></span>
                            </o:p>
                        </span>
                    </p>
                </td>
                <td class="style12" nowrap
                    style="border-style: none; border-color: inherit; border-width: medium; padding: 0.0000pt 5.4000pt; mso-border-left-alt: none; mso-border-right-alt: none; mso-border-top-alt: none; mso-border-bottom-alt: none;"
                    valign="center" width="52">
                    <p class="MsoNormal">
                        <b>
                            <span style="font-family: 宋体; font-weight: bold; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                                <o:p>
                                    &nbsp;</o:p></span></b>
                    </p>
                </td>
                <td class="style10" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    <p class="MsoNormal">
                        <b>
                            <span style="font-family: 宋体; font-weight: bold; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                                <o:p>
                                    &nbsp;</o:p></span></b>
                    </p>
                </td>
                <td class="style10" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    <p class="MsoNormal">
                        <b>
                            <span style="font-family: 宋体; font-weight: bold; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                                <o:p>
                                    &nbsp;</o:p></span></b>
                    </p>
                </td>
                <td class="style10" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    <p class="MsoNormal">
                        <b>
                            <span style="font-family: 宋体; font-weight: bold; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                                <o:p>
                                    &nbsp;</o:p></span></b>
                    </p>
                </td>
                <td class="style10" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    <p class="MsoNormal">
                        <b>
                            <span style="font-family: 宋体; font-weight: bold; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                                <o:p>
                                    &nbsp;</o:p></span></b>
                    </p>
                </td>
                <td class="style10" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    <p class="MsoNormal">
                        <b>
                            <span style="font-family: 宋体; font-weight: bold; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                                <o:p>
                                    &nbsp;</o:p></span></b>
                    </p>
                </td>
                <td class="style10" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    <p class="MsoNormal">
                        <b>
                            <span style="font-family: 宋体; font-weight: bold; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                                <o:p>
                                    &nbsp;</o:p></span></b>
                    </p>
                </td>
                <td class="style10" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    <p class="MsoNormal">
                        <b>
                            <span style="font-family: 宋体; font-weight: bold; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                                <o:p>
                                    &nbsp;</o:p></span></b>
                    </p>
                </td>
                <td class="style10" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    <p class="MsoNormal">
                        <b>
                            <span style="font-family: 宋体; font-weight: bold; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                                <o:p>
                                    &nbsp;</o:p></span></b>
                    </p>
                </td>
                <td class="style10" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    <p class="MsoNormal">
                        <b>
                            <span style="font-family: 宋体; font-weight: bold; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                                <o:p>
                                    &nbsp;</o:p></span></b>
                    </p>
                </td>
                <td class="style10" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    <p class="MsoNormal">
                        <b>
                            <span style="font-family: 宋体; font-weight: bold; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                                <o:p>
                                    &nbsp;</o:p></span></b>
                    </p>
                </td>
                <td class="style10" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    <p class="MsoNormal">
                        <b>
                            <span style="font-family: 宋体; font-weight: bold; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                                <o:p>
                                    &nbsp;</o:p></span></b>
                    </p>
                </td>
                <td colspan="9" nowrap
                    style="padding: 0; border: none; white-space: nowrap;"
                    valign="center" class="style10">
                    <div class="shouyangren" style="display: flex; align-items: center; justify-content: space-between; margin-left: 163%; text-align: left;">
                        <!-- 收样人 -->
                        <span style="font-family: 宋体; font-size: 10pt;">
                            收 样 人：
                        </span>
        
                        <!-- 编号文本框 -->
                        <asp:TextBox 
                            ID="TextBox8" 
                            runat="server" 
                            Text="  "
                            style="border: none; 
                                   outline: none; 
                                   background: transparent; 
                                   font-family: 宋体; 
                                   font-size: 10pt;
                                   flex-grow: 1;">
                        </asp:TextBox>
                    </div>
                </td>
            </tr>
       </table>
            <br />
             <div id="grid"></div>
            <div id="grid1">
                <table border="0" cellspacing="0" class="MsoNormalTable" style="margin-left: 5%; text-align: left;">
                    <tr style="height:19.5000pt;">
                        <td class="auto-style1" nowrap style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; mso-border-left-alt: none; border-right: 0.0000pt solid rgb(0,0,0); mso-border-right-alt: 0.5000pt solid rgb(0,0,0); mso-border-top-alt: none; mso-border-bottom-alt: none; border-left-style: none; border-left-color: inherit; border-left-width: medium; border-top-style: none; border-top-color: inherit; border-top-width: medium; border-bottom-style: none; border-bottom-color: inherit; border-bottom-width: medium;" valign="center">
                            <p align="center" class="MsoNormal">
                                &nbsp;</p>
                        </td>
                        <td nowrap style="width:739.0000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;
mso-border-left-alt:none;border-right:none;mso-border-right-alt:none;
border-top:none;mso-border-top-alt:none;border-bottom:none;
mso-border-bottom-alt:none;" valign="center" width="985">
                            <p class="MsoNormal">
                                &nbsp;</p>
                        </td>
                    </tr>
                    <tr style="height:21.0000pt;">
                        <td class="auto-style1" style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; mso-border-left-alt: none; border-right: 0.0000pt solid rgb(0,0,0); mso-border-right-alt: 0.5000pt solid rgb(0,0,0); mso-border-top-alt: none; mso-border-bottom-alt: none; border-left-style: none; border-left-color: inherit; border-left-width: medium; border-top-style: none; border-top-color: inherit; border-top-width: medium; border-bottom-style: none; border-bottom-color: inherit; border-bottom-width: medium;" valign="center">
                            <p class="MsoNormal">
                                <span style="font-family:宋体;font-size:10.0000pt;mso-font-kerning:0.0000pt;"><o:p>&nbsp;</o:p></span></p>
                        </td>
                        <td nowrap style="width:739.0000pt;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;
mso-border-left-alt:none;border-right:none;mso-border-right-alt:none;
border-top:none;mso-border-top-alt:none;border-bottom:none;
mso-border-bottom-alt:none;" valign="center" width="985">
                            <p class="MsoNormal">
                                &nbsp;</p>
                        </td>
                    </tr>
                </table>
            </div>
            <table>
            <tr style="height: 29.2500pt;">
                <td class="style4" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    <p class="MsoNormal">
                        <span style="font-family: 宋体; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                            <o:p>
                                &nbsp;</o:p></span>
                    </p>
                </td>
                <td colspan="4" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    <p class="MsoNormal">
                        <span style="font-family: 宋体; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                            <font face="宋体">说明:凡要测定项目在表中划“　√　”</font><o:p></o:p></span>
                    </p>
                </td>
                <td nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    <p class="MsoNormal">
                        <span style="font-family: 宋体; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                            <o:p>
                                &nbsp;</o:p></span>
                    </p>
                </td>
                <td colspan="3" nowrap style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    <span style="mso-spacerun: 'yes'; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 'Times New Roman'; font-size: 10.5000pt; mso-font-kerning: 1.0000pt;"><font face="宋体">送样单位主管：</font></span><u><span style="mso-spacerun: 'yes'; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 'Times New Roman'; text-decoration: underline; text-underline: single; font-size: 10.5000pt; mso-font-kerning: 1.0000pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></u><span style="mso-spacerun: 'yes'; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 'Times New Roman'; font-size: 10.5000pt; mso-font-kerning: 1.0000pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
            <td nowrap
                style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                valign="center">
                <p class="MsoNormal">
                    <span style="font-family: 宋体; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                        <o:p>
                            &nbsp;</o:p></span>
                </p>
            </td>
                        <td nowrap
                            style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                            valign="center">
                            <p class="MsoNormal">
                                <span style="font-family: 宋体; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                                    <o:p>
                                        &nbsp;</o:p></span>
                            </p>
                        </td>
                        <td nowrap
                            style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                            valign="center">
                            <p class="MsoNormal">
                                <span style="font-family: 宋体; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                                    <o:p>
                                        &nbsp;</o:p></span>
                            </p>
                        </td>
                        <td nowrap
                            style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                            valign="center">
                            <p class="MsoNormal">
                                <span style="font-family: 宋体; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                                    <o:p>
                                        &nbsp;</o:p></span>
                            </p>
                        </td>
                        <td nowrap
                            style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                            valign="center">
                            <p class="MsoNormal">
                                <span style="font-family: 宋体; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                                    <o:p>
                                        &nbsp;</o:p></span>
                            </p>
                        </td>
                        <td nowrap
                            style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                            valign="center">
                            <p class="MsoNormal">
                                <span style="font-family: 宋体; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                                    <o:p>
                                        &nbsp;</o:p></span>
                            </p>
                        </td>
                        <td nowrap
                            style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                            valign="center">
                            <p class="MsoNormal">
                                <span style="font-family: 宋体; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                                    <o:p>
                                        &nbsp;</o:p></span>
                            </p>
                        </td>
                        <td colspan="3" nowrap style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                            valign="center">
                            <p class="MsoNormal">
                                <span style="font-family: 宋体; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                                    <font face="宋体">审查签名：</font></span><u><span style="mso-spacerun: 'yes'; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 'Times New Roman'; text-decoration: underline; text-underline: single; font-size: 10.5000pt; mso-font-kerning: 1.0000pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></u>
                        </td>
                        <td nowrap
                            style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                            valign="center">&nbsp;</td>
                        <td nowrap
                            style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                            valign="center">&nbsp;</td>
                        <td nowrap
                            style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                            valign="center">&nbsp;</td>
                        <td nowrap
                            style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                            valign="center">
                            <p class="MsoNormal">
                                <span style="font-family: 宋体; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                                    <o:p>
                                        &nbsp;</o:p></span>
                            </p>
                        </td>
                        <td nowrap
                            style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                            valign="center">
                            <p class="MsoNormal">
                                <span style="font-family: 宋体; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                                    <o:p>
                                        &nbsp;</o:p></span>
                            </p>
                        </td>
                        <td nowrap
                            style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                            valign="center">
                            <p class="MsoNormal">
                                <span style="font-family: 宋体; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                                    <o:p>
                                        &nbsp;</o:p></span>
                            </p>
                        </td>
                        <td nowrap
                            style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                            valign="center">
                            <p class="MsoNormal">
                                <span style="font-family: 宋体; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                                    <o:p>
                                        &nbsp;</o:p></span>
                            </p>
                        </td>
                        <td nowrap
                            style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                            valign="center">
                            <p class="MsoNormal">
                                <span style="font-family: 宋体; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                                    <o:p>
                                        &nbsp;</o:p></span>
                            </p>
                        </td>
                        <td nowrap
                            style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                            valign="center">
                            <p class="MsoNormal">
                                <span style="font-family: 宋体; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                                    <o:p></o:p>
                                </span>
                            </p>
                        </td>
            </tr>
        </table>
</div>
        <div id="button">
            <%--<button type="submit" id="submitButton" onclick="sendData()">提交</button>&nbsp;--%>
            <button type="submit" id="submitButton" >提交</button>&nbsp;
        </div>
    </form>

    <script type="text/javascript">  
        let data = [
            ['', '', '', '', '', '', false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false,false, false, false, false]
        ]
        var hot = new Handsontable(document.getElementById("grid"), {
            data: data,
            minSpareRows: 0,   // 指定下边余白即表格最少行数  
            manualColumnResize: true,
            colHeaders: true,//显示表头
            licenseKey: 'non-commercial-and-evaluation',
            rowHeaders: false,//不显示列头
            manualColumnResize: true,
            contextMenu: true,
            hiddenColumns: { // 启用列隐藏插件，并设置默认隐藏的列（可选）
                columns: [/* ... 要隐藏的列的索引数组 ... */]
            },
            width: '2000',
            colWidths: '50',
            height: '500',
            readOnly: false,//关闭表格只读模式
            outsideClickDeselects: false,
            rowHeights: 28,
            columnHeaderHeight: 32,
            className: 'htMiddle htCenter',
            nestedHeaders: [
                //第一行表头
                [{ label: '样品编号', colspan: 2 }, '岩性', '样品种类', '样品数量', '取土深度（m）', { label: "要求试验项目", colspan: 22 }],
                //第二行表头
                ['', '', '', '', '', '', '比重', '含水率', '湿容重', '干容重', '塑性指数', '颗粒分析', '易容盐含量', '有机质含量', '酸碱度', '土的腐蚀性',
                    {
                        label: "抗剪强度",
                        colspan: 4
                    }, {
                        label: "压缩试验",
                        colspan: 3
                    }, {
                        label: "渗透",
                        colspan: 2
                    },
                    '击实试验',
                    {
                        label: "开土记录",
                        colspan: 2
                    },],
                //第三行表头
                ['室内', '野外', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '快剪', '饱和快剪', '固结快剪', '饱和固结快剪', '粘性土', { label: '湿陷', colspan: 2 },
                    '水平', '垂直', '', '状态描述', '开土人'],
                //第四行表头
                ['', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '单线法', '双线法', '', '', '', '', ''],
            ],
            columns: [
                { type: 'text', readOnly: false },
                { type: 'text', readOnly: false },
                { type: 'text', readOnly: false },
                { type: 'text', readOnly: false },
                
                { type: 'text', readOnly: false },
                { type: 'numeric', readOnly: false },
                {
                    type: 'checkbox', checkbox: {
                        // 初始值设置
                        trueValue: 'Yes', // 当checkbox选中时的值
                        falseValue: 'No'  // 当checkbox未选中时的值
                    }, readOnly: false
                },
                {
                    type: 'checkbox', checkbox: {
                        // 初始值设置
                        trueValue: 'Yes', // 当checkbox选中时的值
                        falseValue: 'No'  // 当checkbox未选中时的值
                    }, readOnly: false
                },
                {
                    type: 'checkbox', checkbox: {
                        // 初始值设置
                        trueValue: 'Yes', // 当checkbox选中时的值
                        falseValue: 'No'  // 当checkbox未选中时的值
                    }, readOnly: false
                },
                {
                    type: 'checkbox', checkbox: {
                        // 初始值设置
                        trueValue: 'Yes', // 当checkbox选中时的值
                        falseValue: 'No'  // 当checkbox未选中时的值
                    }, readOnly: false
                },
                {
                    type: 'checkbox', checkbox: {
                        // 初始值设置
                        trueValue: 'Yes', // 当checkbox选中时的值
                        falseValue: 'No'  // 当checkbox未选中时的值
                    }, readOnly: false
                },
                {
                    type: 'checkbox', checkbox: {
                        // 初始值设置
                        trueValue: 'Yes', // 当checkbox选中时的值
                        falseValue: 'No'  // 当checkbox未选中时的值
                    }, readOnly: false
                },
                {
                    type: 'checkbox', checkbox: {
                        // 初始值设置
                        trueValue: 'Yes', // 当checkbox选中时的值
                        falseValue: 'No'  // 当checkbox未选中时的值
                    }, readOnly: false
                },
                {
                    type: 'checkbox', checkbox: {
                        // 初始值设置
                        trueValue: 'Yes', // 当checkbox选中时的值
                        falseValue: 'No'  // 当checkbox未选中时的值
                    }, readOnly: false
                },
                {
                    type: 'checkbox', checkbox: {
                        // 初始值设置
                        trueValue: 'Yes', // 当checkbox选中时的值
                        falseValue: 'No'  // 当checkbox未选中时的值
                    }, readOnly: false
                },
                {
                    type: 'checkbox', checkbox: {
                        // 初始值设置
                        trueValue: 'Yes', // 当checkbox选中时的值
                        falseValue: 'No'  // 当checkbox未选中时的值
                    }, readOnly: false
                },
                {
                    type: 'checkbox', checkbox: {
                        // 初始值设置
                        trueValue: 'Yes', // 当checkbox选中时的值
                        falseValue: 'No'  // 当checkbox未选中时的值
                    }, readOnly: false
                },
                {
                    type: 'checkbox', checkbox: {
                        // 初始值设置
                        trueValue: 'Yes', // 当checkbox选中时的值
                        falseValue: 'No'  // 当checkbox未选中时的值
                    }, readOnly: false
                },
                {
                    type: 'checkbox', checkbox: {
                        // 初始值设置
                        trueValue: 'Yes', // 当checkbox选中时的值
                        falseValue: 'No'  // 当checkbox未选中时的值
                    }, readOnly: false
                },
                {
                    type: 'checkbox', checkbox: {
                        // 初始值设置
                        trueValue: 'Yes', // 当checkbox选中时的值
                        falseValue: 'No'  // 当checkbox未选中时的值
                    }, readOnly: false
                },
                {
                    type: 'checkbox', checkbox: {
                        // 初始值设置
                        trueValue: 'Yes', // 当checkbox选中时的值
                        falseValue: 'No'  // 当checkbox未选中时的值
                    }, readOnly: false
                },
                {
                    type: 'checkbox', checkbox: {
                        // 初始值设置
                        trueValue: 'Yes', // 当checkbox选中时的值
                        falseValue: 'No'  // 当checkbox未选中时的值
                    }, readOnly: false
                },
                {
                    type: 'checkbox', checkbox: {
                        // 初始值设置
                        trueValue: 'Yes', // 当checkbox选中时的值
                        falseValue: 'No'  // 当checkbox未选中时的值
                    }, readOnly: false
                },
                {
                    type: 'checkbox', checkbox: {
                        // 初始值设置
                        trueValue: 'Yes', // 当checkbox选中时的值
                        falseValue: 'No'  // 当checkbox未选中时的值
                    }, readOnly: false
                },
                {
                    type: 'checkbox', checkbox: {
                        // 初始值设置
                        trueValue: 'Yes', // 当checkbox选中时的值
                        falseValue: 'No'  // 当checkbox未选中时的值
                    }, readOnly: false
                },
                {
                    type: 'checkbox', checkbox: {
                        // 初始值设置
                        trueValue: 'Yes', // 当checkbox选中时的值
                        falseValue: 'No'  // 当checkbox未选中时的值
                    }, readOnly: false
                },
                {
                    type: 'checkbox', checkbox: {
                        // 初始值设置
                        trueValue: 'Yes', // 当checkbox选中时的值
                        falseValue: 'No'  // 当checkbox未选中时的值
                    }, readOnly: false
                },
                {
                    type: 'checkbox', checkbox: {
                        // 初始值设置
                        trueValue: 'Yes', // 当checkbox选中时的值
                        falseValue: 'No'  // 当checkbox未选中时的值
                    }, readOnly: false
                }

                //{
                // type: 'numeric',
                // validator: function (value, callback) {
                //  if (value < 0) {
                //  callback(new Error('数值必须大于或等于0'));
                // } else {
                //  callback();
                //}
                // }
                // }
                // ... 对其他列进行类似配置
            ],
            //表头合并形成二级及三级表头
            afterGetColHeader: function (col, th) {
                setTimeout(() => {
                    const theads = th.parentNode.parentNode // 获取当前表头的thead对象
                    const trs = theads.getElementsByTagName('tr') // 获取所有行
                    const trCols1 = trs[0].getElementsByTagName('th') // 获取第一行所有列
                    const trCols2 = trs[1].getElementsByTagName('th') // 获取第二行所有列
                    const trCols3 = trs[2].getElementsByTagName('th') // 获取第三行所有列
                    const trCols4 = trs[3].getElementsByTagName('th') // 获取第四行所有列
                    //表格文字统一设置垂直居中对齐
                    for (let i = 0; i <= 27; i++) {
                        trCols1[i].style.verticalAlign = 'middle';
                        trCols2[i].style.verticalAlign = 'middle';
                        trCols3[i].style.verticalAlign = 'middle';
                        trCols4[i].style.verticalAlign = 'middle';
                    }

                    for (let i = 0; i <= 1; i++) {
                        trCols2[i].style.borderBottom = 'none';
                        trCols3[i].style.borderBottom = 'none';
                    }



                    // 合并第一、二列“样品编号”的第2-4行
                    for (let i = 2; i <= 5; i++) {
                        trCols1[i].rowSpan = 4;
                        trCols1[i].style.verticalAlign = 'middle';
                        // 关键修复：清除被合并的第二、三、四行单元格
                        trCols2[i].style.display = 'none';
                        trCols3[i].style.display = 'none'; // 隐藏而非删除，避免影响后续索引
                        trCols4[i].style.display = 'none';
                        trCols1[i].style.borderBottom = 'none';
                    }

                    //合并第7-16列 2-4行
                    for (let i = 6; i <= 15; i++) {
                        trCols2[i].rowSpan = 3;
                        trCols2[i].style.verticalAlign = 'middle';
                        // 关键修复：清除被合并的第三、四行单元格
                        trCols3[i].style.display = 'none'; // 隐藏而非删除，避免影响后续索引
                        trCols4[i].style.display = 'none';
                        trCols2[i].style.borderBottom = 'none';
                    }

                    //合并第17-28列 3-4行,排除第22-23列
                    for (let i = 16; i <= 27; i++) {
                        if (i === 21 || i === 22 || i=== 25) {
                            continue;
                        }
                        trCols3[i].rowSpan = 2;
                        trCols3[i].style.verticalAlign = 'middle';
                        // 关键修复：清除被合并的第四行单元格
                        trCols4[i].style.display = 'none';
                        trCols3[i].style.borderBottom = 'none';
                    }
                    //单独合并第26列
                    trCols2[25].rowSpan = 3;
                    trCols2[25].style.verticalAlign = 'middle';
                    trCols3[25].style.display = 'none'; // 隐藏而非删除，避免影响后续索引
                    trCols4[25].style.display = 'none';
                    trCols2[25].style.borderBottom = 'none';

                }, 100)
            },
        });

        // 重构 sendData 函数
        function sendData() {
            console.log("sendData()");
            var submittedData = hot.getData().filter(row => row[0] || row[1]); // 过滤空行
            var gcmc = document.getElementById('TextBox1').value;
            var Gcbh = document.getElementById('TextBox2').value;
            var Wtdw = document.getElementById('TextBox2').value;
            var syr = document.getElementById('TextBox3').value;
            var lxdh = document.getElementById('TextBox4').value;
            var Qyrq = document.getElementById('TextBox6').value;
            var Syrq = document.getElementById('TextBox7').value;
            var Qyr = document.getElementById('TextBox8').value;
            var sno = document.getElementById('Label1').innerText;

            var xhr = new XMLHttpRequest();
            xhr.open("POST", "ZHHeader_WTD_Fill_Others_TX_TG.aspx?method=ReceiveJsonData", true);
            xhr.setRequestHeader("Content-Type", "application/json; charset=utf-8");
            xhr.onreadystatechange = function () {
                if (xhr.readyState === 4) {
                    if (xhr.status === 200) {
                        try {
                            var response = JSON.parse(xhr.responseText);
                            if (response.success) {
                                window.alert("提交成功！");
                                window.location.href = 'ZHHeader_WTD.aspx';
                            } else {
                                var msg = "重复数据:\n" + response.duplicates.join("\n");
                                window.alert(msg);
                                // 高亮重复行
                                submittedData.forEach((row, rowIndex) => {
                                    response.duplicates.forEach(dup => {
                                        if (row[0] === dup.SNno) {
                                            hot.setCellMeta(rowIndex, 0, 'className', 'highlight-red');
                                            hot.render();
                                        }
                                    });
                                });
                            }
                        } catch (e) {
                            console.error("解析响应失败:", e);
                            alert("处理响应时发生错误。");
                        }
                    } else {
                        alert("请求失败，状态码: " + xhr.status);
                    }
                }
            };
            var data = {
                submittedData: submittedData,
                gcmc: gcmc,
                Gcbh: Gcbh,
                Wtdw: Wtdw,
                syr: syr,
                lxdh: lxdh,
                Qyrq: Qyrq,
                Syrq: Syrq,
                Qyr: Qyr,
                sno: sno
            };
            xhr.send(JSON.stringify(data));
        }

        // 仅保留一个事件监听器
        document.getElementById('submitButton').addEventListener('click', function (event) {
            event.preventDefault();
            sendData();
        });
    </script>

</body>
</html>
