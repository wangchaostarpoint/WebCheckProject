<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Add_Xiang.aspx.cs" Inherits="WebCheckProject.Admin_Add_Xiang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" Height="353px">
                一、添加一级类：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="提 交" />
                <br />
                <br />
                <br />
                <br />
                <br />
                二、添加二级类：<br /> 
                <br />
                一级类名：<asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
                <br />
                二级类类名：<asp:TextBox ID="TextBox2" runat="server" Width="171px"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" Text="提 交" />
                <br />
                <br />
                <br />
                <br />
                三、添加三级类：<br /> 一级 
                <asp:DropDownList ID="DropDownList2" runat="server">
                </asp:DropDownList>
                &nbsp;&nbsp; 二级<asp:DropDownList ID="DropDownList3" runat="server">
                </asp:DropDownList>
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="添加项名"></asp:Label>
                ： 
                <asp:TextBox ID="TextBox3" runat="server" Width="174px"></asp:TextBox>
                <asp:Button ID="Button3" runat="server" Text="提 交" />
                <br />
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="本页面切勿随意更改！"></asp:Label>
                <br />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
