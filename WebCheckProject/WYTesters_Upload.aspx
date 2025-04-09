<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WYTesters_Upload.aspx.cs" Inherits="WebCheckProject.WYTesters_Upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>外业实验员（未上传）</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
               <link href="styles/menustyle.css" type="text/css" rel="stylesheet"/>
       <script src="scripts/menu.js"></script>
    <script src="resources/scripts/jquery-3.2.1.min.js"></script>
    <script src="data/document.js"></script>
    <script src="files/外业实验员（未上传）/data.js"></script>
       <script type="text/javascript">
        function confirmAction() {
            // 弹出确认对话框
            return confirm("您确定要执行此操作吗？请注意一旦上传，不可更改。");
        }
       </script>
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
            <a href="#">报告上传</a>
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
            <p style="position: relative; float: right;padding-right: 80px;">外业实验员 <asp:Label ID="Label4" runat="server"></asp:Label></p>
            <img src="images/img/profile.png" alt="" srcset="" style="float: right; padding-right: 10px;">

        </div>
    </div>
    <div id="content1">
         <asp:Panel ID="Panel1" runat="server" >
            <br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp; *工程名称：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="192px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                             ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="red" Enabled="true">必填项</asp:RequiredFieldValidator>
            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="提 交" />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *委托单上传&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:FileUpload ID="FileUpload1" runat="server" />
             <asp:Button ID="Button1" runat="server" Text="上 传" OnClientClick="return confirmAction();" OnClick="Button1_Click"/>&nbsp; &nbsp;<asp:Label ID="StatusLabel3" runat="server" Text="" />
             <br />
            <br />
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Height="522px">
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; *报告单上传&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:FileUpload ID="FileUpload2" runat="server" />
           
          <asp:Button ID="Button3" runat="server" Text="上 传" OnClientClick="return confirmAction();" OnClick="Button3_Click" />&nbsp;&nbsp;
            <asp:Label ID="StatusLabel2" runat="server" Text="" />
            <br />
            <br />
            &nbsp;&nbsp;
           </asp:Panel>
    </div>
    </form>
</body>
</html>
