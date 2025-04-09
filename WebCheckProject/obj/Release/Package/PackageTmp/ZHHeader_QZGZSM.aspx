<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ZHHeader_QZGZSM.aspx.cs" Inherits="WebCheckProject.ZHHeader_QZGZSM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
            <a href="ZHHeader_RWD_Index.aspx">任务单管理</a>
            <a href="ZHHeader_BGD_Table.aspx">报告单管理</a>
            <a href="#">报告签字盖章</a>
        </div>
        <div class="collapsed">
            <span class="menuspan"><img src="images/img/menuelogo.png" alt=""
                    srcset="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;系统管理</span>
            <a href="#">会员信息</a>
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
            <p style="position: relative; float: right;padding-right: 80px;">尊敬的综合部负责人！<a href="login.aspx">退出登录</a></p>
            <img src="images/img/profile.png" alt="" srcset="" style="float: right; padding-right: 10px;">

        </div>
    </div>

 <div id="content1">
     <br />
            <asp:Panel ID="Panel2" runat="server" Height="72px" Style="margin-left: 50px">
        &nbsp;第一步：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button3" runat="server" Enabled="true" OnClick="Button3_Click" Text="生成报告编号" />
        &nbsp;为了数据安全，一次只能生成一个报告单编号。<br /> <br /> 
        &nbsp;第二步上传扫描件：<asp:FileUpload ID="FileUpload1" runat="server" />
        &nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="上传" Width="71px" />
                &nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="查看" Width="71px" Visible="False" />
                &nbsp;&nbsp;
                <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="返回" />
        </asp:Panel>
     <br /> 
    <asp:Panel ID="Panel3" runat="server" Style="margin-left: 189px">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="cno" Height="326px" Style="margin-top: 10px" OnPageIndexChanging="GridView1_PageIndexChanging" >
            <Columns>
                <asp:BoundField DataField="Rp_no" HeaderText="报告单编号" ReadOnly="True" SortExpression="Rp_no" />
                <asp:BoundField DataField="cno" HeaderText="任务单编号" SortExpression="cno" />
                <asp:BoundField DataField="Gcmc" HeaderText="工程名称" SortExpression="Gcmc" />
                <asp:BoundField DataField="Wtrq" HeaderText="委托日期" SortExpression="Wtrq" DataFormatString="{0:yyyy-MM-dd}" HtmlEncode="false" />
                <asp:BoundField DataField="jcxm" HeaderText="检测项目" SortExpression="jcxm" />
            </Columns>
        </asp:GridView>
        </asp:Panel>
        <asp:Label ID="Label1" runat="server"  Style="color:red"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString2 %>" SelectCommand="SELECT [Ypbh], [Wtrq], [cno], [Rp_no] FROM [report_list_1]"></asp:SqlDataSource>
        <br />
        签字人资质：<br /> 
        <table border="0" cellpadding="0" cellspacing="0" height="106" width="745">
            <colgroup>
                <col width="128" />
                <col width="123" />
                <col width="113" />
                <col width="125" />
                <col width="126" />
                <col width="130" />
            </colgroup>
            <tr height="15">
                <td class="auto-style1" height="21" width="128" x:str="">徐铁铮</td>
                <td class="auto-style2" width="123" x:str="">李亚军</td>
                <td class="auto-style3" width="113" x:str="">张蕊</td>
                <td class="auto-style4" width="125" x:str="">李楠</td>
                <td class="auto-style5" width="126" x:str="">张伟</td>
                <td class="auto-style6" width="130" x:str="">毛嘉玮</td>
            </tr>
            <tr height="15">
                <td class="auto-style7" height="21" x:str="">超级管理员</td>
                <td class="auto-style8" x:str="">超级管理员</td>
                <td class="auto-style8" x:str="">超级管理员</td>
                <td class="auto-style8" x:str="">综合部门负责人</td>
                <td class="auto-style8" x:str="">外业部门负责人</td>
                <td class="auto-style8" x:str="">外业部门负责人</td>
            </tr>
            <tr height="15">
                <td class="auto-style7" height="21" x:str="">陈震亚</td>
                <td class="auto-style8" x:str="">徐青青</td>
                <td class="auto-style8" x:str="">马亮</td>
                <td class="auto-style8" x:str="">白峰</td>
                <td class="auto-style8" x:str="">张思航</td>
                <td class="auto-style8" x:str="">赵泽胤</td>
            </tr>
            <tr height="15">
                <td class="auto-style7" height="21" x:str="">土工部门负责人</td>
                <td class="auto-style8" x:str="">土工部门负责人</td>
                <td class="auto-style8" x:str="">外业实验员</td>
                <td class="auto-style8" x:str="">外业实验员</td>
                <td class="auto-style8" x:str="">普通实验员</td>
                <td class="auto-style8" x:str="">外业实验员</td>
            </tr>
        </table>
        <br /> 
    </div>
    </form>
</body>
</html>
