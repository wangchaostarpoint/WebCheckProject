<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZHHeader_xmxz_Index.aspx.cs" Inherits="WebCheckProject.ZHHeader_xmxz_Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>项目选择</title>
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
            <p>@版权所有：陕西省水利电力勘测设计研究院地勘分院</p>
        </div>
    </div>
    <div id="tb">
        <div class="tbcd">
            <img src="images/img/align-left.png" alt="" srcset="">
           <%-- <p style="position: relative; float: right;padding-right: 80px;">综合负责人 <asp:Label ID="Label4" runat="server"></asp:Label></p>--%>
            <img src="images/img/profile.png" alt="" srcset="" style="float: right; padding-right: 10px;">

        </div>
    </div>
    <div id="content1">
                <asp:Panel ID="Panel1" runat="server" Height="143px"  CssClass="auto-style4">
        <br />
        &nbsp;
        <br />
            <asp:Label ID="Label3" runat="server" Text="选择检测类别" ></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="list_1">
            <asp:ListItem>岩石</asp:ListItem>
            <asp:ListItem>土工</asp:ListItem>
            <asp:ListItem>建材用砂砾石</asp:ListItem>
            <asp:ListItem>粗粒土</asp:ListItem>
            <asp:ListItem>水样</asp:ListItem>
        </asp:DropDownList>
        &nbsp; &nbsp;
            <asp:Button ID="Button1" runat="server" Text="选择" OnClick="Button1_Click" />
        <br />
        &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </asp:Panel>
 <div>
    <asp:Panel ID="Panel2" runat="server" Height="417px" Style="margin-left: 189px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="xmbh"  GridLines="None" Height="137px" Style="margin-top: 10px" AllowPaging="True"   OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="10">
            <Columns>
                <asp:BoundField DataField="Lmc" HeaderText="类型" ReadOnly="True" SortExpression="Lmc" />
                <asp:BoundField DataField="Lbmc" HeaderText="类别" SortExpression="Lbmc" />
                <asp:BoundField DataField="xmbh" HeaderText="项目编号" SortExpression="xmbh" />
                <asp:BoundField DataField="xmmc" HeaderText="项目名称" SortExpression="xmmc" />
                <asp:BoundField DataField="kxbh" HeaderText="细类编号" SortExpression="kxbh" />
                <asp:BoundField DataField="kxmc" HeaderText="细类名称" SortExpression="kxmc" />
                <%-- <asp:BoundField DataField="Bcxx" HeaderText="备注" SortExpression="Bcxx" />--%>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:checkbox ID="checkbox1" runat="server" CommandName="Select" Text="选择" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </asp:Panel>
     </div>
   <%-- <div style="margin-top:150px"><asp:Button ID="Button2" runat="server" Text="提交" OnClick="Button2_Click" /></div>--%>
    </div>    

    </form>
   
</body>
</html>
