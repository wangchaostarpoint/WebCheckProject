<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4.aspx.cs" Inherits="WebCheckProject._4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
        <div>
            <asp:CheckBox ID="CheckBox1" runat="server" Text="1" />
            <asp:CheckBox ID="CheckBox2" runat="server" Text="2" />
            <asp:CheckBox ID="CheckBox3" runat="server" Text="3" />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>

</body>
</html>
