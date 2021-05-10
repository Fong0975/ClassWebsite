<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Member.aspx.vb" Inherits="WebPage_Class_Member" %>

<!DOCTYPE html>
<html lang="en">
    <head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Bootstrap 3, from LayoutIt!</title>
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
			<div id="ClassHeader" runat="server" class="page-header" style="min-height:180px;">

				<h1 style="color: #FF9900; font-weight: bold;">
                    
                 
					<font style="text-shadow:3px 3px 3px #cccccc; -webkit-text-stroke: 1px #808080;">
                        <asp:Label ID="lb_Classroom_Header_ClassNickname" runat="server" Text="超級資三" ></asp:Label>
                     </font>
                        
                     <div style="margin-left:30px; margin-top:8px; background:rgba(100%,50%,0%,0.6); width:90%; max-width:500px;" >
                            <asp:Label ID="lb_Classroom_Header_Name" runat="server" Text="102資料處理科3" style=" color:#5F021F;" Font-Size="18px"></asp:Label>
                     </div>

				</h1>

                <blockquote class="pull-right" style="color:#3A2D32; font-weight:bold; background:rgba(90%,90%,90%,0.6); width:95%; max-width:400px;">
				<p><asp:Label ID="lb_Classroom_Header_Slogan" runat="server" Text=""></asp:Label></p>
			</blockquote>
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
           <div style="text-align:center; margin-bottom:25px;">
            <asp:Image ID="img_Classroom_List_User" runat="server" ImageUrl="~/Images/UserPic/0-Who.jpg"  class="img-circle" style="margin-top: 15px; margin-bottom: 10px;" Height="140px" Width="140px" />
            <br />
            <asp:HyperLink ID="hl_Classroom_List_UserName" runat="server" 
                NavigateUrl="~/WebPage/Login.aspx">尚未登入</asp:HyperLink>
            </div>
			<dl>
				<dt>
                    
                    <asp:HyperLink ID="hy_Classroom_List_Member" runat="server"  
            NavigateUrl="~/WebPage/Class/Member.aspx">班級成員<br /><small>Class Member</small></asp:HyperLink>
				</dt>
				<dd style="margin-bottom:15px;">
					能在本班生存，必定擁有不凡本領，所有成員，各個菁英。<br /><small>There is all remarkable members in this classroom.</small>
				</dd>
				<dt>
					<asp:HyperLink ID="hy_Classroom_List_Cadres" runat="server" 
            NavigateUrl="~/WebPage/Class/Cadres.aspx">班級幹部<br /><small>Class Cadres</small></asp:HyperLink>
    
				</dt>
				<dd style="margin-bottom:15px;">
					天將降大任於斯人也，這些是為我們服務的辛苦幹部們。<br /><small>There is all hard cadres in this classroom.</small>
				</dd>
				<dt>
					<asp:HyperLink ID="hy_Classroom_List_Timetable" runat="server" 
            NavigateUrl="~/WebPage/Class/Timetable.aspx">班級課表<br /><small>Class Timetable</small></asp:HyperLink>
    
				</dt>
				<dd style="margin-bottom:15px;">
					了解每一堂課，提早做完準備，這是班級的課表。<br /><small>There is timetable of those classes.</small>
				</dd>
				<dt>
                <asp:HyperLink ID="hy_Classroom_List_Calendar" runat="server" 
            NavigateUrl="~/WebPage/Class/Calendar.aspx">班級行事曆<br /><small> Class Calendar</small></asp:HyperLink>
				</dt>
				<dd style="margin-bottom:15px;">
					溫故而知新，這裡寫著所有應該完成的事。<br /><small>There is all stroke in this classroom.</small>
				</dd>
                <dt>
                <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/WebPage/Class/Forum.aspx">班級討論區<br /><small> Class Forum</small></asp:HyperLink>
				</dt>
				<dd>
					讓問題從溝通中迎刃而解吧！有事沒事就來這逛逛吧！<br /><small>There is forum in this classroom.</small>
				</dd>
			</dl>
		</div>
		<div class="col-md-10">
			
			
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Account %>" 
            SelectCommand="SELECT * FROM [Account]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Account %>" 
            SelectCommand="SELECT * FROM [User]">
            <SelectParameters>
                
            </SelectParameters>
        </asp:SqlDataSource>
            <h3>
				班級成員 Class Member
			</h3>
			<p>
				以下是所有這個班級的成員們以及他們的簡歷經過，歡迎各位認識我們。登入之後還可以看到自己同學的聯絡方式喔！</p>
            <p>
				&nbsp;<small>There is all members of this class. Welcome to know us.  After logining, you can view the contact way of your classmates.</small>
			</p>
            <br />
            <br />
        <asp:FormView ID="fv_Teacher" runat="server" DataKeyNames="Account_ID" 
            DataSourceID="SqlDataSource2" Width="100%">
            <EditItemTemplate>
                Account_ID:
                <asp:Label ID="Account_IDLabel1" runat="server" 
                    Text='<%# Eval("Account_ID") %>' />
                <br />
                User_Name:
                <asp:TextBox ID="User_NameTextBox" runat="server" 
                    Text='<%# Bind("User_Name") %>' />
                <br />
                User_Mail:
                <asp:TextBox ID="User_MailTextBox" runat="server" 
                    Text='<%# Bind("User_Mail") %>' />
                <br />
                User_Picture:
                <asp:TextBox ID="User_PictureTextBox" runat="server" 
                    Text='<%# Bind("User_Picture") %>' />
                <br />
                User_Nickname:
                <asp:TextBox ID="User_NicknameTextBox" runat="server" 
                    Text='<%# Bind("User_Nickname") %>' />
                <br />
                User_Info_Sex:
                <asp:CheckBox ID="User_Info_SexCheckBox" runat="server" 
                    Checked='<%# Bind("User_Info_Sex") %>' />
                <br />
                User_Info_Birthday:
                <asp:TextBox ID="User_Info_BirthdayTextBox" runat="server" 
                    Text='<%# Bind("User_Info_Birthday") %>' />
                <br />
                User_Contact_CellPhone:
                <asp:TextBox ID="User_Contact_CellPhoneTextBox" runat="server" 
                    Text='<%# Bind("User_Contact_CellPhone") %>' />
                <br />
                User_Contact_HomePhone:
                <asp:TextBox ID="User_Contact_HomePhoneTextBox" runat="server" 
                    Text='<%# Bind("User_Contact_HomePhone") %>' />
                <br />
                User_Contact_Address:
                <asp:TextBox ID="User_Contact_AddressTextBox" runat="server" 
                    Text='<%# Bind("User_Contact_Address") %>' />
                <br />
                User_Contact_Facebook:
                <asp:TextBox ID="User_Contact_FacebookTextBox" runat="server" 
                    Text='<%# Bind("User_Contact_Facebook") %>' />
                <br />
                User_Contact_Line:
                <asp:TextBox ID="User_Contact_LineTextBox" runat="server" 
                    Text='<%# Bind("User_Contact_Line") %>' />
                <br />
                User_Class_ID:
                <asp:TextBox ID="User_Class_IDTextBox" runat="server" 
                    Text='<%# Bind("User_Class_ID") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Account_ID:
                <asp:TextBox ID="Account_IDTextBox" runat="server" 
                    Text='<%# Bind("Account_ID") %>' />
                <br />
                User_Name:
                <asp:TextBox ID="User_NameTextBox0" runat="server" 
                    Text='<%# Bind("User_Name") %>' />
                <br />
                User_Mail:
                <asp:TextBox ID="User_MailTextBox0" runat="server" 
                    Text='<%# Bind("User_Mail") %>' />
                <br />
                User_Picture:
                <asp:TextBox ID="User_PictureTextBox0" runat="server" 
                    Text='<%# Bind("User_Picture") %>' />
                <br />
                User_Nickname:
                <asp:TextBox ID="User_NicknameTextBox0" runat="server" 
                    Text='<%# Bind("User_Nickname") %>' />
                <br />
                User_Info_Sex:
                <asp:CheckBox ID="User_Info_SexCheckBox0" runat="server" 
                    Checked='<%# Bind("User_Info_Sex") %>' />
                <br />
                User_Info_Birthday:
                <asp:TextBox ID="User_Info_BirthdayTextBox0" runat="server" 
                    Text='<%# Bind("User_Info_Birthday") %>' />
                <br />
                User_Contact_CellPhone:
                <asp:TextBox ID="User_Contact_CellPhoneTextBox0" runat="server" 
                    Text='<%# Bind("User_Contact_CellPhone") %>' />
                <br />
                User_Contact_HomePhone:
                <asp:TextBox ID="User_Contact_HomePhoneTextBox0" runat="server" 
                    Text='<%# Bind("User_Contact_HomePhone") %>' />
                <br />
                User_Contact_Address:
                <asp:TextBox ID="User_Contact_AddressTextBox0" runat="server" 
                    Text='<%# Bind("User_Contact_Address") %>' />
                <br />
                User_Contact_Facebook:
                <asp:TextBox ID="User_Contact_FacebookTextBox0" runat="server" 
                    Text='<%# Bind("User_Contact_Facebook") %>' />
                <br />
                User_Contact_Line:
                <asp:TextBox ID="User_Contact_LineTextBox0" runat="server" 
                    Text='<%# Bind("User_Contact_Line") %>' />
                <br />
                User_Class_ID:
                <asp:TextBox ID="User_Class_IDTextBox0" runat="server" 
                    Text='<%# Bind("User_Class_ID") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                <table cellpadding="0" cellspacing="0" 
                    style="font-family: 微軟正黑體; font-size: 12pt; color: #333333; vertical-align: middle; text-align: left; padding: 5px; width: 100%">
                    <tr>
                        <td colspan="2" 
                            style="font-weight: bold; color: #FFEEDF; background-color: #552600; padding-left: 10px; font-size: 28pt;">
                            班級導師</td>
                    </tr>
                    <tr>
                        <td rowspan="3" 
                            style="padding: 4px; width: 25%; text-align: center; vertical-align: middle;">
                            <asp:Label ID="lb_User_Sex" runat="server" Text='<%# Eval("User_Info_Sex") %>' 
                                Visible="False"></asp:Label>
                            <asp:Image ID="img_CadresShow_UserPic" runat="server" 
                                ImageUrl='<%# "../../Images/UserPic/" & Eval("User_Picture") %>' 
                                Width="90%" />
                        </td>
                        <td 
                            
                            style="padding: 14px; background-color: #FFF9F9; color: #7E1518; font-size: 18pt; font-weight: bold;">
                            <asp:Label ID="Account_IDLabel" runat="server" Text='<%# Eval("Account_ID") %>' 
                                Visible="False" />
                            <asp:Label ID="lb_CadresShow_UserName" runat="server" Font-Size="18pt" 
                                Text='<%# Eval("User_Name") %>'></asp:Label>
                            <br />
                            &nbsp;<asp:Label ID="lb_CadresShow_Nickname" runat="server" Font-Size="14pt"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-left: 3px dashed #808080; border-style: none; background-color: #FFF9F9; color: #7E1518;">
                            <asp:Label ID="lb_MemberSt_Teaching" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-left: 3px dashed #808080; background-color: #FFF9F9; color: #7E1518; border-style: none;">
                            <asp:Label ID="lb_MemberTe_Contact" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:FormView>
            <br />
            <br />
            <table cellpadding="0" cellspacing="0" style="width: 100%">
                <tr>
                    <td style="font-weight: bold; color: #FEE9EA; background-color: #540002; padding-left: 10px; font-size: 28pt;">
                        班級成員</td>
                </td>
                </tr>
            </table>
            <asp:DataList ID="dl_Cadres_Show" runat="server" DataKeyField="Account_Mid" 
            DataSourceID="SqlDataSource1" Width="100%">
            <ItemTemplate>
                <table cellpadding="0" cellspacing="0" style="font-family: 微軟正黑體; font-size: 12pt; color: #333333; vertical-align: middle; text-align: left; padding: 5px; width: 100%">
                    <tr>
                        <td rowspan="3" 
                            
                            
                            
                            
                            style="padding: 5px; width: 25%; border-bottom-style: solid; border-bottom-width: 1px; border-bottom-color: #552600; vertical-align: middle; text-align: center;">
                            <asp:Image ID="img_CadresShow_UserPic" runat="server" Width="90%" />
                        </td>
                        <td 
                            
                            
                            
                            style="border: 3px none #808080; padding: 14px; color: #804415; background-color: #FFF7F0; font-size: 18pt; font-weight: bold;">
                            <asp:Label ID="Account_IDLabel" runat="server" Text='<%# Eval("Account_Mid") %>' 
                                Visible="False" />
                            <asp:Label ID="lb_CadresShow_UserAccount" runat="server" 
                                Text='<%# Eval("Account_User") %>' Font-Size="16pt" />
                            <br />
                            　<asp:Label ID="lb_CadresShow_UserName" runat="server" Font-Size="18pt"></asp:Label>
                            <asp:Label ID="lb_CadresShow_Nickname" runat="server" Font-Size="14pt"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-left: 3px dashed #808080; border-bottom: 1px solid #808080; border-style: none; padding: 8px; background-color: #FFF7F0; color: #804415;">
                            <asp:Label ID="lb_MemberSt_Cadres" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-left: 3px dashed #808080; border-bottom: 1px solid #808080; padding: 8px; border-style: none none solid none; background-color: #FFF7F0; color: #804415; border-bottom-color: #552600; border-left-color: #808080;">
                            <asp:Label ID="lb_MemberSt_Contact" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    
			<div style= "margin-bottom:100px;"></div>
		</div>
	</div>
</div>

    <script src="../../src/js/jquery.min.js"></script>
    <script src="../../src/js/bootstrap.min.js"></script>
    <script src="../../src/js/scripts.js"></script>
    </form>
  </body>
</html>
