<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Changepsd.aspx.cs" Inherits="WebCheckProject.Changepsd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>密码修改</title>
      <link href="styles/menustyle.css" type="text/css" rel="stylesheet"/>
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
                    srcset="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;系统管理</span>
            <a href="#">会员信息</a>
             <a href="Changepsd.aspx">密码修改</a>
            <a href="login.aspx">退出登录</a>
        </div>
        <div id="dbbs">
            <p>@版权所有：陕西省水利电力勘测设计研究院（集团）有限公司地勘分院</p>
        </div>
    </div>
    <div id="tb">
        <div class="tbcd">
            <img src="images/img/align-left.png" alt="" srcset="">
            <p style="position: relative; float: right;padding-right: 80px;">尊敬的用户！<a href="login.aspx">退出登录</a></p>
            <img src="images/img/profile.png" alt="" srcset="" style="float: right; padding-right: 10px;">

        </div>
    </div>
    <div id="content1">
        <asp:Panel ID="Panel1" runat="server" Height="319px" Style ="padding-top:100px ">
                <br />
                用户名：<asp:Label ID="Label1" runat="server"></asp:Label>
                <br />
                <br />
                旧密码：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <br />
                新密码：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="修 改" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="取 消" />
            </asp:Panel>
    </div>
    </form>
</body>
</html>
