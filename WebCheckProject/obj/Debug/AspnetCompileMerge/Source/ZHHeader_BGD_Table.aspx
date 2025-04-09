<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZHHeader_BGD_Table.aspx.cs" Inherits="WebCheckProject.ZHHeader_BGD_Table" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>报告单</title>
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
            <a href="ZHHeader_RWD_Index.aspx">任务单管理</a>
            <a href="ZHHeader_BGD_Table.aspx">报告单管理</a>
        </div>
        <div class="collapsed">
            <span class="menuspan"><img src="images/img/menuelogo.png" alt=""
                    srcset="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;系统管理</span>
            <a href="Changepsd.aspx">密码修改</a>
            <a href="login.aspx">退出登录</a>
        </div>
        <div id="dbbs">
            <p>@版权所有：陕西省水利电力勘测设计研究院地勘分院</p>
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
         <asp:Panel ID="Panel2" runat="server"  Style="margin-left:200px;padding-top:30px;">
        <br />
        <br />
        部门名称：<asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style3" BackColor="White" EnableTheming="True" ForeColor="Black" Width="136px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>材料部门</asp:ListItem>
                 <asp:ListItem>化学部门</asp:ListItem>
                 <asp:ListItem>岩石部门</asp:ListItem>
                 <asp:ListItem>土工部门</asp:ListItem>
        </asp:DropDownList>
        &nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server"   OnClick="Button1_Click" Text="查询" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Rp_no" CssClass="table" Width="994px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="3px"  OnPageIndexChanging="GridView1_PageIndexChanging">
            <Columns>
                <asp:BoundField DataField="Rp_no" HeaderText="报告单编号" ReadOnly="True" SortExpression="Rp_no" />
                <asp:BoundField DataField="cno" HeaderText="任务单编号" SortExpression="cno" />              
                <asp:BoundField DataField="Gcmc" HeaderText="工程名称" SortExpression="Gcmc" />
                <asp:BoundField DataField="Wtrq" HeaderText="委托日期" SortExpression="Wtrq" DataformatString="{0:yyyy-MM-dd}" HtmlEncode="false"/>
                <asp:BoundField DataField="jcxm" HeaderText="检测项目" SortExpression="jcxm" />
                <%--<asp:BoundField DataField="Wcrq" HeaderText="商定完成日期" SortExpression="Wcrq"/>    --%>
                <asp:TemplateField HeaderText="查看">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" OnCommand="Button_Click" Text="查看" CssClass="search-button" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                <p>
                    抱歉，没有找到你要的数据。</p>
            </EmptyDataTemplate>
            <HeaderStyle Width="100px" />
        </asp:GridView>
    </asp:Panel>
    </div>
        </div>
    </form>
</body>
</html>
