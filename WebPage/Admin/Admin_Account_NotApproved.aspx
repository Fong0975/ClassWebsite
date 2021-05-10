<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Admin_Account_NotApproved.aspx.vb" Inherits="WebPage_Admin_Admin_Account_NotApproved" %>

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
				帳戶啟動 <small>Approve Register</small>
			</h3>
			<p>
			    這裡顯示所有已註冊過，但未通過信箱驗證的教職員帳戶申請。系統管理員可以針對個別的申請進行手動批准、啟用帳戶，使申請者將不需進行帳戶驗證；亦可以刪除過久未驗證的申請。</p>
            <p>
				&nbsp;<small>There are those user which has registered but has not check email. Administrator can approve 
                or delete those register.</small>
			</p>
            <br />

           
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Account %>" 
            SelectCommand="SELECT * FROM [Account] WHERE (([Account_Approve] = @Account_Approve) AND ([Account_Style] = @Account_Style)) ORDER BY [Account_ID]">
            <SelectParameters>
                <asp:Parameter DefaultValue="False" Name="Account_Approve" Type="Boolean" />
                <asp:Parameter DefaultValue="Teacher" Name="Account_Style" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" CellSpacing="2" DataKeyNames="Account_Mid" 
            DataSourceID="SqlDataSource1" Width="100%">
            <Columns>
                <asp:TemplateField HeaderText="帳戶資訊" SortExpression="Account_User">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Account_User") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lb_NotApproved_Account" runat="server" 
                            Text='<%# Bind("Account_User") %>'></asp:Label>
                        <br />
                        <asp:Label ID="lb_NotApproved_User_Name" runat="server" Text="李曉明"></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="創建日期" SortExpression="Account_Creat_Date">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" 
                            Text='<%# Bind("Account_Creat_Date") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lb_NotApproved_CreatDate" runat="server" 
                            Text='<%# Bind("Account_Creat_Date", "{0:MM/dd}") %>'></asp:Label>
                        <br />
                        (<asp:Label ID="lb_NotApproved_DateDiff" runat="server" Text="60"></asp:Label>
                        天前)
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="帳戶操作" InsertVisible="False" 
                    SortExpression="Account_Mid">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Account_Mid") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lb_NotApproved_Account_Mid" runat="server" 
                            Text='<%# Bind("Account_Mid") %>' Visible="False"></asp:Label>
                        <asp:Button ID="bt_NotApproved_Approve" runat="server" Text="啟用" 
                            onclick="bt_NotApproved_Approve_Click" />
                        &nbsp;
                        <asp:Button ID="bt_NotApproved_Del" runat="server" 
                            onclientclick="return confirm('確定要刪除此為使用者的註冊紀錄嗎？')" Text="刪除" 
                            onclick="bt_NotApproved_Del_Click" />
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
    
    </div>
    
            <br />
        </div>
		
		</div>
	</div>
	
</div>

        <script src="../src/js/jquery.min.js"></script>
        <script src="../src/js/bootstrap.min.js"></script>
        <script src="../src/js/scripts.js"></script>
    </form>
  </body>
</html>