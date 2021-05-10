<%@ Page Language="VB" AutoEventWireup="false" CodeFile="FPassword.aspx.vb" Inherits="WebPage_Login" %>


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
				尋找密碼 <small>Find Password</small>
			</h3>
			<p>
				如果你已經驗證過信箱了，恭喜你，輸入以下資訊你就可以取回你的密碼嘍！若還沒驗證過的話，你只能請老師刪除你的帳戶後重新建立嘍！</p>
            <p>
				&nbsp;<small>If you had verified your mailbox, you can get a mail of your password after filling in these field.<br />Conversely, you have to ask the teacher to help you delete and recreate your account.</small>
			</p>

	        <asp:TextBox ID="tb_Login_Account" placeholder="帳號 Account" runat="server" Style="margin-top:20px; text-align:center; max-width:500px;"></asp:TextBox><br />
             <asp:TextBox ID="tb_Login_Password" placeholder="電子信箱 Email" runat="server" Style="margin-top:10px; text-align:center;  max-width:500px;"></asp:TextBox>
	        <br />
            <asp:Button ID="bt_Login_Submit" runat="server" Text="確定" style=" margin:25px 8px 10px 8px;"/>
            <asp:Button ID="bt_Login_Cancel" runat="server" Text="取消"  style=" margin:25px 8px 10px 8px;background-color:#A16B47;" />
            <br />
            <br />
            <div Style="margin-bottom:120px">
            
           
            </div>
        </div>
	</div>

</div>

        <script type="text/javascript">

            function confirmReset() {
                swal({
                    title: "密碼查詢完成", text: "系統已將您的密碼寄送到您的信箱了",
                    type: "success",
                    showCancelButton: false,
                    confirmButtonText: "OK",
                    closeOnConfirm: false
                }, function () {
                    window.location.href = "Index.aspx";
                });
            }

        </script>
        <script src="../src/js/jquery.min.js"></script>
        <script src="../src/js/bootstrap.min.js"></script>
        <script src="../src/js/scripts.js"></script>
    </form>
  </body>
</html>