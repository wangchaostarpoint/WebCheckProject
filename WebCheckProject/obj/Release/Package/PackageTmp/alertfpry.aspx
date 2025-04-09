<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="alertfpry.aspx.cs" Inherits="WebCheckProject.alertfpry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
<!-- 弹出页面的HTML -->
<div id="selectPersonModal" class="modal">
    <!-- 选择人员的UI元素 -->
    &nbsp;&nbsp;&nbsp;
    <br />
    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
    </asp:CheckBoxList>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <button id="selectButton">选择</button>
</div>
    </form>
</body>



</html>
