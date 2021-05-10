<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ClassManage.aspx.vb" Inherits="WebPage_Class_Member" %>

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
				班級資訊 <small>Class Information</small>
			</h3>
			<p>
				以下是所有這個班級的簡歷資料及頁面的樣式等，你可以針對這些欄位填寫正確的資訊，讓其他人能更加瞭解您的班級。</p>
            <p>
				&nbsp;<small>That is all information, page style, etc. in this class. You should fill in correct data to make everybody will know your class.</small>
			</p>
            <br />
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            <br />
            <br />
             
            <table cellpadding="0" cellspacing="0" style="width: 100%">
                <tr>
                    <td style="font-weight: bold; color: #FEE9EA; background-color: #540002; padding-left: 10px; font-size: 28pt;" 
                        colspan="2">
                        班級資訊</td>
                </tr>
                <tr>
                    <td style="border-left: 3px dashed #808080; border-bottom: 1px solid #808080; border-style: none; padding: 8px; font-weight: bold; color: #804415; background-color: #FFF7F0; text-align: center;">
                        班級導師</td>
                    <td style="border-left: 3px dashed #808080; border-bottom: 1px solid #808080; border-style: none; padding: 8px; color: #804415; background-color: #FFF7F0; ">
                        <asp:Button ID="Button1" runat="server" 
                            PostBackUrl="~/WebPage/Class/Cadres/ClassManage_Teacher.aspx" Text="改變" />
                    </td>
                </tr>
                <tr>
                    <td style="border-left: 3px dashed #808080; border-bottom: 1px solid #808080; border-style: none; padding: 8px; font-weight: bold; color: #804415; background-color: #FFF7F0; text-align: center;">
                        入學日期</td>
                    <td style="border-left: 3px dashed #808080; border-bottom: 1px solid #808080; border-style: none; padding: 8px; color: #804415; background-color: #FFF7F0; ">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:Calendar ID="cal_CreatClass_EnterSchoolDate" runat="server"></asp:Calendar>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                </tr>
                <tr>
                    <td style="border-left: 3px dashed #808080; border-bottom: 1px solid #808080; border-style: none; padding: 8px; font-weight: bold; color: #804415; background-color: #FFF7F0; text-align: center;">
                        畢業日期</td>
                    <td style="border-left: 3px dashed #808080; border-bottom: 1px solid #808080; border-style: none; padding: 8px; color: #804415; background-color: #FFF7F0; ">
                       <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                                <asp:Calendar ID="cal_CreatClass_GraduatedSchoolDate" runat="server">
                                </asp:Calendar>
                                <br />
                                <asp:CheckBox ID="cb_Graduated" runat="server" AutoPostBack="True" Text="就學中" />
                            
                             </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                </tr>
                <tr>
                    <td style="border-left: 3px dashed #808080; border-bottom: 1px solid #808080; border-style: none; padding: 8px; font-weight: bold; color: #804415; background-color: #FFF7F0; text-align: center;">
                        班級暱稱</td>
                    <td style="border-left: 3px dashed #808080; border-bottom: 1px solid #808080; border-style: none; padding: 8px; color: #804415; background-color: #FFF7F0; ">
                        <asp:TextBox ID="tb_ClassroomInfo_Nickname" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            <table cellpadding="0" cellspacing="0" style="width: 100%">
                <tr>
                    <td style="font-weight: bold; color: #F9DEC9; background-color: #8C5E58; padding-left: 10px; font-size: 28pt;" 
                        colspan="2">
                        班級網頁</td>
                </tr>
                <tr>
                    <td style="border-left: 3px dashed #808080; border-bottom: 1px solid #808080; border-style: none; padding: 8px; font-weight: bold; color: #3A405A; background-color: #FBFBFB; text-align: center;">
                        標題圖片</td>
                    <td style="border-left: 3px dashed #808080; border-bottom: 1px solid #808080; border-style: none; padding: 8px; color: #3A405A; background-color: #FBFBFB; ">
                        <asp:Image ID="img_Header_Pic" runat="server" Width="50%" />
                        <br />
                        <asp:FileUpload ID="fu_Header_Pic" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td style="border-left: 3px dashed #808080; border-bottom: 1px solid #808080; border-style: none; padding: 8px; font-weight: bold; color: #3A405A; background-color: #FBFBFB; text-align: center;">
                        標題標語</td>
                    <td style="border-left: 3px dashed #808080; border-bottom: 1px solid #808080; border-style: none; padding: 8px; color: #3A405A; background-color: #FBFBFB; ">
                        <asp:TextBox ID="tb_HeaderSlogn" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="border-left: 3px dashed #808080; border-bottom: 1px solid #808080; border-style: none; padding: 8px; font-weight: bold; color: #3A405A; background-color: #FBFBFB; text-align: center;">
                        首頁相片</td>
                    <td style="border-left: 3px dashed #808080; border-bottom: 1px solid #808080; border-style: none; padding: 8px; color: #3A405A; background-color: #FBFBFB; ">
                        <asp:Image ID="img_Home_Pic" runat="server" Width="50%" />
                        <br />
                        <asp:FileUpload ID="fu_Home_Pic" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td style="border-left: 3px dashed #808080; border-bottom: 1px solid #808080; border-style: none; padding: 8px; font-weight: bold; color: #3A405A; background-color: #FBFBFB; text-align: center;">
                        首頁介紹</td>
                    <td style="border-left: 3px dashed #808080; border-bottom: 1px solid #808080; border-style: none; padding: 8px; color: #3A405A; background-color: #FBFBFB; ">
                        <asp:TextBox ID="tb_Home_Title" runat="server"></asp:TextBox>
                        <br />
                        <asp:TextBox ID="tb_Home_Contain" runat="server" Height="300px" 
                            TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            <div style="text-align:center;">
            <asp:Button ID="bt_ClassInfo_Submit" runat="server" Text="更新" />
            </div>
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
