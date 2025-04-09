<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZHHeader_BGD_TX_TG8.aspx.cs" Inherits="WebCheckProject.ZHHeader_BGD_TX_TG8" %>

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
        .auto-style2 {
            width: 74.5000pt;
            height: 25pt;
        }
        .auto-style3 {
            width: 328.9500pt;
            height: 25pt;
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
                            <span style="font-family: 宋体; mso-ansi-font-weight: bold; font-size: 20.0000pt; mso-font-kerning: 0.0000pt;">
                                <font face="宋体">粗粒土试验成果汇总表</font><o:p></o:p></span></b>
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
    <span style="font-family: 宋体; font-size: 10.0000pt; mso-font-kerning: 0.0000pt;">
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
                            <font face="宋体">备注：1.执行标准GB/T50123-2019；  2.报告结果仅适用于客户提供的样品；   3. 相对密度试验超粒径颗粒T1766、1767采用等量替代法，其余样品采用剔除法处理，带*者因细粒土含量>12%，其值仅供参考；4.如对报告有异议，请于收到报告之日起十五日内向本单位提出，逾期不予受理。</font><o:p></o:p></span>
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
                  <font face="宋体">试验：陕西省水利电力勘测设计研究院<span style="font-family: 宋体; font-size: 11.0000pt; mso-font-kerning: 0.0000pt;font-weight:bold;">(集团)有限公司</span>勘察分院</font><o:p></o:p></span>
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
        let data = [
            ['', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '']
        ];

        var hot = new Handsontable(document.getElementById("grid"), {
            data: data,
            minSpareRows: 0,   // 指定下边余白即表格最少行数  
            manualColumnResize: true,
            colHeaders: true,//显示表头
            licenseKey: 'non-commercial-and-evaluation',
            rowHeaders: false,//不显示列头
            manualColumnResize: true,
            contextMenu: true,
            width: '2000',
            colWidths: '50',
            height: '500',
            readOnly: false,//关闭表格只读模式
            outsideClickDeselects: false,
            rowHeights: 28,
            columnHeaderHeight: 32,
            className: 'htMiddle htCenter',
            nestedHeaders: [
                [{
                    label: "样品编号",
                    colspan: 2
                }, {
                        label: "土粒组成（mm）",
                        colspan: 16
                    }, '', '', '', '', {
                        label: "相对密度试验",
                        colspan: 2
                    }, {
                        label: "自然休止角",
                        colspan: 2
                    }, {
                        label: "渗透及渗透变形试验",
                        colspan: 4
                    }],
                ['', '', {
                    label: "巨粒",
                    colspan: 2
                }, {
                        label: "砾粒",
                        colspan: 5
                    }, {
                        label: "砂粒",
                        colspan: 4
                    },
                    {
                        label: "细粒",
                        colspan: 1
                    }, '有效粒', '限制粒', '不均匀', '曲率系', '土类', '土的名称', '含<br>泥<br>量', '比<br>重', '最大<br>干密度', '最小<br>干密度', '水上', '水下', '制样<br>干密度', '渗透<br>系数', '临界<br>坡降', '渗透<br>破坏'],
                ['野外', '室内', '＞200', '200/60', '60/40', '40/20', '20/10', '10/5', '5/2', '2/1', '1/0.5', '0.5/0.25', '0.25/0.075', '＜0.075', '径d10', '径d60', '系数Cu', '数Cc', '代号', '', '', '', 'ρ<sub>dmax</sub>', 'ρ<sub>dmin</sub>', 'α<sub>水上</sub>', 'α<sub>水下</sub>', 'ρ<sub>d0</sub>', 'K<sub>20</sub>', 'i<sub>K</sub>', 'i<sub>F</sub>'],
                ['', '', '%', '%', '%', '%', '%', '%', '%', '%', '%', '%', '%', '%', 'mm', 'mm', '--', '--', '', '', '%', '%', 'g/cm3', 'g/cm3', '°', '°', 'g/cm3', 'cm/s', '--', '--'],
            ],
            columns: [
                { type: 'text', readOnly: false },
                { type: 'text', readOnly: false },
                { type: 'numeric', readOnly: false },
                { type: 'numeric', readOnly: false },
                { type: 'numeric', readOnly: false },
                { type: 'numeric', readOnly: false },
                { type: 'numeric', readOnly: false },
                { type: 'numeric', readOnly: false },
                { type: 'numeric', readOnly: false },
                { type: 'numeric', readOnly: false },
                { type: 'numeric', readOnly: false },
                { type: 'numeric', readOnly: false },
                { type: 'numeric', readOnly: false },
                { type: 'numeric', readOnly: false },
                { type: 'numeric', readOnly: false },
                { type: 'numeric', readOnly: false },
                { type: 'numeric', readOnly: false },
                { type: 'numeric', readOnly: false },
                { type: 'text', readOnly: false },
                { type: 'text', readOnly: false },
                { type: 'numeric', readOnly: false },
                { type: 'numeric', readOnly: false },
                { type: 'numeric', readOnly: false },
                { type: 'numeric', readOnly: false },
                { type: 'numeric', readOnly: false },
                { type: 'numeric', readOnly: false },
                { type: 'numeric', readOnly: false },
                { type: 'numeric', readOnly: false },
                { type: 'numeric', readOnly: false },
                { type: 'text', readOnly: false }
            ],
            //表头合并形成二级及三级表头
         afterGetColHeader: function (col, th) {
                setTimeout(() => {
                    if (col === 0) {
                        const theads = th.parentNode.parentNode // 获取当前表头的thead对象
                        const trs = theads.getElementsByTagName('tr') // 获取所有行
                        const trCols1 = trs[0].getElementsByTagName('th') // 获取第一行所有列
                        const trCols2 = trs[1].getElementsByTagName('th') // 获取第二行所有列
                        const trCols3 = trs[2].getElementsByTagName('th') // 获取第三行所有列
                        const trCols4 = trs[3].getElementsByTagName('th') // 获取第四行所有列
                        console.log(trCols3)
                        if (trCols1.length === trCols2.length && trCols2.length === trCols3.length && trCols3.length === trCols4.length) {
                            //合并第一列，第一列不能使用rowsapn
                            //trCols1[0].style.borderBottom = 'none'
                            trCols2[0].style.borderBottom = 'none'
                            trCols3[0].style.borderBottom = 'none'
                            trCols2[0].style.verticalAlign = 'middle'
                            //trCols1[1].style.borderBottom = 'none'
                            trCols2[1].style.borderBottom = 'none'
                            trCols3[1].style.borderBottom = 'none'
                            trCols2[1].style.verticalAlign = 'middle'
                            //合并前三列
                            for (let i = 2; i <13; i++) {
                                // 如果单元格不包含colSpan属性且不是隐藏的单元格，则表明需要合并行，否则，则表明不需要合并行
                                if (!trCols1[i].getAttribute('colSpan') && trCols1[i].className !== 'hiddenHeader') {
                                    trCols1[i].rowSpan =4
                                    trCols1[i].style.verticalAlign = 'middle'
                                    trCols1[i].style.height = '64px'
                                    // 将第二行表格隐藏，并将第一行的底部边框去除
                                    trCols2[i].className = 'hiddenHeader'
                                    trCols3[i].className = 'hiddenHeader'
                                    trCols4[i].className = 'hiddenHeader'
                                    trCols1[i].style.borderBottom = 'none'
                                }
                            }
                            
                            //隐藏15-18列2行下边框 隐藏20-21列1行下边框
                            for (let i = 14; i < 18; i++) {
                                trCols2[i].style.borderBottom = 'none'
                            }
                            for (let i = 18; i < 20; i++) {
                                trCols1[i].style.borderBottom = 'none'
                                trCols2[i].style.borderBottom = 'none'
                                trCols3[i].style.borderBottom = 'none'
                            }
                            for (let i = 20; i < 22; i++) {
                                trCols1[i].style.borderBottom = 'none'
                                trCols2[i].style.borderBottom = 'none'                                
                            }
                            //前四行全部居中
                            for (let i = 0; i < 30; i++) {
                                trCols1[i].style.verticalAlign = 'middle'
                                trCols2[i].style.verticalAlign = 'middle'
                                trCols3[i].style.verticalAlign = 'middle'
                                trCols4[i].style.verticalAlign = 'middle'
                            }

                            //15-19列第二行文字靠底第三行文字靠顶
                            for (let i = 14; i < 18; i++) {
                                trCols2[i].style.verticalAlign = 'bottom'
                                trCols3[i].style.verticalAlign = 'top'
                            }
                            trCols2[18].style.verticalAlign = 'bottom'
                            trCols3[18].style.verticalAlign = 'top'
                            trCols2[19].style.verticalAlign = 'bottom'

                            console.log("----------")
                            console.log(trCols2)
                        }
                    }

                }, 100)
            },
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
            xhr.open("POST", "ZHHeader_BGD_TX_TG8.aspx?method=ReceiveJsonData", true);
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
