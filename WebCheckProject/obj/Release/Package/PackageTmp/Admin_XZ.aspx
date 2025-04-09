<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_XZ.aspx.cs" Inherits="WebCheckProject.Admin_XZ" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
           <link href="styles/menustyle.css" type="text/css" rel="stylesheet"/>
       <script src="scripts/menu.js"></script>
    <title>文件路径</title>
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
            <a href="Admin_Index_New.aspx">角色管理</a>
             <a href="Changepsd.aspx">密码修改</a>
            <a href="login.aspx">退出登录</a>
        </div>
            <div class="collapsed">
            <span class="menuspan"><img src="images/img/menuelogo.png" alt=""
             srcset="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;文件路径</span>
            <a href="Admin_XZ.aspx">文件路径</a>
        </div>
        <div id="dbbs">
            <p>@版权所有：陕西省水利电力勘测设计研究院地勘分院（集团）有限公司</p>
        </div>
    </div>
    <div id="tb">
        <div class="tbcd">
            <img src="images/img/align-left.png" alt="" srcset="">
            <p style="position: relative; float: right;padding-right: 80px;">尊敬的超级管理员！<a href="login.aspx">退出登录</a></p>
            <img src="images/img/profile.png" alt="" srcset="" style="float: right; padding-right: 10px;">

        </div>
    </div>
    <div id="content1">
 
            <asp:Panel ID="Panel2" runat="server" Height="136px" style="margin-left: 187px">
                <br />
                <br />
                <br />
                报告单号： 
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="搜 索" />
            </asp:Panel>
          <asp:Panel ID="Panel1" runat="server" Height="478px" 
        style="margin-left: 189px; margin-top: 30px">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Rp_no" AllowSorting="True" OnPageIndexChanging="GridView1_PageIndexChanging">
            <Columns>
                <asp:BoundField DataField="Rp_no" HeaderText="报告单" ReadOnly="True" />
                <asp:BoundField DataField="savepath" HeaderText="存储地址" ReadOnly="True" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <br />
    </asp:Panel>

        </div>
    </form>
</body>
</html>
