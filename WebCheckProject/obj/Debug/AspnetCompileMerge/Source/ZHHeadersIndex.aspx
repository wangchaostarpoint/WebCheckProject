<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZHHeaders.aspx.cs" Inherits="WebCheckProject.ZHHeaders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>委托单首页</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <link href="styles/menustyle.css" type="text/css" rel="stylesheet"/>
    <script src="resources/scripts/jquery-3.2.1.min.js"></script>
    <script src="scripts/menu.js"></script>
</head>
<body>
    <form id="form1" runat="server">
     <div id='mymenu'>
        <div class="logomenu">
            <img src="images/img/logo.png" alt="" srcset="">
            <p>检验检测管理系统</p>
        </div>
        <div class="meuneline">
            <img src="images/img/meuneline.png" alt="" srcset="">
        </div>
        <div class="collapsed">
            <span class="menuspan"><img src="images/img/menuelogo.png" alt=""
                    srcset="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;单据管理</span>
            <a href="#">委托单管理</a>
            <a href="#">任务单管理</a>
            <a href="#">报告单管理</a>
        </div>
        <div class="collapsed">
            <span class="menuspan"><img src="images/img/menuelogo.png" alt=""
                    srcset="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;系统管理</span>
            <a href="#">密码修改</a>
            <a href="#">退出登录</a>
        </div>
        <div id="dbbs">
            <p>@版权所有：陕西省水利电力勘测设计研究院地勘分院</p>
        </div>
    </div>
    <div id="tb">
        <div class="tbcd">
            <img src="images/img/align-left.png" alt="" srcset="">
            <p style="position: relative; float: right;padding-right: 80px;">
                <br />
                用户名：<asp:Label ID="Label1" runat="server"></asp:Label>
                <br /></p>
            <img src="images/img/profile.png" alt="" srcset="" style="float: right; padding-right: 10px;">

        </div>
    </div>
    <div id="content1">
                <asp:Panel ID="Panel1" runat="server" Height="74px" 
            style="margin-left: 193px;">
            <br />
&nbsp;
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>材料部门委托单（包括自揽项目委托单）</asp:ListItem>
                <asp:ListItem>其他部门委托单</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Height="415px" style="margin-left: 192px">
            <br />
            &nbsp;&nbsp;
            <input id="Button1" type="button" value="返 回" />
            <asp:Panel ID="Panel3" runat="server" Height="497px">
            </asp:Panel>
            <br />
        </asp:Panel>
    </div>
    <div id="content1"></div>
        </form>
</body>
</html>
