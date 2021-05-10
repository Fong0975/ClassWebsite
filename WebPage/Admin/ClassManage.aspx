<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ClassManage.aspx.vb" Inherits="WebPage_Admin_ClassManage" %>

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
  <form id="form1" runat="server">
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


	<a href="Account_Home.aspx">
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
				班級管理 <small>Class Manage</small>
			</h3>
			<p>
			    在這裡新增的科別、班別將會是之後教師建立班級時的選項。另外，選項的順序將會影響首頁班級清單等的顯示。</p>
            <p>
				&nbsp;<small>Those item will become option when teachers creating class. In addition, the sort of item will affect showing ‘Class List’ and so on.</small>
			</p>
            <br />

           
    <div>
    
     <table width="100%" 
            style="font-size: 12pt; vertical-align: middle; text-align: center; border-top-style: solid; border-top-width: 3px; border-color: #666666; border-bottom-style: solid; border-bottom-width: 3px">
            <tr>
                <td 
                    style="border-color: #666666; border-width: 3px; 3; border-right-style: dashed;">
        <h4>科別 <small>Department</small></h4></td>
                <td>
                    <h4>班別 <small>Class</small></h4><asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Class %>" 
                        SelectCommand="SELECT * FROM [ClassList] WHERE ([List_Style] = @List_Style) ORDER BY [List_Sort]">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="2" Name="List_Style" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="border-color: #666666; border-width: 3px; 3; border-right-style: dashed;">
                    <asp:SqlDataSource ID="SqlDataSource1" 
                        runat="server" ConnectionString="<%$ ConnectionStrings:Class %>" 
                        SelectCommand="SELECT * FROM [ClassList] WHERE ([List_Style] = @List_Style) ORDER BY [List_Sort]">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="0" Name="List_Style" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:ListBox ID="lb_DepList" runat="server" DataSourceID="SqlDataSource1" 
                        DataTextField="List_Name" DataValueField="ClassList_ID" Width="100%">
                    </asp:ListBox>
                    <asp:Button ID="bt_DepList_UP" runat="server" Text="上移" />
                    <asp:Button ID="bt_DepList_Del" runat="server" Text="刪除" />
                </td>
                <td>
                    <asp:ListBox ID="lb_ClassList" runat="server" DataSourceID="SqlDataSource2" 
                        DataTextField="List_Name" DataValueField="ClassList_ID" Width="100%">
                    </asp:ListBox>
                    <asp:Button ID="bt_ClassList_UP" runat="server" Text="上移" />
                    <asp:Button ID="bt_ClassList_Del" runat="server" Text="刪除" />
                </td>
            </tr>
            </table>
        <br />
        新增科別/班別種類<br />
       <table width="100%" 
            style="font-size: 12pt; vertical-align: middle; text-align: center; border-top-style: solid; border-top-width: 3px; border-color: #666666; border-bottom-style: solid; border-bottom-width: 3px">
            <tr>
                <td style="border-color: #666666; border-width: 3px 3px 2px 3px; 3; border-right-style: dashed; border-bottom-style: solid; width: 120px;">
                    新增種類</td>
                <td style="border-width: 2px; border-color: #666666; border-bottom-style: solid; text-align: left; padding-left: 5px;">
                    <asp:RadioButtonList ID="radio_InsertCL_DC" runat="server" 
                        RepeatDirection="Horizontal" CssClass="RadioButtonList">
                        <asp:ListItem Selected="True" Value="0">科別</asp:ListItem>
                        <asp:ListItem Value="2">班別</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td style="border-color: #666666; border-width: 3px 3px 2px 3px; 3; border-right-style: dashed; border-bottom-style: solid; width: 120px;">
                    選項名稱</td>
                <td style="border-width: 2px; border-color: #666666; text-align: left; border-bottom-style: solid;">
                    <asp:TextBox ID="tb_InsertCL_Name" runat="server" 
                        Placeholder="ex.資處科三年丙班請填「資料處理科」、「三年級」或「丙班」" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="3; " 
                    colspan="2">
                    <asp:Button ID="bt_InsertCL_Submit" runat="server" Text="確定" />
                </td>
            </tr>
        </table>
    
    </div>
    
            <br />
        </div>
		
		</div>
	</div>
	<div style="margin-bottom:100px;"></div>
</div>

        <script src="../src/js/jquery.min.js"></script>
        <script src="../src/js/bootstrap.min.js"></script>
        <script src="../src/js/scripts.js"></script>
    </form>
  </body>
</html>