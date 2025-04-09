<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZHHeader_WTD.aspx.cs" Inherits="WebCheckProject.ZHHeader_WTD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>委托单</title>
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
            <a href="#">委托单管理</a>
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
            <p>@版权所有：陕西省水利电力勘测设计研究院（集团）有限公司地勘分院</p>
        </div>
    </div>
    <div id="tb">
        <div class="tbcd">
            <img src="images/img/align-left.png" alt="" srcset="">
            <p style="position: relative; float: right;padding-right: 80px;"> 
               综合负责人 <asp:Label ID="Label4" runat="server"></asp:Label></p>
            <img src="images/img/profile.png" alt="" srcset="" style="float: right; padding-right: 10px;">

        </div>
    </div>
    <div id="content1">
        <asp:Panel ID="Panel1" runat="server" Height="143px"  CssClass="auto-style4">
        <br />
        &nbsp;
        <br />
        &nbsp;<asp:Label ID="Label1" runat="server" Text="任务单编号"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="工程名称"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="选择委托单" ></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="list_1" >
            <asp:ListItem>空</asp:ListItem>
            <asp:ListItem>材料部门委托单</asp:ListItem>
            <asp:ListItem>岩石委托单</asp:ListItem>
            <asp:ListItem>土工委托单</asp:ListItem>
            <asp:ListItem>建材用砂砾石委托单</asp:ListItem>
            <asp:ListItem>粗粒土委托单</asp:ListItem>
                <asp:ListItem>水样委托单</asp:ListItem>
        </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="搜索" />
            <br />
            &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" style="Height:500px;">
        <asp:Button ID="Button2" runat="server" Text="新建材料部门委托单" OnClick="Button1_Click" Style="float:left;margin-left:50px"/>
        <asp:Button ID="Button4" runat="server" Text="新建岩石委托单" OnClick="Button2_Click" Style="float:left;margin-left:30px" />
        <asp:Button ID="Button1" runat="server" Text="新建土工委托单" OnClick="Button7_Click" Style="float:left;margin-left:30px" />
        <asp:Button ID="Button5" runat="server" Text="新建建材用砂砾石委托单" OnClick="Button4_Click" Style="float:left;margin-left:30px" />
        <asp:Button ID="Button6" runat="server" Text="新建粗粒土委托单" OnClick="Button5_Click" Style="float:left;margin-left:30px" />
        <asp:Button ID="Button7" runat="server" Text="新建水样委托单" OnClick="Button6_Click" Style="float:left;margin-left:30px" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" AutoGenerateEditButton="True" CellPadding="4" DataKeyNames="cno" GridLines="None"  OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing"  OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="8">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="cno" HeaderText="任务单编号" ReadOnly="True" SortExpression="cno" />
                <asp:BoundField DataField="gcmc" HeaderText="工程名称" SortExpression="gcmc" />
                <asp:BoundField DataField="Wtdw" HeaderText="委托单位" SortExpression="Wtdw" />
                <asp:BoundField DataField="Qyr" HeaderText="取样人" SortExpression="Qyr" />
                
            </Columns>
        </asp:GridView>
      </asp:Panel>
    </div>
    </form>
</body>
</html>
