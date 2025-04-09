<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WYHeader.aspx.cs" Inherits="WebCheckProject.WYHeader" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>外业负责人</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
               <link href="styles/menustyle.css" type="text/css" rel="stylesheet"/>
       <script src="scripts/menu.js"></script>
    <script src="resources/scripts/jquery-3.2.1.min.js"></script>
    <script src="data/document.js"></script>
    <script src="files/外业实验员（未上传）/data.js"></script>
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
            <a href="#">任务单列表</a>
        </div>
                      <div class="collapsed">
            <span class="menuspan"><img src="images/img/menuelogo.png" alt=""
                    srcset="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;系统管理</span>
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
            <p style="position: relative; float: right;padding-right: 80px;"> 外业负责人 <asp:Label ID="Label4" runat="server"></asp:Label></p>
            <img src="images/img/profile.png" alt="" srcset="" style="float: right; padding-right: 10px;">

        </div>
    </div>
    <div id="content1">
         <asp:Panel ID="Panel1" runat="server" Height="722px"  Style="margin-left:50px;">
        <br />
        <br />
        <br />
        <br />
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="任务单编号"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="search-box"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="查 询" OnClick="Button1_Click" CssClass="search-button" />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style2" DataKeyNames="cno"  OnRowDataBound="GridView1_RowDataBound" AllowPaging="True" OnRowCommand="GridView1_RowCommand" OnPageIndexChanging="GridView1_PageIndexChanging">
                <Columns>
                    <asp:BoundField  HeaderText="序号" />
                    <asp:BoundField DataField="cno" HeaderText="任务单编号" ReadOnly="True" SortExpression="cno" />
                    <asp:BoundField DataField="Ypbh" HeaderText="样品编号" SortExpression="Ypbh" />
                    <asp:BoundField DataField="jcxm" HeaderText="检测项目" SortExpression="jcxm" />
                    <asp:BoundField DataField="tester" HeaderText="实验员" SortExpression="tester" />
                    <asp:BoundField DataField="rwdzt" HeaderText="样品状态" SortExpression="rwdzt" />
                </Columns>
            </asp:GridView>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
