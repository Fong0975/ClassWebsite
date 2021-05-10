<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Register.aspx.vb" Inherits="WebPage_Teacher_Teacher_Register" %>
       

<!DOCTYPE html>
<html lang="en">
  <head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>班級聯絡簿 ContactBook</title>
    <link rel="shortcut icon" href="../Images/WebPic/favicon.ico" type="image/x-icon" />

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="../src/css/bootstrap.min.css" rel="stylesheet">
    <link href="../src/css/style.css" rel="stylesheet">

    <script src="../Jquery/sweetalert.min.js"></script> 
    <link rel="stylesheet" type="text/css" href="../Jquery/sweetalert.css">

  </head>
  <body>
    <form id="Form1" runat="server">
       <div class="container-fluid">
		<div class="row">
		<div class="col-md-12" 
            style="font-size: 11pt; vertical-align: middle; text-align: right; margin-top: 20px; top: 0px; left: 0px;">
			 
            <asp:LinkButton ID="lkb_Personal" runat="server" Visible="True" 
                PostBackUrl="~/WebPage/Index.aspx" CausesValidation="False">首頁</asp:LinkButton>
&nbsp;<asp:LinkButton ID="lkb_Login" runat="server" PostBackUrl="~/WebPage/Login.aspx" 
                CausesValidation="False">登入 Login</asp:LinkButton>
		</div>
	</div>

    <a href="Index.aspx">
	<div class="row">
		<div class="col-md-12">
			<div class="page-header">
				<h1 style="color: #FF9900; font-weight: bold;">
					<font style="text-shadow:3px 3px 3px #cccccc; -webkit-text-stroke: 1px #808080;">班級聯絡簿 ContactBook</font> <br /><small style="margin-left:50px; color:#3A2D32;background:rgba(90%,90%,90%,0.6);">用系統讓友誼不失聯 The system makes friendship be more close.</small>
				</h1>
			</div>
		</div>
	</div>
    </a>

        <div class="row">
		<div class="col-md-12" style="font-family: 微軟正黑體; font-size: 10pt; color: #808080">
            <asp:SiteMapPath ID="SiteMapPath1" runat="server">
                <CurrentNodeStyle Font-Bold="True" ForeColor="#666666" />
                <NodeStyle ForeColor="Gray" />
                <PathSeparatorStyle ForeColor="#999999" />
                <RootNodeStyle ForeColor="Gray" />
            </asp:SiteMapPath>
        </div>
    </div>

	<div class="row" style="margin-left:8px; margin-right:8px;">
		<div class="col-md-12" 
            style="vertical-align: middle; text-align: left; height: 300px;">

            <h3>
				教師帳戶註冊 <small>Teacher Register</small>
			</h3>
			<p>
				只要你是符合我們條件的教職員工，就有資格申請系統帳戶，取得建立班級等等的資格！別再猶豫了，現在就加入我們，只需要通過信箱的驗證就可以盡情享受系統的樂趣與便利了喔！</p>
            <p>
				&nbsp;<small>As long as you’re the faculty members qualified, you can apply for an account to get right to create class group, etc.  Don’t consider more and join us quickly.  You only need to pass test verification of email then this system will make you enjoy fun and convenient.</small>
			</p>

            <br /><br />
     <div Style="margin-bottom:120px; margin-left:5%; margin-right:5%; text-align:left;">
         帳號：<asp:TextBox ID="tb_Register_Account" runat="server" Font-Names="微軟正黑體" Font-Size="12pt" 
            Width="60%" Placeholder="請設定一組名稱作為帳號"></asp:TextBox>
    
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="tb_Register_Account" ErrorMessage="請輸入帳號" Font-Names="微軟正黑體" 
            Font-Size="11pt" ForeColor="Red"></asp:RequiredFieldValidator>
    
        <br />
        <br />
    
         密碼：<asp:TextBox ID="tb_Register_Password" runat="server" Font-Names="微軟正黑體" Font-Size="12pt" 
            Width="60%" Placeholder="請設定一組可靠的文字作為密碼" TextMode="Password"></asp:TextBox>
    
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="tb_Register_Password" ErrorMessage="請輸入密碼" 
            Font-Names="微軟正黑體" Font-Size="11pt" ForeColor="Red"></asp:RequiredFieldValidator>
    
        <br />
        <br />
    
         確認：<asp:TextBox ID="tb_Register_Password_Check" runat="server" Font-Names="微軟正黑體" Font-Size="12pt" 
            Width="60%" Placeholder="請再次輸入密碼進行確認" TextMode="Password"></asp:TextBox>
    
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="tb_Register_Password_Check" ErrorMessage="請重複輸入密碼" 
            Font-Names="微軟正黑體" Font-Size="11pt" ForeColor="Red"></asp:RequiredFieldValidator>
    
        <br />
        <br />
    
         信箱：<asp:TextBox ID="tb_Register_Email" runat="server" Font-Names="微軟正黑體" Font-Size="12pt" 
            Width="50%" Placeholder="請輸入電子信箱'@'符號前的帳號名稱"></asp:TextBox>
    
        <asp:DropDownList ID="ddl_Register_Mail_Server" runat="server" 
            Font-Names="微軟正黑體" Font-Size="12pt" ForeColor="#333333" >
            <asp:ListItem Selected="True" Value="@yahoo.com.tw">Yahoo!(@yahoo.com.tw)</asp:ListItem>
            <asp:ListItem Value="@gmail.com">Gmail(@gmail.com)</asp:ListItem>
            <asp:ListItem Value="@hotmail.com">Outlook(@hotmail.com)</asp:ListItem>
        </asp:DropDownList>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="tb_Register_Email" ErrorMessage="請輸入信箱" Font-Names="微軟正黑體" 
            Font-Size="11pt" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
    
         姓名：<asp:TextBox ID="tb_Register_User_Name" runat="server" Font-Names="微軟正黑體" Font-Size="12pt" 
            Width="60%" Placeholder="請輸入您的姓名"></asp:TextBox>
    
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="tb_Register_User_Name" ErrorMessage="請輸入姓名" 
            Font-Names="微軟正黑體" Font-Size="11pt" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
         <br />
         性別：<asp:RadioButtonList ID="radio_Register_Gender" runat="server" 
            RepeatDirection="Horizontal" style="margin-top:20px; display:inline;">
            <asp:ListItem Selected="True" Value="True">男生</asp:ListItem>
            <asp:ListItem Value="False">女生</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <br />
        <asp:Button ID="bt_Register_Submit" runat="server" Text="註冊" />
    
        <asp:Button ID="bt_Back" runat="server" Text="取消" 
             Style="background-color:#A16B47;" PostBackUrl="~/WebPage/Index.aspx" 
             CausesValidation="False" />
    


            
            </div>
        </div>
	</div>

</div>

        <script type="text/javascript">

function confirmReset() {
  swal({   
          title: "註冊會員成功",   text: "請前往信箱開啟確認信件，進行帳號啟用手續",
           type: "success",   
           showCancelButton: false,     
           confirmButtonText: "OK",   
           closeOnConfirm: false 
         }, function(){   
                window.location.href="Index.aspx";
      });
}

        </script>
        <script src="../src/js/jquery.min.js"></script>
        <script src="../src/js/bootstrap.min.js"></script>
        <script src="../src/js/scripts.js"></script>
    </form>
  </body>
</html>