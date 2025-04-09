<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Index_New.aspx.cs" Inherits="WebCheckProject.Admin_Index_New" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>角色管理</title>
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
             srcset="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;角色管理</span>
            <a href="#">角色管理</a>
             <a href="Changepsd.aspx">密码修改</a>
            <a href="login.aspx">退出登录</a>
        </div>
            <div class="collapsed">
            <span class="menuspan"><img src="images/img/menuelogo.png" alt=""
             srcset="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;文件路径</span>
            <a href="Admin_XZ.aspx">文件路径</a>
        </div>
        <div id="dbbs">
            <p>@版权所有：陕西省水利电力勘测设计研究院（集团）有限公司地勘分院</p>
        </div>
    </div>
    <div id="tb">
        <div class="tbcd">
            <img src="images/img/align-left.png" alt="" srcset="">
            <p style="position: relative; float: right;padding-right: 80px;">超级管理员 <asp:Label ID="Label4" runat="server"></asp:Label></p>
            <img src="images/img/profile.png" alt="" srcset="" style="float: right; padding-right: 10px;">

        </div>
    </div>
    <div id="content1">
 <asp:Panel ID="Panel1" runat="server" Height="478px">
        &nbsp;&nbsp;
     </br>
     </br>
     </br>
        <asp:Label ID="Label1" runat="server" Text="用户名"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="查 询" OnClick="Button1_Click" />
        <asp:Panel ID="Panel2" runat="server" Height="229px" style="margin-top: 18px">
            <br />
            <asp:Button ID="Button2" runat="server" PostBackUrl="~/AddUser.aspx" 
                Text="添加人员" OnClick="Button2_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:GridView ID="GridView1" runat="server" 
                AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TXTno" OnPageIndexChanging="GridView1_PageIndexChanging">
                <Columns>
                    <asp:BoundField DataField="username" HeaderText="姓名" SortExpression="username" />
                    <asp:BoundField DataField="TXTno" HeaderText="腾讯通号" ReadOnly="True" SortExpression="TXTno" />
                    <asp:BoundField DataField="bmmc" HeaderText="部门名称" SortExpression="bmmc" />
                    <asp:BoundField DataField="role" HeaderText="角色" SortExpression="role" />
                </Columns>
            </asp:GridView>
            <hr />
        </asp:Panel></asp:Panel>
    </div>
    </form>
</body>
</html>
