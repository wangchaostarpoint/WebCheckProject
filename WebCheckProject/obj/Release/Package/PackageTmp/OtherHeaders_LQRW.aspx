<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OtherHeaders_LQRW.aspx.cs" Inherits="WebCheckProject.OtherHeaders_LQRW" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>土岩化部门</title>
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
            <a href="#">任务领取</a>
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
            <p style="position: relative; float: right;padding-right: 80px;">部门负责人 <asp:Label ID="Label4" runat="server"></asp:Label></p>
            <img src="images/img/profile.png" alt="" srcset="" style="float: right; padding-right: 10px;">

        </div>
    </div>
    <div id="content1">
         <asp:Panel ID="Panel1" runat="server" Height="649px" 
        style="margin-left: 192px;" ViewStateMode="Enabled">
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cno" OnRowDataBound="GridView1_RowDataBound" OnRowCommand="GridView1_RowCommand" OnPageIndexChanging="GridView1_PageIndexChanging" AllowPaging="True" PageSize="10">
                 <Columns>
                     <asp:BoundField DataField="cno" HeaderText="任务单编号" ReadOnly="True" SortExpression="cno" />
                     <asp:BoundField DataField="Wtdw" HeaderText="委托单位" SortExpression="Wtdw" />
                     <asp:BoundField DataField="Qyr" HeaderText="取样人" SortExpression="Qyr" />
                     <asp:BoundField DataField="Qyrq" HeaderText="取样日期" SortExpression="Qyrq" DataFormatString="{0:yyyy-MM-dd}" HtmlEncode="false" />
                     <asp:BoundField DataField="tester" HeaderText="填表实验员" SortExpression="tester" />
                     <asp:BoundField DataField="lqrd" HeaderText="填表人员" SortExpression="lqrd" />
                    <asp:TemplateField  HeaderText="填表实验员">
                            <ItemTemplate><asp:DropDownList ID="DropDownList1" runat="server"  DataTextField="username" DataValueField="username"></asp:DropDownList></ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField   HeaderText="操作">
                           <%--<ItemTemplate><asp:Button ID="Button1" runat="server" Text="分派" CommandArgument='<%# "DropDownList1_" + Container.DataItemIndex %>' CommandName="GetValue" /></ItemTemplate>--%>
                           <ItemTemplate><asp:Button ID="Button1" runat="server" Text="分派" CommandName="GetValue" /></ItemTemplate>
                 </asp:TemplateField>
                        
                     <asp:TemplateField HeaderText="分派人员"><ItemTemplate><asp:DropDownList ID="DropDownList2" runat="server"  DataTextField="username" DataValueField="username"></asp:DropDownList></ItemTemplate></asp:TemplateField>
                     <asp:TemplateField HeaderText="添加"><ItemTemplate><asp:Button ID="Button2" runat="server" Text="分派" CommandArgument='<%# "DropDownList2_" + Container.DataItemIndex %>' CommandName="GetValue1" /></ItemTemplate></asp:TemplateField>
                     <asp:TemplateField HeaderText="重置人员"><ItemTemplate><asp:Button ID="Button3" runat="server" Text="清空" CommandArgument='<%# "DropDownList2_" + Container.DataItemIndex %>' CommandName="DeletValue" /></ItemTemplate></asp:TemplateField>
                 </Columns>
            </asp:GridView>
              </asp:Panel>
    </div>
    </form>
</body>
</html>
