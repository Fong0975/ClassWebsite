<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Account_Home.aspx.vb" Inherits="WebPage_Admin_Account_Home" %>

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

    

	<div class="row">
		<div class="col-md-12">
			<div class="page-header" 
                style="background-image: url('../../Images/WebPic/Header_Title_Back_Admin.png')">
				<h1 style="color: #FF9900; font-weight: bold;">
					<font style="text-shadow:3px 3px 3px #888888; -webkit-text-stroke: 1px #000000;">班級聯絡簿 ContactBook</font> <br /><small style="margin-left:50px; color:#FFEFDF;-webkit-text-stroke: 0.4px #966633;">這是管理者的介面 Here is place where Administrator manage.</small>
				</h1>
			</div>
		</div>
	</div>

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
        <div class="col-md-2">
			<dl style="padding-top: 20px">
				<dt style="display: inline; margin-top: 20px; font-weight:bold;">
					<font style=" font-size:14pt; font-weight:bold;">管理捷徑<br /><small>Shortcut</small></font>
				</dt>
				<hr />
				<dt style="margin-top: 5px;">
					帳戶啟動<br /><small>Approve Register</small>
				</dt>
				<dd >
					<a href="Admin_Account_NotApproved.aspx">More...</a>
				</dd >
				<dt style="margin-top: 10px;">
					班級管理<br /><small>Class Manage</small>
				</dt>
				<dd>
					<a href="ClassManage.aspx">More...</a>
				</dd>
			</dl>
		</div>
		<div class="col-md-10" ">
            <div style="margin-left:10px;">
			<h3>
				帳戶啟動 <small>Approve Register</small>
			</h3>
			<p>
			    這裡將會顯示所有已註冊過，但未通過信箱驗證的教職員帳戶申請。系統管理員可以針對個別的資料進行手動批准、啟用帳戶，申請者將不需進行帳戶驗證。
            </p>
            <p>
				&nbsp;<small>There are those user which has registered but has not check email. Administrator can approve those register.</small>
			</p>
            <p style=" margin-left:20px"><small><a href="Admin_Account_NotApproved.aspx">More...</a></small></p>
            <br />

          <h3>
				班級管理 <small>Class Manage</small>
			</h3>
			<p>
			    您可以在這裡添加全校的科系、班別等選單，這些選單將會提供進行教室創建的老師們填寫的依據。
            </p>
            <p>
				&nbsp;<small>Administrator edit the list of department and class in school. The list is the option when teachers creating class.</small>
			</p>
            <p style=" margin-left:20px"><small><a href="ClassManage.aspx">More...</a></small></p>
            <br />
        </div>
		
		</div>
	</div>
	
</div>
<div style="margin-bottom:80px;"></div>
        <script src="../src/js/jquery.min.js"></script>
        <script src="../src/js/bootstrap.min.js"></script>
        <script src="../src/js/scripts.js"></script>
    </form>
  </body>
</html>