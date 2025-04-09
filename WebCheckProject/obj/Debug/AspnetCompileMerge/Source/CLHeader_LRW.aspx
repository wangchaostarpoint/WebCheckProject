<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CLHeader_LRW.aspx.cs" Inherits="WebCheckProject.CLHeader_LRW" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>部门负责人</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
       <link href="styles/menustyle.css" type="text/css" rel="stylesheet"/>
       <script src="scripts/menu.js"></script>
    <script src="resources/scripts/jquery-3.2.1.min.js"></script>
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
            <p style="position: relative; float: right;padding-right: 80px;">负责人 <asp:Label ID="Label4" runat="server"></asp:Label></p>
            <img src="images/img/profile.png" alt="" srcset="" style="float: right; padding-right: 10px;">

        </div>
    </div>
    <div id="content1">
         <asp:Panel ID="Panel1" runat="server" style=" margin-top: 30px" ViewStateMode="Enabled">
        <br />
        <br />
        <br />
        <br />
        <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cno" OnRowDataBound="GridView1_RowDataBound" OnRowCommand="GridView1_RowCommand"
                AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5">
                 <Columns>
                    <asp:BoundField DataField="cno" HeaderText="任务单编号" ReadOnly="True" SortExpression="cno" />
                    <asp:BoundField DataField="Ypbh" HeaderText="样品编号" SortExpression="Ypbh" />
                    <asp:BoundField DataField="Wtrq" HeaderText="委托日期" SortExpression="Wtrq"  DataformatString="{0:yyyy-MM-dd}" HtmlEncode="false"/>
                    <asp:BoundField DataField="sdwcrq" HeaderText="商定完成日期" SortExpression="sdwcrq"  DataformatString="{0:yyyy-MM-dd}" HtmlEncode="false"/>
                    <asp:BoundField DataField="cj" HeaderText="厂家（产地）" SortExpression="cj" />
                     <asp:BoundField DataField="Ypmc" HeaderText="样品名称" SortExpression="Ypmc" />                   
                    <asp:BoundField DataField="jcxm" HeaderText="检测项目" SortExpression="jcxm" />    
                    <asp:BoundField DataField="lqsl" HeaderText="样品数量" SortExpression="lqsl" />
                    <asp:BoundField DataField="rwdzt" HeaderText="任务单状态" SortExpression="rwdzt" />
                    <asp:BoundField DataField="tester" HeaderText="填表人员" SortExpression="tester" />
                   <asp:TemplateField  HeaderText="填表人员">
                            <ItemTemplate><asp:DropDownList ID="DropDownList1" runat="server"  DataTextField="username" DataValueField="username"></asp:DropDownList></ItemTemplate>
                  </asp:TemplateField>
                    <asp:TemplateField   HeaderText="操作">
                           <%--<ItemTemplate><asp:Button ID="Button1" runat="server" Text="分派" CommandArgument='<%# "DropDownList1_" + Container.RowIndex %>' CommandName="GetValue" /></ItemTemplate>--%>
                        <ItemTemplate><asp:Button ID="Button1" runat="server" Text="分派" CommandName="GetValue" /></ItemTemplate>
                 </asp:TemplateField>
                   <asp:BoundField DataField="lqrd" HeaderText="任务领取人员" SortExpression="lqrd" />    
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
