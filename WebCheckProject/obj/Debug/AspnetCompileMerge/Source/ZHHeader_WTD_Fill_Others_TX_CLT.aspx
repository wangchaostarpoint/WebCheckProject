<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZHHeader_WTD_Fill_Others_TX_CLT.aspx.cs" Inherits="WebCheckProject.ZHHeader_WTD_Fill_Others_TX_CLT" %>

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
                <td colspan="2" nowrap
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
                    <p align="center" class="MsoNormal">
                        <b>
                            <span style="font-family: 宋体; font-weight: bold; font-size: 16.0000pt; mso-font-kerning: 0.0000pt;">
                                <font face="宋体">陕西省水利电力勘测设计研究院（集团）有限公司勘察分院</font><o:p></o:p></span></b>
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
                    <p align="right" class="MsoNormal">
                        <span style="font-family: 宋体; font-size: 10.0000pt; mso-font-kerning: 0.0000pt;">
                            <font face="宋体">取样日期：</font><o:p></o:p></span>
                    </p>
                </td>
                <td nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    <p align="center" class="MsoNormal">
                        <span style="font-family: 宋体; font-size: 10.0000pt; mso-font-kerning: 0.0000pt;">
                            <span style="font-family: 宋体; mso-spacerun: 'yes';">&nbsp;<span
                                style="font-family: 宋体; font-size: 10.0000pt; mso-font-kerning: 0.0000pt;"><font
                                    face="宋体"><asp:TextBox ID="TextBox6" runat="server" CssClass="CurledLineMiddle"></asp:TextBox>
                                </font></span>&nbsp;</span></span>
                    </p>
                </td>
            </tr>
            <tr style="height: 24.7500pt;">
                <td colspan="2" nowrap
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
                    <p align="center" class="MsoNormal">
                        <b style="mso-bidi-font-weight: normal">
                            <span style="font-family: 宋体; mso-ansi-font-weight: bold; font-size: 20.0000pt; mso-font-kerning: 0.0000pt;">
                                <span style="font-family: 宋体; mso-spacerun: 'yes';">&nbsp;&nbsp;<span
                                    style="font-family: 宋体; font-size: 10.0000pt; mso-font-kerning: 0.0000pt;"><font
                                        face="宋体"> </font></span></span><font face="宋体">&nbsp; 粗粒土试验项目委托单</font><o:p></o:p></span></b>
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
                <td nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    <p align="right" class="MsoNormal">
                        <span style="font-family: 宋体; font-size: 10.0000pt; mso-font-kerning: 0.0000pt;">
                            <font face="宋体">送样日期：</font><o:p></o:p></span>
                    </p>
                </td>
                <td nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    <p align="center" class="MsoNormal">
                        <span style="font-family: 宋体; font-size: 10.0000pt; mso-font-kerning: 0.0000pt;">
                            <span style="font-family: 宋体; mso-spacerun: 'yes';">&nbsp;<span
                                style="font-family: 宋体; font-size: 10.0000pt; mso-font-kerning: 0.0000pt;"><font
                                    face="宋体"><asp:TextBox ID="TextBox7" runat="server" CssClass="CurledLineMiddle"></asp:TextBox>
                                </font></span></span></span>
                    </p>
                </td>
            </tr>
            <tr>
                <td nowrap
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
                <td nowrap
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
                <td nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center" class="style10">
                    <p align="right" class="MsoNormal">
                        <span style="font-family: 宋体; font-size: 10.0000pt; mso-font-kerning: 0.0000pt;">
                            <font face="宋体">收样人：</font><o:p></o:p></span>
                    </p>
                </td>
                <td nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center" class="style10">
                    <p align="center" class="MsoNormal" style="width: 70px">
                        <span style="font-family: 宋体; font-size: 10.0000pt; mso-font-kerning: 0.0000pt;">
                            <span style="font-family: 宋体; mso-spacerun: 'yes';">&nbsp;<span
                                style="font-family: 宋体; font-size: 10.0000pt; mso-font-kerning: 0.0000pt;"><font
                                    face="宋体"><asp:TextBox ID="TextBox8" runat="server" CssClass="CurledLineMiddle" Height="16px" Width="145px"></asp:TextBox>
                                </font></span></span></span><span style="mso-spacerun:'yes';font-family:Calibri;mso-fareast-font-family:宋体;
