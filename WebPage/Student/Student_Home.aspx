<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Student_Home.aspx.vb" Inherits="WebPage_Admin_Account_Home" %>

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
                
                style="background-image: url('../../Images/WebPic/Header_Title_Back_Student.jpg')">
				<h1 style="color: #FF9900; font-weight: bold;">
					<font style="text-shadow:3px 3px 3px #888888; -webkit-text-stroke: 1px #000000;">班級聯絡簿 ContactBook</font> <br /><small style="margin-left:50px; color:#FFEFDF;-webkit-text-stroke: 0.4px #966633;">這是學生的個人後台介面 
                    Here is a personal backstage of student.</small>
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

    <asp:Panel ID="pn_NoEmail_Message" runat="server">
            <div class="row">
		        <div class="col-md-12">
			        <div class="alert alert-dismissable alert-danger">
				 
				    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">
					×
				    </button>
				    <h4>
					    警告 Alert!
				    </h4> <strong>你目前尚未通過信箱驗證!</strong> 若沒通過信箱驗證，當你遺忘密碼時將只能刪除帳戶並重新建立，無法取得密碼信件。. <a href="Profile.aspx" class="alert-link">前往驗證</a>
			</div>
		</div>
	</div>
            
        </asp:Panel>

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
				個人作業總覽 <small>Homework List</small>
			</h3>
			<p>
			    這裡會顯示所有班上近期的作業行事曆事項的清單，並依據到「期日長短」及「完成與否」以不同的圖示提醒。而同學在完成該項作業時，則應點進連結裡，按下完成按鈕，登記你的完成並便於確認自己的待辦事項。
            </p>
            <p>
				&nbsp;<small>Here will show those recent stroke of your class calendar, and those stroke have difference icon in accordance with the deadline and completion.  When you completed the stroke, you should click the link of the stroke to sign your finish and confirm own stroke.</small>
			</p>
            <p style=" margin-left:20px"><small><a href="Personal.aspx">More...</a></small></p>
            <br />

          <h3>
				個人資料編輯 <small>Profile Edit</small>
			</h3>
			<p>
			    你可以從這裡修改你的帳戶密碼，也可以在這裡編輯個人的資料及聯絡方式。在這裡填寫的資料只有同班同學可以瀏覽到，希望各位同學認真填寫，以便日後便於彼此間的交流。
            </p>
            <p>
				&nbsp;<small>You can change your password of your account, can also edit profile and contacting way in here.  If you seriously fill in, your classmates and you will more easily contact.</small>
			</p>
            <p style=" margin-left:20px"><small><a href="Profile.aspx">More...</a></small></p>
            <br />
        </div>
		
		</div>
	</div>
	
</div>
<div style="margin-bottom:80px;"></div>
        <script src="../../src/js/jquery.min.js"></script>
        <script src="../../src/js/bootstrap.min.js"></script>
        <script src="../../src/js/scripts.js"></script>
    </form>
  </body>
</html>