<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebCheckProject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>登录页面</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/登录页面/styles.css" type="text/css" rel="stylesheet"/>
    <script src="resources/scripts/jquery-3.2.1.min.js"></script>
    <script src="data/document.js"></script>
    <script src="files/登录页面/data.js"></script>
</head>
<body style="background-image: url('./images/登录页面/u00.jpg')">
    <form id="form1" runat="server">
       <div id="base" >
         <div style =" display: flex;justify-content: center;align-items: center;height: 200px; "><img src="images/img/标志.png" alt="" srcset=""  style="width:60%;padding-top:150px;"></div>
      <!-- Unnamed (矩形) -->
   <div id="u1" class="login-box" aria-atomic="False" aria-autocomplete="list">
        <h2>欢迎登录</h2>
             <div id="u3"  aria-atomic="False" aria-autocomplete="list">
          <asp:TextBox ID="txtusername" runat="server" Height="45px" placeholder=" 用户名 " CssClass="sr"></asp:TextBox>
      </div>
               <div id="u5"  aria-atomic="False" aria-autocomplete="list">
            <asp:TextBox ID="txtpass" runat="server" Height="45px"  placeholder=" 密 码 " CssClass="sr"></asp:TextBox>
      </div>
               <div id="u7"  aria-atomic="False" aria-autocomplete="list">
            <asp:TextBox ID="txtcapt" runat="server" Height="45px"  placeholder=" 验证码 " CssClass="sr"></asp:TextBox>
            <asp:Image ID="imgcap" runat="server" Height="60px" Width="122px" ImageUrl="~/captcha.aspx" style="height:30px;" />
      </div>
             <div id="u8" class="ax_default image" style="left:1230px;top:510px; width: 295px; height: 70px;">
       <!-- <img id="u8_img" class="img " src="images/登录页面/u8.svg"/> -->
      </div>
             <div id="u9" class="primary_button" aria-required="False" aria-sort="none">       
            <asp:Button src="" ID="Button1" runat="server" Text="登录"  OnClick="Button1_Click" BorderStyle="None" CssClass="dl_button" />
      </div>
        </div>
   </div>
  
    </form>            
    
           <!-- Unnamed (底部标签)     -->
        <div style="background-color: rgb(6, 6, 94);height: 140px;text-align: center;line-height: 100px;position: fixed; bottom:0;width:100%;">
        <P style="color: #fff; width:100%">版权所有归：陕西省水利电力勘测设计研究院（集团）有限公司</P>
    </div>
       </div>
      </body>
</html>
<script type="text/javascript">
    var a = 0;
    //点击图片更换验证码
    document.getElementById("imgcap").onclick = function () {
        this.setAttribute("src", "captcha.aspx?id=" + a);
        a++;
    }
</script>