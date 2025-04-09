<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tester_index.aspx.cs" Inherits="WebCheckProject.Tester_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>实验员</title>
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
                    srcset="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;任务</span>
            <a href="#">任务列表</a>
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
            <p style="position: relative; float: right;padding-right: 80px;">实验员 <asp:Label ID="Label4" runat="server"></asp:Label></p>
            <img src="images/img/profile.png" alt="" srcset="" style="float: right; padding-right: 10px;">

        </div>
    </div>
    <div id="content1">
         <asp:Panel ID="Panel1" runat="server" Height="649px"  ViewStateMode="Enabled">
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cno" OnRowDataBound="GridView1_RowDataBound" OnRowCommand="GridView1_RowCommand" OnPageIndexChanging="GridView1_PageIndexChanging">
                 <Columns>
                     <asp:BoundField DataField="cno" HeaderText="任务单编号" ReadOnly="True" SortExpression="cno" />
                     <asp:BoundField DataField="Wtdw" HeaderText="委托单位" SortExpression="Wtdw" />
                    <asp:BoundField DataField="Ypbh" HeaderText="样品编号" SortExpression="Ypbh" />
                    <asp:BoundField DataField="Wtrq" HeaderText="委托日期" SortExpression="Wtrq" DataFormatString="{0:yyyy-MM-dd}" HtmlEncode="false" />
                    <asp:BoundField DataField="jcxm" HeaderText="检测项目" SortExpression="jcxm" />
                      <asp:BoundField DataField="lqsl" HeaderText="领取数量" SortExpression="lqsl" />
                    <asp:BoundField DataField="rwdzt" HeaderText="样单状态" SortExpression="rwdzt" />
                            <asp:TemplateField  HeaderText="更改状态">
                            <ItemTemplate><asp:DropDownList ID="DropDownList1" runat="server"  DataTextField="username" DataValueField="username"></asp:DropDownList></ItemTemplate>
                  </asp:TemplateField>
                    <asp:TemplateField   HeaderText="操作">
                           <ItemTemplate><asp:Button ID="Button1" runat="server" Text="状态更改" CommandArgument='<%# "DropDownList1_" + Container.DataItemIndex %>' CommandName="GetValue1" /></ItemTemplate>                     
                 </asp:TemplateField>
                              <asp:TemplateField  HeaderText="选择模版">
          <ItemTemplate><asp:DropDownList ID="DropDownList2" runat="server"  DataTextField="username" DataValueField="username"></asp:DropDownList></ItemTemplate>
</asp:TemplateField>
                            <asp:TemplateField   HeaderText="操作">
          <ItemTemplate><asp:Button ID="Button2" runat="server" Text="填写" CommandArgument='<%# "DropDownList2_" + Container.DataItemIndex %>' CommandName="GetValue2" /></ItemTemplate>                     
</asp:TemplateField>     
                     <asp:TemplateField HeaderText="操作">
    <ItemTemplate>
       <asp:Button ID="Button3" runat="server" CommandName="Select" CommandArgument='<%# Container.DataItemIndex %>'  Text="编辑" />
    </ItemTemplate>
</asp:TemplateField>
                 </Columns>
            </asp:GridView>
              </asp:Panel>
    </div>
    </form>
</body>
</html>
