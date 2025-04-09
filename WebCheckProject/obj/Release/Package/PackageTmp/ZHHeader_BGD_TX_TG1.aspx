<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZHHeader_BGD_TX_TG1.aspx.cs" Inherits="WebCheckProject.ZHHeader_BGD_TX_TG1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
            height: 25pt;
        }
        .auto-style3 {
            width: 328.9500pt;
            height: 25pt;
        }
        .move-title {
          position: absolute;
          left: 30%;
        }
        .move-date {
          position: absolute;
          left: 80%;
        }
        /*添加的样式*/

        /* 添加容器样式 */
          #grid .handsontable thead {
            position: sticky;
            top: 0;
            background: white;
            z-index: 2;
          }
          #grid .wtHolder {
            overflow: auto !important;
            height: auto !important;
          }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="PrintContent">
        <table border="0" cellspacing="0" class="MsoNormalTable">
            <tr style="height: 24.0000pt;">
                
                    <p class="MsoNormal">
                        <span style="font-family: 宋体; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                            <o:p>
                                &nbsp;</o:p></span>
                    </p>
                </td>
            </tr>
            <tr>
                <td colspan="20" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center" class="auto-style1">
                </td>
                <td colspan="10" nowrap
                    style="border-style: none; border-color: inherit; border-width: medium; padding: 0.0000pt 5.4000pt; mso-border-left-alt: none; mso-border-right-alt: none; mso-border-top-alt: none; mso-border-bottom-alt: none;"
                    valign="center" width="438" class="auto-style3">
                    <p align="center" class="MsoNormal">
                        &nbsp;&nbsp;&nbsp; <b style="mso-bidi-font-weight: normal">
                                <span class="move-title" style="font-family: 宋体; mso-ansi-font-weight: bold; font-size: 20.0000pt; mso-font-kerning: 0.0000pt;">
                                <font face="宋体">物性湿陷压缩渗透试验成果汇总表</font><o:p></o:p></span></b>
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
            </tr>
            <tr>
                <td colspan="10" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    <p class="MsoNormal">
                        <span style="font-family: 宋体; font-size: 10.0000pt; mso-font-kerning: 0.0000pt;">
                            <font face="宋体">报告单编号:</font><o:p><span
                                style="font-family: 宋体; font-size: 10.0000pt; mso-font-kerning: 0.0000pt;"><font
                                    face="宋体"><asp:Label ID="Label1" runat="server" Text="lable"></asp:Label>
                                </font></span>
                            </o:p>
                        </span>
                    </p>
                </td>
                <td colspan="3" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                </td>
                <td nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
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
                    <td colspan="25" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center" class="auto-style1">
                  <p class="MsoNormal">
    <span style="font-family: 宋体; font-size: 10.0000pt; mso-font-kerning: 0.0000pt;">
        <font
                face="宋体">
            </font></span>
        </o:p>
    </span>
</p>
     </td>
            </tr>
 <tr>
       <td colspan="3" nowrap
      style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
      valign="center">
      <p class="MsoNormal">
          <span style="font-family: 宋体; font-size: 10.0000pt; mso-font-kerning: 0.0000pt;">
              <font face="宋体">工程名称:</font><o:p><span
                  style="font-family: 宋体; font-size: 10.0000pt; mso-font-kerning: 0.0000pt;"><font
                      face="宋体"><asp:Label ID="Label2" runat="server" Text="lable"></asp:Label>
                  </font></span>
              </o:p>
          </span>
      </p>
  </td>
                <td colspan="15" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center" class="auto-style1">
                </td>
                     <td colspan="20" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center" class="auto-style1">
                </td>
     <td colspan="25" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center" class="auto-style1">
                  <p class="MsoNormal">
    <span class="move-date" style="font-family: 宋体; font-size: 10.0000pt; mso-font-kerning: 0.0000pt;">
        <font
                face="宋体"><asp:Label ID="Label3" runat="server" Text="lable"></asp:Label>
            </font></span>
        </o:p>
    </span>
