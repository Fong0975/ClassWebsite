<%@ Page Language="VB" AutoEventWireup="false" CodeFile="EmailModify.aspx.vb" Inherits="WebPage_Public_Profile" %>
    
<!DOCTYPE html>
<html lang="en">
    <head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>班級聯絡簿 ContactBook</title>
    <link rel="shortcut icon" href="../../Images/WebPic/favicon.ico" type="image/x-icon" />

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="../../src/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../src/css/style.css" rel="stylesheet">

     <script src="../../Jquery/sweetalert.min.js"></script> 
     <link rel="stylesheet" type="text/css" href="../../Jquery/sweetalert.css">

  </head>
  <body>
    <form id="Form1" runat="server">
       <div class="container-fluid">
            <div class="row">
		<div class="col-md-12" 
            style="font-size: 11pt; vertical-align: middle; text-align: right; margin-top: 20px; top: 0px; left: 0px;">
			 
			<asp:Label ID="lb_User_Name" runat="server" style="margin:10px 4px 3px 4px;"></asp:Label>
            <asp:LinkButton ID="lkb_Login" runat="server" style="margin:10px 4px 3px 4px;">登入 Login</asp:LinkButton>
            <br /><br />
            <asp:LinkButton ID="lkb_Index" runat="server" PostBackUrl="~/WebPage/Index.aspx" style="margin:10px 4px 3px 4px;">系統首頁</asp:LinkButton>
		    <asp:LinkButton ID="lkb_Personal" runat="server" Visible="False"  style="margin:10px 4px 3px 4px;">個人後台</asp:LinkButton>
            <asp:LinkButton ID="lkb_Class" runat="server" Visible="False" style="margin:10px 4px 3px 4px;">個人班級</asp:LinkButton>
		    <asp:LinkButton ID="lkb_ClassManage" runat="server" style="margin:10px 4px 3px 4px;">班級管理</asp:LinkButton>
		    <hr />
        </div>
	</div>

    <a href="Profile.aspx">
	<div class="row">
		<div class="col-md-12">
			<div class="page-header" 
                
                style="background-image: url('../../Images/WebPic/Header_Title_Back_Student.jpg')">
				<h1 style="color: #FF9900; font-weight: bold;">
					<font style="text-shadow:3px 3px 3px #888888; -webkit-text-stroke: 1px #000000;">班級聯絡簿 ContactBook</font> <br /><small style="margin-left:50px; color:#FFEFDF;-webkit-text-stroke: 0.4px #966633;">這是學生的個人後台介面 
                    Here is a personal backstage of student.</small>
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
        <div class="col-md-2" >
			<dl style="padding-top: 20px">
				<dt style="display: inline; margin-top: 20px; font-weight:bold;">
					<font style=" font-size:14pt; font-weight:bold;">管理捷徑<br /><small>Shortcut</small></font>
				</dt>
				<hr />
				<dt style="margin-top: 5px;">
					個人作業總覽<br /><small>Homework List</small>
				</dt>
				<dd >
					<a href="Personal.aspx">More...</a>
				</dd >
				<dt style="margin-top: 10px;">
					個人資料編輯<br /><small>Profile Edit</small>
				</dt>
				<dd>
					<a href="Profile.aspx">More...</a>
				</dd>
			</dl>
		</div>
		<div class="col-md-10" ">
            <div style="margin-left:10px;">
			<h3>
				信箱修改 <small>Email Modify</small>
			</h3>
			<p>
			    如果你需要更改信箱必須從這裡進行，我們需要驗證您的信箱位置，以免忘記密碼時無法取回。
            </p>
            <p>
				<small>We must verify email which you had filled in. in order to avoid, you will be not able to get your password back.</small>
			</p>
            <br />

            <asp:Panel ID="pn_NonCheck" runat="server" Visible="False">
                <asp:Label ID="lb_Modifying" runat="server" Text="等待確認：abc@yahoo.com.tw"></asp:Label>
                &nbsp;
                <asp:Button ID="bt_Mail_Modify" runat="server" Text="移除"  style="border: 5px solid #7A6563; color:#ECE2D0; background-color:#D3A588; vertical-align:middle; top: 0px; left: -1px;" 
                        PostBackUrl="~/WebPage/Student/EmailModify.aspx" />
                <asp:Button ID="bt_Back" runat="server" onclientclick="bt_Back_Click" 
                    Style="background-color:#A16B47;" Text="返回" />
            </asp:Panel>
            <asp:Panel ID="pn_Modify_Email" runat="server">
                <asp:TextBox ID="tb_Modify_Email" runat="server" placeholder="請輸入欲更改的信箱位置，如：abc@gmail.com"></asp:TextBox>
                <asp:Button ID="bt_Modify_Email_Submit" runat="server" Text="變更" />
                <asp:Button ID="bt_Back0" runat="server" onclientclick="bt_Back_Click" 
                    Style="background-color:#A16B47;" Text="返回" />
            </asp:Panel>
<br />
          


        </div>
		
		</div>
		
	</div>
	
</div>
<div style="margin-bottom:80px;"></div>

         <script type="text/javascript">

             function confirmReset() {
                 swal({
                     title: "信箱變更完成", text: "您可以前往信箱驗證了",
                     type: "success",
                     showCancelButton: false,
                     confirmButtonText: "OK",
                     closeOnConfirm: false
                 }, function () {
                     window.location.href = "Profile.aspx";
                 });
             }

        </script>
        <script src="../src/js/jquery.min.js"></script>
        <script src="../src/js/bootstrap.min.js"></script>
        <script src="../src/js/scripts.js"></script>
    </form>
  </body>
</html>