color:rgb(0,0,0);font-size:9.0000pt;mso-font-kerning:1.0000pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p>
                </td>
            </tr>
            <tr>
                <td nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center" class="style10">
                    &nbsp;</td>
                <td nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center" class="style10">
                    &nbsp;</td>
                <td nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center" class="style10">
                    &nbsp;</td>
                <td class="style12" nowrap
                    style="border-style: none; border-color: inherit; border-width: medium; padding: 0.0000pt 5.4000pt; mso-border-left-alt: none; mso-border-right-alt: none; mso-border-top-alt: none; mso-border-bottom-alt: none;"
                    valign="center" width="52">
                    &nbsp;</td>
                <td class="style10" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    &nbsp;</td>
                <td class="style10" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    &nbsp;</td>
                <td class="style10" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    &nbsp;</td>
                <td class="style10" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    &nbsp;</td>
                <td class="style10" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    &nbsp;</td>
                <td class="style10" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    &nbsp;</td>
                <td class="style10" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    &nbsp;</td>
                <td class="style10" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    &nbsp;</td>
                <td class="style10" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    &nbsp;</td>
                <td class="style10" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    &nbsp;</td>
                <td class="style10" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    &nbsp;</td>
                <td nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center" class="style10">
                    &nbsp;</td>
                <td nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center" class="style10">
                    <p class="MsoNormal">
                        <span style="mso-spacerun:'yes';font-family:Calibri;mso-fareast-font-family:宋体;
