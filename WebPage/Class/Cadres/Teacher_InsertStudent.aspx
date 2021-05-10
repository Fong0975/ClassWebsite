<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Teacher_InsertStudent.aspx.vb" Inherits="WebPage_Class_Member" %>

<!DOCTYPE html>
<html lang="en">
    <head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Bootstrap 3, from LayoutIt!</title>
    <link rel="shortcut icon" href="../../../Images/WebPic/favicon.ico" type="image/x-icon" />

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="../../../src/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../../src/css/style.css" rel="stylesheet">

     <script src="../../../Jquery/sweetalert.min.js"></script> 
     <link rel="stylesheet" type="text/css" href="../../../Jquery/sweetalert.css">

  </head>
  <body>
  <form id="Form1" runat="server" enctype="multipart/form-data">
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
                    
                    <asp:HyperLink ID="hy_Classroom_Setting_Info" runat="server"  
            NavigateUrl="~/WebPage/Class/Member.aspx">資訊設定<br /><small>Class Information</small></asp:HyperLink>
				</dt>
				<dd style="margin-bottom:15px;">
					在這裡可以設定所有班級網頁的資訊，包括'首頁樣式'、'標語與介紹'等。<br /><small>You can set the information of classroom page here, including ‘Home Style’, ‘Slogan and Description’, etc…..</small>
				</dd>
				<dt>
					<asp:HyperLink ID="hy_Classroom_Setting_Member" runat="server" 
            NavigateUrl="~/WebPage/Class/Cadres/Teacher_InsertStudent.aspx">成員管理<br /><small>Class Member Manage</small></asp:HyperLink>
    
				</dt>
				<dd style="margin-bottom:15px;">
					從這裡可以編輯所有班級的成員，包括新增、編刪等等。<br /><small>You are able to edit the members of this class, such as inserting, edit, delete, etc.</small>
				</dd>
			</dl>
		</div>
		<div class="col-md-10">
			
			
        <h3>
				成員管理 <small>Class Member Manage</small>
			</h3>
			<p>
				以下是所有這個班級的成員，您可以下載標準格式檔並按照說明編輯上傳來新增成員，也可以針對成員進行刪除的動作。但請注意：成員的刪除意味著帳戶的刪除，表示同學將不再擁有登入的資格。</p>
            <p>
				&nbsp;<small>That 
                is all members in this&nbsp; class, you can download the standard file, edit by 
                instruction and upload that to add new members. You also able to delete some 
                members.&nbsp; Please pay attention, it mean delete account that you delete some 
                member of student, the student will not able to login again.</small>
			</p>
            <br />
            <asp:Panel ID="pn_Member_Insert" runat="server" Visible="false">
               <h4 style="font-weight:bold;">加入使用者 <small>Insert Members</small></h4>
                <br />
                <p style="margin-bottom:8px;">Step1.請先下載<asp:HyperLink ID="HyperLink3" runat="server" 
            NavigateUrl="~/File/InsertStudent.xlsx">標準格式檔</asp:HyperLink>，針對檔案填寫學生資料。</p>
            
                <p style="margin-bottom:8px;">Step2.另存新檔，存檔類型設定為「文字檔(Tab字元分隔)」，並對存檔的警告訊息按下確定按鈕。</p>
                <p style="margin-bottom:8px;">Step3.上傳另存完成的「*.txt」檔案
                <asp:FileUpload ID="fu_InsertStudent_Upload" runat="server" style="display:inline;" /></p>
                <br />
                <asp:Button ID="bt_InsertStudent_Upload_Submit" runat="server" 
                    Text="上傳" />
                <asp:Button ID="bt_Back" runat="server" CausesValidation="False" 
                    OnClientClick="bt_Back_Click" Style="background-color:#A16B47;" Text="返回" />
            </asp:Panel>
            <br />
              <asp:Panel ID="pn_Member_List" runat="server">
              <div style="text-align:center; margin-bottom:20px;">
                <asp:Button ID="bt_Member_Insert_Show" runat="server" Text="新增"  Style="background-color:#CFE795;" /></div>
          
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Account %>" 
            DeleteCommand="DELETE FROM [Account] WHERE [Account_Mid] = @Account_Mid" 
            InsertCommand="INSERT INTO [Account] ([Account_ID], [Account_User], [Account_Password], [Account_Style], [Account_Approve], [Account_Creat_Date]) VALUES (@Account_ID, @Account_User, @Account_Password, @Account_Style, @Account_Approve, @Account_Creat_Date)" 
            SelectCommand="SELECT * FROM [Account]" 
            UpdateCommand="UPDATE [Account] SET [Account_ID] = @Account_ID, [Account_User] = @Account_User, [Account_Password] = @Account_Password, [Account_Style] = @Account_Style, [Account_Approve] = @Account_Approve, [Account_Creat_Date] = @Account_Creat_Date WHERE [Account_Mid] = @Account_Mid">
            <DeleteParameters>
                <asp:Parameter Name="Account_Mid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Account_ID" Type="Object" />
                <asp:Parameter Name="Account_User" Type="String" />
                <asp:Parameter Name="Account_Password" Type="String" />
                <asp:Parameter Name="Account_Style" Type="String" />
                <asp:Parameter Name="Account_Approve" Type="Boolean" />
                <asp:Parameter DbType="Date" Name="Account_Creat_Date" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Account_ID" Type="Object" />
                <asp:Parameter Name="Account_User" Type="String" />
                <asp:Parameter Name="Account_Password" Type="String" />
                <asp:Parameter Name="Account_Style" Type="String" />
                <asp:Parameter Name="Account_Approve" Type="Boolean" />
                <asp:Parameter DbType="Date" Name="Account_Creat_Date" />
                <asp:Parameter Name="Account_Mid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
                <br />
                <asp:GridView ID="gv_Teacher_Class_Student_List" runat="server" 
                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Account_Mid" 
                    DataSourceID="SqlDataSource1" Font-Names="微軟正黑體" Font-Size="12pt" 
                    ForeColor="#333333" GridLines="None" Width="100%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="編輯" ShowHeader="False">
                            <EditItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" 
                                    CommandName="Update" Text="更新"></asp:LinkButton>
                                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                                    CommandName="Cancel" Text="取消"></asp:LinkButton>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Button ID="bt_gvStudent_Delete" runat="server" CommandName="delete" 
                                    onclientclick="return confirm('確定要刪除此位使用者的帳戶及所有相關資訊嗎？')" Text="刪除" 
                                    onclick="bt_gvStudent_Delete_Click" />
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="使用者帳號" SortExpression="Account_User">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Account_User") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lb_Account_Account" runat="server" 
                                    Text='<%# Bind("Account_User") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="使用者姓名" InsertVisible="False" 
                            SortExpression="Account_Mid">
                            <EditItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Account_Mid") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lb_User_ID" runat="server" Text='<%# Bind("Account_Mid") %>' 
                                    Visible="False"></asp:Label>
                                <asp:Label ID="lb_User_Name" runat="server"></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
            </asp:Panel>
            
            <br />
            <br />
            <br />
	        <div style="margin-bottom:100px;"></div>		
		</div>
	</div>
</div>

  
    <script src="../../../src/js/jquery.min.js"></script>
    <script src="../../../src/js/bootstrap.min.js"></script>
    <script src="../../../src/js/scripts.js"></script>
    </form>
  </body>
</html>
