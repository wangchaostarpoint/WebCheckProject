<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZHHeader_BGD_BJ_TG4.aspx.cs" Inherits="WebCheckProject.ZHHeader_BGD_BJ_TG4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/handsontable@latest/dist/handsontable.full.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/handsontable@latest/dist/handsontable.full.min.js"></script>
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
                                <font face="宋体">击实试验成果汇总表</font><o:p></o:p></span></b>
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
            <button type="submit" id="queren">返回首页</button>&nbsp;
            <button type="submit" id="submitButton" onclick="sendData()">确认修改</button>&nbsp;
        </div>
    </form>

     <script type="text/javascript">  
         var sddata =<%=Getdata()%>;
         let data = [
             ['', '', '', '', '', '', '']
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
                 //第一行表头
                 [{ label: "样品编号", colspan: 2 }, '取样深度', { label: "标准击实（25次）", colspan: 2 }, '有机质含量', '易溶盐含量', '酸碱度'],
                 //第二行表头
                 ['', '', '', '最大干密度', '最优含水率', '', '', ''],
                 //第三行表头
                 ['野外', '室内', '', 'ρdmax', 'ωop', 'Wu', 'W', 'PH值'],
                 //第四行表头
                 ['', '', 'm', 'g/cm3', '%', 'g/kg', 'g/kg', '_'],
             ],
             columns: [
                 { type: 'text', readOnly: false },
                 { type: 'text', readOnly: false },
                 { type: 'numeric', readOnly: false },
                 { type: 'numeric', readOnly: false },
                 { type: 'numeric', readOnly: false },
                 { type: 'numeric', readOnly: false },
                 { type: 'numeric', readOnly: false },
                 { type: 'numeric', readOnly: false }
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
                     console.log(trCols3)

                     //表格统一垂直居中
                     for (let i = 0; i <= 7; i++) {
                         trCols1[i].style.verticalAlign = 'middle';
                         trCols2[i].style.verticalAlign = 'middle';
                         trCols3[i].style.verticalAlign = 'middle';
                         trCols4[i].style.verticalAlign = 'middle';
                     }

                     // 合并第一、二列“样品编号”的第2-4行
                     for (let i = 0; i <= 1; i++) {
                         trCols2[i].style.borderBottom = 'none';
                         trCols3[i].style.borderBottom = 'none';
                     }

                     //合并第三列
                     trCols1[2].rowSpan = 3;
                     trCols1[2].style.verticalAlign = 'middle';
                     trCols2[2].style.display = 'none';
                     trCols3[2].style.display = 'none';

                     //合并第6-8列每列的前两行
                     for (let i = 5; i <= 7; i++) {
                         trCols1[i].rowSpan = 2;
                         trCols1[i].style.verticalAlign = 'middle';
                         trCols2[i].style.display = 'none';
                     }
                 }, 100)
            },
        });
        hot.loadData(sddata);
       function sendData() {
            console.log("sendData()")
            var submittedData = hot.getData();
           var rp_no = document.getElementById('Label1').innerText;
           var gcmc = document.getElementById('Label2').innerText;
           var bgrq = document.getElementById('Label3').innerText;
           const urlParams = new URLSearchParams(window.location.search);
           const cno = urlParams.get('NO'); // 获取任务单编号
           var datatx = {
               submittedData,
               cno,
               rp_no,
               gcmc,
               bgrq
           }
            var xhr = new XMLHttpRequest();
           xhr.open("POST", "ZHHeader_BGD_BJ_TG4.aspx?method=ReceiveJsonData", true);
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

        document.getElementById('queren').addEventListener('click', function (event) {
            // 阻止表单默认提交
            event.preventDefault();
            // TODO:验证输入内容
            // 转换数据为JSON
            window.location.href = 'Tester_index.aspx';
        }, { passive: false });
        document.getElementById('submitButton').addEventListener('click', function (event) {
            // 阻止表单默认提交
            event.preventDefault();
            // 跳转到另一个页面
            window.alert('修改成功！')
            let url = 'Tester_index.aspx';
            window.location.href = url;
            // TODO:验证输入内容
            // 转换数据为JSON
            console.log("开始转换数据为JSON");
        }, { passive: false });
     </script>

</body>
</html>
