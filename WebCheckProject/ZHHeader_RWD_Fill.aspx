<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZHHeader_RWD_Fill.aspx.cs" Inherits="WebCheckProject.ZHHeader_RWD_Fill" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


p.MsoNormal{
margin-bottom:.0001pt;
text-align:justify;
text-justify:inter-ideograph;
font-family:Calibri;
font-size:10.5000pt;
            margin-left: 0pt;
            margin-right: 0pt;
            margin-top: 0pt;
        }

table.MsoTableGrid{
text-align:justify;
text-justify:inter-ideograph;
font-family:'Times New Roman';
font-size:10.0000pt;
}
        .auto-style1 {
            width: 15.1000%;
            height: 43pt;
        }
        .auto-style2 {
            width: 32.6400%;
            height: 43pt;
        }
        .auto-style3 {
            width: 15.4800%;
            height: 43pt;
        }
        .auto-style4 {
            width: 36.7600%;
            height: 43pt;
        }
         form{
             margin-top:50px;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="PrintContent">
    
        <p align="center" class="MsoNormal" 
            style="layout-grid-mode:char;text-align:center;">
            <b style="mso-bidi-font-weight:normal">
            <span style="mso-spacerun:'yes';font-family:宋体;mso-bidi-font-family:华文楷体;
mso-ansi-font-weight:bold;font-size:16.0000pt;mso-font-kerning:1.0000pt;"><font face="宋体">
            陕西省水利电力勘测设计研究院（集团）有限公司勘察分院测试中心</font></span><span style="mso-spacerun:'yes';font-family:宋体;mso-ansi-font-weight:bold;
font-size:16.0000pt;mso-font-kerning:1.0000pt;"><o:p></o:p></span></b></p>
        <p align="center" class="MsoNormal" 
            style="layout-grid-mode:char;text-align:center;">
            <b>
            <span style="mso-spacerun:'yes';font-family:宋体;mso-bidi-font-family:楷体;
font-weight:bold;font-size:18.0000pt;mso-font-kerning:1.0000pt;"><font face="宋体">试</font> &nbsp;<font 
                face="宋体">验</font> &nbsp;<font face="宋体">任</font> &nbsp;<font face="宋体">务</font>&nbsp;&nbsp;<font 
                face="宋体">单</font></span><span style="mso-spacerun:'yes';font-family:宋体;mso-bidi-font-family:楷体;
font-weight:bold;font-size:15.0000pt;mso-font-kerning:1.0000pt;"><o:p></o:p></span></b></p>
        <p class="MsoNormal" 
            style="text-indent: 31.5000pt; mso-char-indent-count: 3.0000; text-align: left; line-height: 16.0000pt; mso-line-height-rule: exactly;">
            <span style="mso-spacerun: 'yes'; font-family: 宋体; mso-bidi-font-family: 楷体; font-size: 10.5000pt; mso-font-kerning: 1.0000pt;">
            <font face="宋体">任务单编号：</font></span>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <span  style="mso-spacerun: 'yes'; font-family: 宋体; mso-bidi-font-family: 楷体; mso-bidi-font-weight: bold; font-size: 15.0000pt; mso-font-kerning: 1.0000pt;"><o:p></o:p></span></p>
        <div align="center">
            <table border="1" cellspacing="0" class="MsoTableGrid" style="border-collapse:collapse;width:99.9800%;border:none;
mso-border-left-alt:1.5000pt solid windowtext;mso-border-top-alt:1.5000pt solid windowtext;mso-border-right-alt:1.5000pt solid windowtext;
mso-border-bottom-alt:1.5000pt solid windowtext;mso-border-insideh:0.5000pt solid windowtext;mso-border-insidev:0.5000pt solid windowtext;
mso-padding-alt:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;">
                <tr style="height:42.5000pt;">
                    <td style="width:15.1000%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:1.5000pt solid windowtext;
mso-border-left-alt:1.5000pt solid windowtext;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;
border-top:1.5000pt solid windowtext;mso-border-top-alt:1.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="15.1000%">
                        <p align="center" class="MsoNormal" style="text-align:center; font-family: 宋体;">
                            工程名称</p>
                    </td>
                    <td style="width:32.6400%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;
mso-border-left-alt:none;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;
border-top:1.5000pt solid windowtext;mso-border-top-alt:1.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="32.6400%">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;"><o:p>
                            &nbsp;<asp:TextBox ID="TextBox1" runat="server" BorderStyle="None" 
                                style="margin-left: 0px" Width="222px"></asp:TextBox>
                            </o:p></span>
                        </p>
                    </td>
                    <td style="width:15.4800%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;
mso-border-left-alt:none;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;
border-top:1.5000pt solid windowtext;mso-border-top-alt:1.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="15.4800%">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
                            <font face="宋体">样品编号</font><o:p></o:p></span></p>
                    </td>
                    <td style="width:36.7600%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;
mso-border-left-alt:none;border-right:1.5000pt solid windowtext;mso-border-right-alt:1.5000pt solid windowtext;
border-top:1.5000pt solid windowtext;mso-border-top-alt:1.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="36.7600%">
                        <span style="font-family: 宋体; font-size: 10.5000pt; mso-font-kerning: 1.0000pt;">
                        <asp:TextBox ID="TextBox2" runat="server" BorderStyle="None" 
                            style="margin-left: 0px" Width="222px"></asp:TextBox>
                        </span>
                    </td>
                </tr>
                <tr style="height:42.5000pt;">
                    <td style="width:15.1000%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:1.5000pt solid windowtext;
mso-border-left-alt:1.5000pt solid windowtext;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;
border-top:none;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="15.1000%">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
                            <font face="宋体">委托日期</font><o:p></o:p></span></p>
                    </td>
                    <td style="width:32.6400%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;
mso-border-left-alt:none;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;
border-top:none;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="32.6400%">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;"><o:p>
                            &nbsp;<span 
                                style="font-family: 宋体; font-size: 10.5000pt; mso-font-kerning: 1.0000pt;"><asp:TextBox 
                                ID="TextBox3" textmode="Date" runat="server" BorderStyle="None" style="margin-left: 0px" 
                                Width="222px"></asp:TextBox>
                            </span></o:p></span>
                        </p>
                    </td>
                    <td style="width:15.4800%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;
mso-border-left-alt:none;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;
border-top:none;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="15.4800%">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
                            <font face="宋体">商定完成日期</font><o:p></o:p></span></p>
                    </td>
                    <td style="width:36.7600%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;
mso-border-left-alt:none;border-right:1.5000pt solid windowtext;mso-border-right-alt:1.5000pt solid windowtext;
border-top:none;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="36.7600%">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;"><o:p>
                            &nbsp;<span 
                                style="font-family: 宋体; font-size: 10.5000pt; mso-font-kerning: 1.0000pt;"><asp:TextBox 
                                ID="TextBox4" textmode="Date" runat="server" BorderStyle="None" style="margin-left: 0px" 
                                Width="222px"></asp:TextBox>
                            </span></o:p></span>
                        </p>
                    </td>
                </tr>
                <tr style="height:42.5000pt;">
                    <td style="width:15.1000%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:1.5000pt solid windowtext;
mso-border-left-alt:1.5000pt solid windowtext;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;
border-top:none;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="15.1000%">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
                            <font face="宋体">样品名称</font><o:p></o:p></span></p>
                    </td>
                    <td colspan="3" style="width:84.8800%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;
mso-border-left-alt:none;border-right:1.5000pt solid windowtext;mso-border-right-alt:1.5000pt solid windowtext;
border-top:none;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="84.8800%">
                        <span style="font-family: 宋体; font-size: 10.5000pt; mso-font-kerning: 1.0000pt;">
                        <asp:TextBox ID="TextBox5" runat="server" BorderStyle="None" 
                            style="margin-left: 0px" Width="743px"></asp:TextBox>
                        </span>
                    </td>
                </tr>
                <tr style="height:42.5000pt;">
                    <td style="width:15.1000%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:1.5000pt solid windowtext;
mso-border-left-alt:1.5000pt solid windowtext;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;
border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="15.1000%">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
                            <font face="宋体">厂家（产地）</font><o:p></o:p></span></p>
                    </td>
                    <td colspan="3" style="width:84.8800%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;
mso-border-left-alt:none;border-right:1.5000pt solid windowtext;mso-border-right-alt:1.5000pt solid windowtext;
border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="84.8800%">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;"><o:p>
                            &nbsp;<span 
                                style="font-family: 宋体; font-size: 10.5000pt; mso-font-kerning: 1.0000pt;"><asp:TextBox 
                                ID="TextBox6" runat="server" BorderStyle="None" style="margin-left: 0px" 
                                Width="743px"></asp:TextBox>
                            </span></o:p></span>
                        </p>
                    </td>
                </tr>
                <tr style="height:42.5000pt;">
                    <td style="width:15.1000%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:1.5000pt solid windowtext;
mso-border-left-alt:1.5000pt solid windowtext;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;
border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="15.1000%">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
                            <font face="宋体">样品规格</font><o:p></o:p></span></p>
                    </td>
                    <td colspan="3" style="width:84.8800%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;
mso-border-left-alt:none;border-right:1.5000pt solid windowtext;mso-border-right-alt:1.5000pt solid windowtext;
border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="84.8800%">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;"><o:p>
                            &nbsp;<span 
                                style="font-family: 宋体; font-size: 10.5000pt; mso-font-kerning: 1.0000pt;"><asp:TextBox 
                                ID="TextBox7" runat="server" BorderStyle="None" style="margin-left: 0px" 
                                Width="743px"></asp:TextBox>
                            </span></o:p></span>
                        </p>
                    </td>
                </tr>
                <tr style="height:42.5000pt;">
                    <td style="width:15.1000%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:1.5000pt solid windowtext;
mso-border-left-alt:1.5000pt solid windowtext;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;
border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="15.1000%">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
                            <font face="宋体">生产日期</font><o:p></o:p></span></p>
                    </td>
                    <td style="width:32.6400%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;
mso-border-left-alt:none;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;
border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="32.6400%">
                        <p align="center" class="MsoNormal" style="text-align: center; width: 247px;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;"><o:p>
                            &nbsp;<span 
                                style="font-family: 宋体; font-size: 10.5000pt; mso-font-kerning: 1.0000pt;"><asp:TextBox 
                                ID="TextBox8" textmode="Date" runat="server" BorderStyle="None" style="margin-left: 0px" 
                                Width="182px"></asp:TextBox>
                            </span></o:p></span>
                        </p>
                    </td>
                    <td style="width:15.4800%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:1.0000pt solid windowtext;
mso-border-left-alt:0.5000pt solid windowtext;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;
border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="15.4800%">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
                            <font face="宋体">批号</font><o:p></o:p></span></p>
                    </td>
                    <td style="width:36.7600%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:1.0000pt solid windowtext;
mso-border-left-alt:0.5000pt solid windowtext;border-right:1.5000pt solid windowtext;mso-border-right-alt:1.5000pt solid windowtext;
border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="36.7600%">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;"><o:p>
                            &nbsp;<span 
                                style="font-family: 宋体; font-size: 10.5000pt; mso-font-kerning: 1.0000pt;"><asp:TextBox 
                                ID="TextBox9" runat="server" BorderStyle="None" style="margin-left: 0px" 
                                Width="182px"></asp:TextBox>
                            </span></o:p></span>
                        </p>
                    </td>
                </tr>
                <tr style="height:42.5000pt;">
                    <td style="width:15.1000%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:1.5000pt solid windowtext;
mso-border-left-alt:1.5000pt solid windowtext;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;
border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="15.1000%">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
                            <font face="宋体">代表批量</font><o:p></o:p></span></p>
                    </td>
                    <td style="width:32.6400%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;
mso-border-left-alt:none;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;
border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="32.6400%">
                        <span style="font-family: 宋体; font-size: 10.5000pt; mso-font-kerning: 1.0000pt;">
                        <asp:TextBox ID="TextBox10" runat="server" BorderStyle="None" 
                            style="margin-left: 0px" Width="182px"></asp:TextBox>
                        </span>
                    </td>
                    <td style="width:15.4800%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:1.0000pt solid windowtext;
mso-border-left-alt:0.5000pt solid windowtext;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;
border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="15.4800%">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
                            <font face="宋体">取样地点</font><o:p></o:p></span></p>
                    </td>
                    <td style="width:36.7600%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:1.0000pt solid windowtext;
mso-border-left-alt:0.5000pt solid windowtext;border-right:1.5000pt solid windowtext;mso-border-right-alt:1.5000pt solid windowtext;
border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="36.7600%">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;"><o:p>
                            &nbsp;<span 
                                style="font-family: 宋体; font-size: 10.5000pt; mso-font-kerning: 1.0000pt;"><asp:TextBox 
                                ID="TextBox11" runat="server" BorderStyle="None" style="margin-left: 0px" 
                                Width="182px"></asp:TextBox>
                            </span></o:p></span>
                        </p>
                    </td>
                </tr>
                <tr style="height:42.5000pt;">
                    <td style="width:15.1000%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:1.5000pt solid windowtext;
mso-border-left-alt:1.5000pt solid windowtext;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;
border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="15.1000%">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
                            <font face="宋体">样品描述</font><o:p></o:p></span></p>
                    </td>
                    <td colspan="3" style="width:84.8800%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;
mso-border-left-alt:none;border-right:1.5000pt solid windowtext;mso-border-right-alt:1.5000pt solid windowtext;
border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="84.8800%">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;"><o:p>
                            &nbsp;<span 
                                style="font-family: 宋体; font-size: 10.5000pt; mso-font-kerning: 1.0000pt;"><asp:TextBox 
                                ID="TextBox12" runat="server" BorderStyle="None" style="margin-left: 0px" 
                                Width="732px"></asp:TextBox>
                            </span></o:p></span>
                        </p>
                    </td>
                </tr>
                <tr style="height:42.5000pt;">
                    <td style="width:15.1000%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:1.5000pt solid windowtext;
mso-border-left-alt:1.5000pt solid windowtext;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;
border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="15.1000%">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
                            <font face="宋体">检测项目</font><o:p></o:p></span></p>
                    </td>
                    <td colspan="3" style="width:84.8800%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;
mso-border-left-alt:none;border-right:1.5000pt solid windowtext;mso-border-right-alt:1.5000pt solid windowtext;
border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="84.8800%">
                        <span style="font-family: 宋体; font-size: 10.5000pt; mso-font-kerning: 1.0000pt;">
                        <asp:TextBox ID="TextBox13" runat="server" BorderStyle="None" 
                            style="margin-left: 0px" Width="739px"></asp:TextBox>
                        </span>
                    </td>
                </tr>
                <tr style="height:42.5000pt;">
                    <td style="width:15.1000%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:1.5000pt solid windowtext;
mso-border-left-alt:1.5000pt solid windowtext;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;
border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="15.1000%">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
                            <font face="宋体">情况说明</font><o:p></o:p></span></p>
                    </td>
                    <td colspan="3" style="width:84.8800%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;
mso-border-left-alt:none;border-right:1.5000pt solid windowtext;mso-border-right-alt:1.5000pt solid windowtext;
border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="84.8800%">
                        <span style="font-family: 宋体; font-size: 10.5000pt; mso-font-kerning: 1.0000pt;">
                        <asp:TextBox ID="TextBox14" runat="server" BorderStyle="None" 
                            style="margin-left: 0px" Width="741px"></asp:TextBox>
                        </span>
                    </td>
                </tr>
                <tr style="height:42.5000pt;">
                    <td style="width:15.1000%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:1.5000pt solid windowtext;
mso-border-left-alt:1.5000pt solid windowtext;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;
border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="15.1000%">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
                            <font face="宋体">检测依据</font><o:p></o:p></span></p>
                    </td>
                    <td style="width:32.6400%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;
mso-border-left-alt:none;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;
border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="32.6400%">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;"><o:p>
                            &nbsp;<span 
                                style="font-family: 宋体; font-size: 10.5000pt; mso-font-kerning: 1.0000pt;"><asp:TextBox 
                                ID="TextBox15" runat="server" BorderStyle="None" style="margin-left: 0px" 
                                Width="214px"></asp:TextBox>
                            </span></o:p></span>
                        </p>
                    </td>
                    <td style="width:15.4800%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:1.0000pt solid windowtext;
mso-border-left-alt:0.5000pt solid windowtext;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;
border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="15.4800%">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
                            <font face="宋体">评判标准</font><o:p></o:p></span></p>
                    </td>
                    <td style="width:36.7600%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:1.0000pt solid windowtext;
mso-border-left-alt:0.5000pt solid windowtext;border-right:1.5000pt solid windowtext;mso-border-right-alt:1.5000pt solid windowtext;
border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="36.7600%">
                        <span style="font-family: 宋体; font-size: 10.5000pt; mso-font-kerning: 1.0000pt;">
                        <asp:TextBox ID="TextBox16" runat="server" BorderStyle="None" 
                            style="margin-left: 0px" Width="302px"></asp:TextBox>
                        </span>
                    </td>
                </tr>
                <tr>
                    <td style="padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt;border-left:1.5000pt solid windowtext;
mso-border-left-alt:1.5000pt solid windowtext;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;
border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="15.1000%" class="auto-style1">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
                            <font face="宋体">样品发放日期</font><o:p></o:p></span></p>
                    </td>
                    <td style="padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt;mso-border-left-alt:none;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;
border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext; border-left-style: none; border-left-color: inherit; border-left-width: medium;" valign="center" width="32.6400%" class="auto-style2">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
                            <font face="宋体">
                            <span style="font-family: 宋体; font-size: 10.5000pt; mso-font-kerning: 1.0000pt;">
                            <asp:TextBox ID="TextBox17" textmode="Date" runat="server" BorderStyle="None" 
                                style="margin-left: 0px" Width="182px"></asp:TextBox>
                            </span></font><o:p></o:p></span></p>
                    </td>
                    <td style="border: 1.0000pt solid windowtext; padding: 0.0000pt 5.4000pt; mso-border-left-alt:0.5000pt solid windowtext; mso-border-right-alt:0.5000pt solid windowtext;
 mso-border-top-alt:0.5000pt solid windowtext; mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="15.4800%" class="auto-style3">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
                            <font face="宋体">剩余试验样品</font><o:p></o:p></span></p>
                    </td>
                    <td style="padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt;border-left:1.0000pt solid windowtext;
mso-border-left-alt:0.5000pt solid windowtext;border-right:1.5000pt solid windowtext;mso-border-right-alt:1.5000pt solid windowtext;
border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="36.7600%" class="auto-style4">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="a" Text="废弃" />
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
                            <span style="font-family:宋体;mso-spacerun:'yes';">
                            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="a" Text="留样" />
                            <asp:RadioButton ID="RadioButton3" runat="server" GroupName="a" Text="寄回" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span></p>
                    </td>
                </tr>
                <tr style="height:42.5000pt;">
                    <td style="width:15.1000%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:1.5000pt solid windowtext;
mso-border-left-alt:1.5000pt solid windowtext;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;
border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="15.1000%">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
                            <font face="宋体">样品领取数量</font><o:p></o:p></span></p>
                    </td>
                    <td style="width:32.6400%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;
mso-border-left-alt:none;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;
border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="32.6400%">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
                            <font face="宋体">
                            <span style="font-family: 宋体; font-size: 10.5000pt; mso-font-kerning: 1.0000pt;">
                            <asp:TextBox ID="TextBox18" runat="server" BorderStyle="None" 
                                style="margin-left: 0px" Width="182px"></asp:TextBox>
                            </span></font></span></p>
                    </td>
                    <td style="width:15.4800%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:1.0000pt solid windowtext;
mso-border-left-alt:0.5000pt solid windowtext;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;
border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="15.4800%">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
                            <font face="宋体">任务领取人</font><o:p></o:p></span></p>
                    </td>
                    <td style="width:36.7600%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:1.0000pt solid windowtext;
mso-border-left-alt:0.5000pt solid windowtext;border-right:1.5000pt solid windowtext;mso-border-right-alt:1.5000pt solid windowtext;
border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.0000pt solid windowtext;
mso-border-bottom-alt:0.5000pt solid windowtext;" valign="center" width="36.7600%">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>赵晓霞</asp:ListItem>
                                <asp:ListItem>张莞婷</asp:ListItem>
                                <asp:ListItem>陈震亚</asp:ListItem>
                                <asp:ListItem>徐青青</asp:ListItem>
                                <asp:ListItem>王艺华</asp:ListItem>
                                <asp:ListItem>成佳杨</asp:ListItem>
                                <asp:ListItem>王钰叶</asp:ListItem>
                            </asp:DropDownList>
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
                            <font face="宋体">
                            <span style="font-family: 宋体; font-size: 10.5000pt; mso-font-kerning: 1.0000pt;">
                            <asp:TextBox ID="TextBox19" runat="server" BorderStyle="None" 
                                style="margin-left: 0px" Width="182px"></asp:TextBox>
                            </span></font></span></p>
                    </td>
                </tr>
                <tr style="height:90.3500pt;">
                    <td style="width:15.1000%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:1.5000pt solid windowtext;
mso-border-left-alt:1.5000pt solid windowtext;border-right:1.0000pt solid windowtext;mso-border-right-alt:0.5000pt solid windowtext;
border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.5000pt solid windowtext;
mso-border-bottom-alt:1.5000pt solid windowtext;" valign="center" width="15.1000%">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;">
                            <font face="宋体">补充说明</font><o:p></o:p></span></p>
                    </td>
                    <td colspan="3" style="width:84.8800%;padding:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;border-left:none;
mso-border-left-alt:none;border-right:1.5000pt solid windowtext;mso-border-right-alt:1.5000pt solid windowtext;
border-top:1.0000pt solid windowtext;mso-border-top-alt:0.5000pt solid windowtext;border-bottom:1.5000pt solid windowtext;
mso-border-bottom-alt:1.5000pt solid windowtext;" valign="center" width="84.8800%">
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;"><o:p>
                            &nbsp;</o:p></span></p>
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;"><o:p>
                            &nbsp;</o:p></span></p>
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;"><o:p>
                            &nbsp;</o:p></span></p>
                        <span style="font-family: 宋体; font-size: 10.5000pt; mso-font-kerning: 1.0000pt;">
                        <asp:TextBox ID="TextBox20" runat="server" BorderStyle="None" Height="16px" 
                            style="margin-left: 0px" Width="751px"></asp:TextBox>
                        </span>
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;"><o:p>
                            &nbsp;</o:p></span></p>
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;"><o:p>
                            &nbsp;</o:p></span></p>
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;"><o:p>
                            &nbsp;</o:p></span></p>
                        <p align="center" class="MsoNormal" style="text-align:center;">
                            <span style="font-family:宋体;font-size:10.5000pt;mso-font-kerning:1.0000pt;"><o:p></o:p>
                            </span>
                        </p>
                    </td>
                </tr>
            </table>
        </div>
    
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server"  Text="提 交" OnClick="Button1_Click" style="height: 21px" />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" PostBackUrl="~/ZHHeader_RWD_Index.aspx"  Text="返 回" OnClick="Button2_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="打 印" OnClientClick="return print()"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Text="更 新" OnClick="Button4_Click" />
    </form>
</body>
</html>
<script type="text/javascript">
    function print() {
        var pc = document.getElementById("PrintContent");
        var pw = window.open(",", 'width=500,height=400');
        pw.document.write('<html>');
        pw.document.write('<head>');
        pw.document.write('</head>');
        pw.document.write('<body>');
        pw.document.write(pc.innerHTML);
        pw.document.write('</body>');
        pw.document.write('</html>');
        pw.document.close();
        setTimeout(function () {
            pw.print();
        }, 500);
        return false;
    }
</script>