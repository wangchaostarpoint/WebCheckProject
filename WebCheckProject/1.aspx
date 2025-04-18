﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1.aspx.cs" Inherits="WebCheckProject._1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateDeleteButton="True">
            </asp:GridView>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Show Text" OnClick="Button1_Click" />

            <asp:Button ID="ButtonPopup" runat="server" Text="打开弹出窗口" OnClientClick="openWindow(); return false;" />
            <asp:GridView ID="GridViewPopup" runat="server" Visible="false">
                
            </asp:GridView>
        </div>
    </form>

    <script type="text/javascript">
    function openWindow() {
        var win = window.open('', 'PopupWindow', 'width=600,height=400');
        win.document.write('<html><head><title>弹出窗口</title>');
        win.document.write('<body>');
        win.document.write('<div>这里是GridView：</div>');
        win.document.write(document.getElementById('<%= GridViewPopup.ClientID %>').innerHTML);
        win.document.write('</body></html>');
        win.document.close();
    }
</script>
</body>
</html>