</p>
     </td>

            </tr>
       </table>
            <br />
             <div id="grid"></div>
            <table>
            <tr style="height: 29.2500pt;">
                <td colspan="4" nowrap
                    style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                    valign="center">
                    <p class="MsoNormal">
                        <span style="font-family: 宋体; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                            <font face="宋体">备注：1.执行标准SL/T 264-2020；2.报告结果仅适用于客户提供的样品；3.带*试件沿片理破坏；4.如对报告有异议，请于收到报告之日起15日内向本单位提出，逾期不予受理。</font><o:p></o:p></span>
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
                  <tr style="height: 29.2500pt;">
      <td colspan="4" nowrap
          style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
          valign="center">
          <p class="MsoNormal">
              <span style="font-family: 宋体; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;font-weight:bold;">
                  <font face="宋体">试验：陕西省水利电力勘测设计研究院（集团）有限公司勘察分院</font><o:p></o:p></span>
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
    <td  nowrap
        style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
        valign="center">
        <p class="MsoNormal">
            <span style="font-family: 宋体; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
                <font face="宋体">批准：</font><o:p></o:p></span>
        </p>
    </td>
            <td nowrap
                style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                valign="center">
                 <p class="MsoNormal">
     <span style="font-family: 宋体; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
         <font face="宋体">审批：</font><o:p></o:p></span>
 </p>
            </td>
            <td nowrap
                style="padding: 0.0000pt 5.4000pt 0.0000pt 5.4000pt; border-left: none; mso-border-left-alt: none; border-right: none; mso-border-right-alt: none; border-top: none; mso-border-top-alt: none; border-bottom: none; mso-border-bottom-alt: none;"
                valign="center">
                               <p class="MsoNormal">
    <span style="font-family: 宋体; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;">
        <font face="宋体">测试：</font><o:p></o:p></span>
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
            var hot = new Handsontable(document.getElementById("grid"), {
                data: new Array(1).fill().map(() => new Array(33).fill('')),
                minSpareRows: 0,   // 指定下边余白即表格最少行数  
                autoWrapRow: true,
                fillHandle: true,  // 启用填充手柄
                manualColumnResize: true,
                colHeaders: true, // 显示表头
                licenseKey: 'non-commercial-and-evaluation',
                rowHeaders: false, // 不显示列头
                contextMenu: true,
                width: '2000',
                colWidths: 50, // 统一列宽
                height: '500',
                readOnly: false, // 关闭表格只读模式
                outsideClickDeselects: false,
                rowHeights: 28,
                columnHeaderHeight: 32,
                autoRowSize: false, // 禁用自动行高
                className: 'htMiddle htCenter',
                // 添加以下配置
                //allowEmpty: true,
                //enterMoves: { row: 1, col: 0 },
                //enterBeginsEditing: false,
                //autoColumnSize: false,
                //stretchH: 'all',

                nestedHeaders: [
                    // 第一行表头
                    [
                        { label: '样品编号', colspan: 2 },
                        { label: '取样<br>深度', colspan: 1 },
                        { label: '土的天然状态', colspan: 7 },
                        { label: '液限', colspan: 1 },
                        { label: '塑限', colspan: 1 },
                        { label: '塑性<br>指数', colspan: 1 },
                        { label: '液性<br>指数', colspan: 1 },
                        { label: '下沉深度10mm', colspan: 2 },
                        { label: '压缩<br>系数', colspan: 1 },
                        { label: '压缩<br>模量', colspan: 1 },
                        { label: '压缩<br>系数', colspan: 1 },
                        { label: '压缩<br>模量', colspan: 1 },
                        { label: '压缩<br>系数', colspan: 1 },
                        { label: '压缩<br>模量', colspan: 1 },
                        { label: '压缩<br>系数', colspan: 1 },
                        { label: '压缩<br>模量', colspan: 1 },
                        { label: '压缩<br>系数', colspan: 1 },
                        { label: '压缩<br>模量', colspan: 1 },
                        { label: '黄土湿陷试验', colspan: 5 },
                        { label: '渗透系数', colspan: 2 }
                    ],
                    // 第二行表头
                    [
                        '', '', '', '比重', '含水率', '湿密度', '干密度', '孔隙比', '孔隙率', '饱和度', '', '', '', '', '液限', '塑性<br>指数', '', '', '', '', '', '', '', '',
                        '', '', { label: '不同压力下<br>的湿陷系数', colspan: 2}, '湿陷起<br>始压力', '饱和自<br>重压力', '自重湿<br>陷系数', '垂直', '水平'
                    ],
                    // 第三行表头
                    [
                        '野外', '室内', '', 'Gs', 'ω', 'ρ', 'ρd', 'e', 'n', 'Sr', 'ωL', 'ωp', 'IP', 'IL', 'ω10', 'I10', 'av0.5-1', 'Es0.5-1', 'av1-2', 'Es1-2', 'av2-4', 'Es2-4', 'av4-8', 'Es4-8',
                        'av8-16', 'Es8-16', 'δS200', 'δS300', 'Psh', 'Pc', 'δzs', { label: 'k20', colspan: 2}
                    ],
                    // 第四行表头
                    [
                        '', '', 'm', '_', '%', { label: 'g/cm³', colspan: 2}, '_', '%', '%', '%', '%', '_', '_', '%', '_', 'MPa⁻¹', 'MPa', 'MPa⁻¹', 'MPa', 'MPa⁻¹', 'MPa', 'MPa⁻¹', 'MPa', 'MPa⁻¹', 'MPa', '_', '_', 'kPa',
                        'kPa', '_', { label: 'cm/s', colspan: 2}
                    ]
                ],
                columns: [
                    { type: 'text', readOnly: false }, // 样品编号 - 野外
                    { type: 'text', readOnly: false }, // 样品编号 - 室内
                    { type: 'text', readOnly: false }, // 取样深度
                    { type: 'numeric', readOnly: false }, // 比重
                    { type: 'numeric', readOnly: false }, // 含水率
                    { type: 'numeric', readOnly: false }, // 湿密度
                    { type: 'numeric', readOnly: false }, // 干密度
                    { type: 'numeric', readOnly: false }, // 孔隙比
                    { type: 'numeric', readOnly: false }, // 孔隙率
                    { type: 'numeric', readOnly: false }, // 饱和度
                    { type: 'numeric', readOnly: false }, // 液限
                    { type: 'numeric', readOnly: false }, // 塑限
                    { type: 'numeric', readOnly: false }, // 塑性指数
                    { type: 'numeric', readOnly: false }, // 液性指数
                    { type: 'numeric', readOnly: false }, // 下沉深度10mm
                    { type: 'numeric', readOnly: false }, // I10
                    { type: 'numeric', readOnly: false }, // 压缩系数 av0.5-1
                    { type: 'numeric', readOnly: false }, // 压缩模量 Es0.5-1
                    { type: 'numeric', readOnly: false }, // 压缩系数 av1-2
                    { type: 'numeric', readOnly: false }, // 压缩模量 Es1-2
                    { type: 'numeric', readOnly: false }, // 压缩系数 av2-4
                    { type: 'numeric', readOnly: false }, // 压缩模量 Es2-4
                    { type: 'numeric', readOnly: false }, // 压缩系数 av4-8
                    { type: 'numeric', readOnly: false }, // 压缩模量 Es4-8
                    { type: 'numeric', readOnly: false }, // 压缩系数 av8-16
                    { type: 'numeric', readOnly: false }, // 压缩模量 Es8-16
                    { type: 'numeric', readOnly: false }, // δS200
                    { type: 'numeric', readOnly: false }, // δS300
                    { type: 'numeric', readOnly: false }, // Psh
                    { type: 'numeric', readOnly: false }, // Pc
                    { type: 'numeric', readOnly: false }, // δzs
                    { type: 'numeric', readOnly: false }, // k20
                    { type: 'numeric', readOnly: false }  // 空列
                ],

                afterGetColHeader: function (col, th) {
                    setTimeout(() => {
                        const theads = th.parentNode.parentNode; // 获取当前表头的thead对象
                        const trs = theads.getElementsByTagName('tr'); // 获取所有行
                        const trCols1 = trs[0].getElementsByTagName('th'); // 获取第一行所有列
                        const trCols2 = trs[1].getElementsByTagName('th'); // 获取第二行所有列
                        const trCols3 = trs[2].getElementsByTagName('th'); // 获取第三行所有列
                        const trCols4 = trs[3].getElementsByTagName('th'); // 获取第四行所有列                          

                        //表格统一垂直居中
                        Array.from(trs).forEach(tr => {
                            Array.from(tr.getElementsByTagName('th')).forEach(th => {
                                th.style.verticalAlign = 'middle';
                            });
                        });

                        // 合并前两列的第2-4行
                        for (let i = 0; i <= 1; i++){
                            trCols2[i].style.borderBottom = 'none';
                            trCols3[i].style.borderBottom = 'none';
                        }

                        //合并第三列
                        trCols1[2].rowSpan = 3;
                        trCols1[2].style.verticalAlign = 'middle';
                        trCols2[2].style.display = 'none'; 
                        trCols3[2].style.display = 'none';

                        //合并第11-26列中每列的前两行，排除第15-16列
                        for (let i = 10; i <= 25; i++) {
                            if (i === 14 || i === 15) {
                                continue;
                            }
                            trCols1[i].rowSpan = 2;
                            trCols1[i].style.verticalAlign = 'middle';
                            trCols2[i].style.display = 'none';
                        }
                    }, 100);
                }
            });


            //方法重构
            function sendData() {
                console.log("sendData()");
                var submittedData = hot.getData().filter(row => row[0] || row[1]); // 过滤空行
                var rp_no = document.getElementById('Label1').innerText;
                var gcmc = document.getElementById('Label2').innerText;
                var bgrq = document.getElementById('Label3').innerText;
                const urlParams = new URLSearchParams(window.location.search);
                const cno = urlParams.get('NO');  // 获取任务单编号

                var xhr = new XMLHttpRequest();
                xhr.open("POST", "ZHHeader_BGD_TX_TG1.aspx?method=ReceiveJsonData", true);
                xhr.setRequestHeader("Content-Type", "application/json; charset=utf-8");
                xhr.onreadystatechange = function () {
                    if (xhr.readyState === 4) {
                        if (xhr.status === 200) {
                            try {
                                var response = JSON.parse(xhr.responseText);
                                if (response.success) {
                                    alert("提交成功！");
                                    window.location.href = 'Tester_index.aspx';
                                } else {
                                    var msg = "重复数据:\n" + response.duplicates.join("\n");
                                    alert(msg);
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
                    cno: cno,
                    rp_no: rp_no,
                    gcmc: gcmc,
                    bgrq: bgrq
                };
                xhr.send(JSON.stringify(data));
            }

            // 修改提交按钮事件
            document.getElementById('submitButton').addEventListener('click', function (event) {
                event.preventDefault();
                sendData();
            });

        </script>

</body>
</html>
