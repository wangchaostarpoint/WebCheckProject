<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZHHeader_RWD_Index.aspx.cs" Inherits="WebCheckProject.ZHHeader_RWD_Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>任务单</title>
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
                    srcset="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;单据管理</span>
            <a href="ZHHeader_WTD.aspx">委托单管理</a>
            <a href="#">任务单管理</a>
            <a href="ZHHeader_BGD_Table.aspx">报告单管理</a>
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
            <p style="position: relative; float: right;padding-right: 80px;">综合负责人 <asp:Label ID="Label4" runat="server"></asp:Label></p>
            <img src="images/img/profile.png" alt="" srcset="" style="float: right; padding-right: 10px;">

        </div>
    </div>
    <div id="content1">
        <asp:Panel ID="Panel1" runat="server" 
        Style="padding-top:80px">
        <asp:Label ID="Label1" runat="server" Text="任务单编号"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="工程名称"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="部门"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>材料部门</asp:ListItem>
            <asp:ListItem>土工部门</asp:ListItem>
            <asp:ListItem>岩石部门</asp:ListItem>
            <asp:ListItem>化学部门</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="搜索" />
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Height="417px" Style="margin-left: 189px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cno" GridLines="None" Height="137px" Style="margin-top: 50px" OnRowDeleting="GridView1_RowDeleting" OnRowCommand="GridView1_RowCommand" OnPageIndexChanging="GridView1_PageIndexChanging" AllowPaging="True" PageSize="10">
            <Columns>
                <asp:BoundField DataField="cno" HeaderText="任务单编号" ReadOnly="True" SortExpression="cno" />
                <asp:BoundField DataField="Gcmc" HeaderText="工程名称" SortExpression="Gcmc" />
                <asp:BoundField DataField="Wtdw" HeaderText="委托单位" SortExpression="Wtdw" />
                <asp:BoundField DataField="lqr" HeaderText="任务单领取人" SortExpression="lqr" />
                <asp:BoundField DataField="bmmc" HeaderText="部门名称" SortExpression="bmmc" />
                <asp:BoundField DataField="rwdzt" HeaderText="任务单状态" SortExpression="rwdzt" />
                <%-- <asp:BoundField DataField="Bcxx" HeaderText="备注" SortExpression="Bcxx" />--%>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="Button2" runat="server" CommandName="Select" Text="编辑" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </asp:Panel>
    </div>          
    </form>
</body>
</html>
