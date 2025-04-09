<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="WebCheckProject.AddUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>超级管理员</title>
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
             srcset="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;平台管理</span>
            <a href="#">人员管理</a>
            <a href="Changepsd.aspx">密码修改</a>
        </div>
        <div id="dbbs">
            <p>@版权所有：陕西省水利电力勘测设计研究院（集团）有限公司地勘分院</p>
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
<asp:Panel ID="Panel2" runat="server" Height="382px" Style="padding-top:100px">
            <br />
            *角色姓名：
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            *腾讯通号： 
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                 <br />
                 <br />
                 <br />
                 *密码：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                 <br />
                 <br />
                 <br />
                 *赋值角色：&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Typename" DataValueField="Typename">
            </asp:DropDownList>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [Typename] FROM [usertype]"></asp:SqlDataSource>
                 &nbsp;&nbsp;&nbsp;
                 <br />
                 <br />
                 <br />
                 *选择部门：&nbsp;
                 <asp:DropDownList ID="DropDownList3" runat="server">
                     <asp:ListItem>材料部门</asp:ListItem>
                     <asp:ListItem>化学部门</asp:ListItem>
                     <asp:ListItem>土工部门</asp:ListItem>
                     <asp:ListItem>岩土部门</asp:ListItem>
                     <asp:ListItem>外业部门</asp:ListItem>
                     <asp:ListItem>综合部门</asp:ListItem>
                     <asp:ListItem>其他</asp:ListItem>
                 </asp:DropDownList>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="提 交" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="取 消" PostBackUrl="~/Admin_Index_New.aspx" />
        </asp:Panel>
    </div>
    </form>
</body>
</html>
