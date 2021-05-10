<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="WebPage_Login" %>


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

	<div class="row">
		<div class="col-md-12" 
            style="vertical-align: middle; text-align: center; height: 300px;">

            <h3>
				使用者登入 <small>Login</small>
			</h3>
			<p>
				快登入您的帳戶來遨遊系統功能吧！</p>
            <p>
				&nbsp;<small>There is list of all classes. Welcome to view to know what is left in this stage.</small>
			</p>

	        <asp:TextBox ID="tb_Login_Account" placeholder="帳號 Account" runat="server" Style="margin-top:20px; text-align:center; max-width:500px;"></asp:TextBox><br />
             <asp:TextBox ID="tb_Login_Password" placeholder="密碼 Password" TextMode="Password" runat="server" Style="margin-top:10px; text-align:center;  max-width:500px;"></asp:TextBox>
	        <br />
            <asp:Button ID="bt_Login_Submit" runat="server" Text="確定" style=" margin:25px 8px 10px 8px;"/>
            <asp:Button ID="bt_Login_Cancel" runat="server" Text="取消"  style=" margin:25px 8px 10px 8px;background-color:#A16B47;"  PostBackUrl="~/WebPage/Index.aspx" 
             CausesValidation="False" />
            <br />
            <br />
            <div Style="margin-bottom:120px">
            
            <asp:HyperLink ID="hl_Teacher_Register" runat="server" 
                NavigateUrl="~/WebPage/Register.aspx">教師註冊</asp:HyperLink>
            &nbsp;|
            <asp:HyperLink ID="hl_FPassword" runat="server" 
                NavigateUrl="~/WebPage/FPassword.aspx">忘記密碼</asp:HyperLink>

            </div>
        </div>
	</div>

</div>

        <script>
            function a () {
                swal("Oopss...", "Something went wrong!", "error");
            };
        </script>
        <script src="../src/js/jquery.min.js"></script>
        <script src="../src/js/bootstrap.min.js"></script>
        <script src="../src/js/scripts.js"></script>
    </form>
  </body>
</html>