color:rgb(0,0,0);font-size:9.0000pt;mso-font-kerning:1.0000pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ZLJL-</span><span style="mso-spacerun:'yes';font-family:宋体;mso-ascii-font-family:Calibri;
mso-hansi-font-family:Calibri;mso-bidi-font-family:Calibri;color:rgb(0,0,0);
font-size:9.0000pt;mso-font-kerning:1.0000pt;"><font face="Calibri">11</font></span><span style="mso-spacerun:'yes';font-family:Calibri;mso-fareast-font-family:宋体;
color:rgb(0,0,0);font-size:9.0000pt;mso-font-kerning:1.0000pt;">-04</span><span style="mso-spacerun:'yes';font-family:宋体;mso-ascii-font-family:Calibri;
mso-hansi-font-family:Calibri;mso-bidi-font-family:Calibri;color:rgb(0,0,0);
font-size:9.0000pt;mso-font-kerning:1.0000pt;"><font face="Calibri">-3</font></span><span style="mso-spacerun:'yes';font-family:Calibri;mso-fareast-font-family:宋体;
color:rgb(0,0,0);font-size:9.0000pt;mso-font-kerning:1.0000pt;">-20</span><span style="mso-spacerun:'yes';font-family:宋体;mso-ascii-font-family:Calibri;
mso-hansi-font-family:Calibri;mso-bidi-font-family:Calibri;color:rgb(0,0,0);
font-size:9.0000pt;mso-font-kerning:1.0000pt;"><font face="Calibri">23 C/3</font></span></p>
                </td>
            </tr>
       </table>
            <br />
             <div id="grid"></div>
            <div id="grid1">
                <div align="center">
                    <table border="0" cellspacing="0" class="MsoNormalTable">
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
            <button type="submit" id="submitButton" onclick="sendData()">提交</button>&nbsp;
        </div>
    </form>

    <script type="text/javascript">  
        let data = [
            ['', '', '', '', '', '', '', false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false]
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
                ['', '野外编号', '取土地址', '样品种类', '样品数量', '取土深度<br>（m）', '岩性名称', '颗粒分析<br>（%）', '含水率<br>（%）', '天然密度<br>（g/cm<sup>3</sup>）', '堆积密度<br>（g/cm<sup>3</sup>）', '紧密密度<br>（g/cm<sup>3</sup>）', '表观密度<br>（g/cm<sup>3</sup>）', '含泥量<br>（%）',
                    {
                        label: "自然休止角",
                        colspan: 2
                    }, "有机质含量<br>（%）", '水溶盐含量<br>（%）', '相对密度',
                    {
                        label: "渗透",
                        colspan: 3
                    },],
                ['室内编号', '', '', '', '', '', '', '', '', '', '', '', '', '', '水上', '水下', "有机质含量（%）", '水溶盐含量（%）', '相对密度', '渗透系数', '临界坡降', '破坏坡降', '', '', ''],
                ['', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''],
            ],
            columns: [
                { type: 'text', readOnly: false },
                { type: 'text', readOnly: false },
                { type: 'text', readOnly: false },
                { type: 'text', readOnly: false },
                { type: 'text', readOnly: false },
                { type: 'numeric', readOnly: false },
                { type: 'text', readOnly: false },
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
                    if (col === 0) {
                        const theads = th.parentNode.parentNode // 获取当前表头的thead对象
                        const trs = theads.getElementsByTagName('tr') // 获取所有行
                        const trCols1 = trs[0].getElementsByTagName('th') // 获取第一行所有列
                        const trCols2 = trs[1].getElementsByTagName('th') // 获取第二行所有列
                        const trCols3 = trs[2].getElementsByTagName('th') // 获取第二行所有列
                        if (trCols1.length === trCols2.length) {
                            // 行号表头将第一行的底部边框去除掉，符合合并单元格样式
                            // 此处不能执行rowSpan属性，否则出现第二行合表头数据错位
                            // 将第二行表格隐藏，并将第一行的底部边框去除
                            trCols1[0].style.borderBottom = 'none'
                            trCols2[0].style.borderBottom = 'none'
                            trCols2[0].className = 'hiddenHeader'
                            trCols3[0].className = 'hiddenHeader'
                            trCols1[0].style.verticalAlign = 'middle'
                            for (let i = 1; i < trCols1.length; i++) {
                                // 如果单元格不包含colSpan属性且不是隐藏的单元格，则表明需要合并行，否则，则表明不需要合并行
                                if (!trCols1[i].getAttribute('colSpan') && trCols1[i].className !== 'hiddenHeader') {
                                    trCols1[i].rowSpan = 3
                                    trCols1[i].style.verticalAlign = 'middle'
                                    trCols1[i].style.height = '64px'
                                    // 将第二行表格隐藏，并将第一行的底部边框去除
                                    trCols2[i].className = 'hiddenHeader'
                                    trCols3[i].className = 'hiddenHeader'
                                    trCols1[i].style.borderBottom = 'none'
                                }
                            }
                        }
                        if (trCols2.length === trCols3.length) {
                            for (let i = 1; i < trCols1.length; i++) {
                                // 如果单元格不包含colSpan属性且不是隐藏的单元格，则表明需要合并行，否则，则表明不需要合并行
                                if (!trCols2[i].getAttribute('colSpan') && trCols3[i].className !== 'hiddenHeader') {
                                    trCols2[i].rowSpan = 2
                                    trCols2[i].style.verticalAlign = 'middle'
                                    trCols2[i].style.height = '64px'
                                    // 将第二行表格隐藏，并将第一行的底部边框去除
                                    trCols3[i].className = 'hiddenHeader'
                                    trCols2[i].style.borderBottom = 'none'
                                }
                            }
                        }
                    }
                }, 100)
            },
        });

        /*  function getData() {
              return grid.getData();
          }
          document.getElementById('saveData').addEventListener('click', function () {
              var data = getData();
              $.ajax({
                  url: '/api/data/save', // 后端API的URL
                  type: 'POST',
                  contentType: 'application/json',
                  data: JSON.stringify(data),
                  success: function (response) {
                      // 成功回调
                      console.log(response);
                  },
                  error: function (error) {
                      // 错误回调
                      console.error(error);
                  }
              });*/

       function sendData() {
            console.log("sendData()")
            var submittedData = hot.getData();
           var gcmc = document.getElementById('TextBox1').value;
           var Gcbh = document.getElementById('TextBox2').value;
           var Wtdw = document.getElementById('TextBox2').value;
           var syr = document.getElementById('TextBox3').value;
           var lxdh = document.getElementById('TextBox4').value;
           var Qyrq = document.getElementById('TextBox6').value;
           var Syrq = document.getElementById('TextBox7').value;
           var Qyr = document.getElementById('TextBox8').value;
           var sno = document.getElementById('Label1').innerText;
           var datatx = {
               submittedData,
               gcmc,
               Gcbh,
               Wtdw,
               syr,
               lxdh,
               Qyrq,
               Syrq,
               Qyr,
               sno
           }
            var xhr = new XMLHttpRequest();
           xhr.open("POST", "ZHHeader_WTD_Fill_Others_TX_CLT.aspx?method=ReceiveJsonData", true);
            xhr.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
            console.log("request...")
            xhr.onreadystatechange = function () {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    console.log(xhr.responseText);
                }
            };
           console.log("sendData...")
           console.log(datatx)
            //xhr.send(jsonData);
            //sendata = [['a', 'b', 'c'], ['d', 'e', 'f']];
           let jsonarry = JSON.stringify(datatx)
            xhr.send(jsonarry);
            //console.log(sendata)
           console.log(jsonarry)
            console.log("sendData...end")

        }

        document.getElementById('submitButton').addEventListener('click', function (event) {
            // 阻止表单默认提交
            event.preventDefault();
            // 跳转到另一个页面
            window.alert("提交成功！");
            let url ='ZHHeader_WTD.aspx'
            window.location.href = url;
            // TODO:验证输入内容
            // 转换数据为JSON
            console.log("开始转换数据为JSON");
        }, { passive: false });


      /*  function sendData() {
            console.log("sendData()")
            var submittedData = hot.getData();
            console.log(submittedData);
            var xhr = new XMLHttpRequest();
            xhr.open("POST", "handsontable1.aspx?method=ReceiveJsonData", true);
            xhr.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
            console.log("request...")
            xhr.onreadystatechange = function () {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    console.log(xhr.responseText);
                }
            };
            console.log("sendData...")
            //xhr.send(jsonData);
            //sendata = [['a', 'b', 'c'], ['d', 'e', 'f']];
            let jsonarry = submittedData
            xhr.send(JSON.stringify(jsonarry));
            //console.log(sendata)
            console.log(JSON.stringify(jsonarry))
            console.log("sendData...end")

        }

        document.getElementById('submitButton').addEventListener('click', function (event) {
            // 阻止表单默认提交
            event.preventDefault();
            // TODO:验证输入内容
            // 转换数据为JSON
            console.log("开始转换数据为JSON");
        }, { passive: false });*/
    </script>

</body>
</html>
