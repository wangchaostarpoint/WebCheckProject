<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tips1.aspx.cs" Inherits="WebCheckProject.tips1" %>

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
    </div><div>
             <asp:Label ID="Label5" runat="server" Text="不支持直接在首页编辑，请点击返回，搜索后编辑。"></asp:Label>
             <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ZHHeader_WTD.aspx">返回</asp:HyperLink>
         </div>
    </form>
</body>
</html>
