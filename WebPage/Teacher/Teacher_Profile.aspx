<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Teacher_Profile.aspx.vb" Inherits="WebPage_Public_Profile" %>
    
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

    <a href="Teacher_Home.aspx">
	<div class="row">
		<div class="col-md-12">
			<div class="page-header" 
                
                
                style="background-image: url('../../Images/WebPic/Header_Title_Back_User.jpg')">
				<h1 style="color: #FF9900; font-weight: bold;">
					<font style="text-shadow:3px 3px 3px #888888; -webkit-text-stroke: 1px #000000;">班級聯絡簿 ContactBook</font> <br /><small style="margin-left:50px; color:#FFEFDF;-webkit-text-stroke: 0.4px #966633;">這是老師的個人後台介面 
                    Here is a personal backstage of teacher.</small>
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
					個人資料編輯<br /><small>Profile Edit</small>
				</dt>
				<dd >
					<a href="Teacher_Profile.aspx">More...</a>
				</dd >
                <dt style="margin-top: 5px;">
					班級創建<br /><small>Class Creat</small>
				</dt>
				<dd >
					<a href="Teacher_CreatClass.aspx">More...</a>
				</dd >
				<dt style="margin-top: 10px;">
					班級清單<br /><small>Own Class List</small>
				</dt>
				<dd>
					<a href="Teacher_Class.aspx">More...</a>
				</dd>
			</dl>
		</div>
		<div class="col-md-10" ">
            <div style="margin-left:10px;">
			<h3>
				個人資料編輯 <small>Profile Edit</small>
			</h3>
			<p>
			    你可以從這裡修改你的帳戶密碼，也可以在這裡編輯個人的資料及聯絡方式。如果不須變更密碼請保持空值。如果不想顯示資料了，清空該欄位的值即可。
            </p>
            <p>
				&nbsp;<small>You can change your password of your account, can also edit profile and contacting way in here.  If you 
                don&#39;t want to change your password, please don&#39;t enter anything.&nbsp; If you 
                don&#39;t want to show some field, please keep it empty.</small>
			</p>
            <br />
                <asp:ScriptManager ID="ScriptManager2" runat="server">
                </asp:ScriptManager>
                
                       <table cellpadding="0" cellspacing="0" 
            
                     style="font-family: 微軟正黑體; font-size: 12pt; color: #333333; vertical-align: middle; border: 3px solid #666666; padding: 3px; margin: 0px; width: 100%">
            <tr>
                <td 
                    
                    style="text-align: center; width: 5%; border-bottom-style: solid; border-bottom-width: 2px; background-color: #0C2C76; color: #FFFFFF; border-bottom-color: #FFF7EE;" 
                    rowspan="2">
                    帳戶</td>
                <td 
                    
                    
                    
                    
                    
                    style="border-color: #FFF7EE; text-align: center; width: 10%; border-bottom-style: solid; border-bottom-width: 1px; background-color: #4A6CBB; color: #0C2C76;">
                    帳戶資訊</td>
                <td class="style1" 
                    
                    
                    style="padding: 5px; border-bottom-style: solid; border-bottom-width: 1px; border-color: #FFF7EE; background-color: #718ED0;">
                    <asp:Label ID="lb_Account_Info" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border-color: #FFF7EE; text-align: center; width: 10%; border-bottom-style: solid; border-bottom-width: 2px; color: #0C2C76; background-color: #4A6CBB;">
                    帳戶密碼</td>
                <td style="border-bottom-style: solid; border-bottom-width: 2px; border-color: #FFF7EE; background-color: #718ED0;">
                    <asp:TextBox ID="tb_Account_OldPw" runat="server" placeholder = "欲更密碼請輸入原密碼" 
                        TextMode="Password"></asp:TextBox>
                    <asp:TextBox ID="tb_Account_NewPw" runat="server" placeholder = "欲更密碼請輸入新密碼" 
                        TextMode="Password"></asp:TextBox>
                    <asp:TextBox ID="tb_Account_Pw_Ck" runat="server" placeholder = "欲更密碼再次請輸入新密碼" 
                        TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: center; width: 5%; border-bottom-style: solid; border-bottom-width: 2px; background-color: #006A6A; color: #61c6c6; border-bottom-color: #FFF7EE;" 
                    rowspan="3">
                    資料</td>
                <td style="border-color: #FFF7EE; text-align: center; width: 10%; border-bottom-style: solid; border-bottom-width: 1px; background-color: #38ADAD; color: #006A6A;">
                    個人頭貼</td>
                <td style="padding: 8px; border-bottom-style: solid; border-bottom-width: 1px; border-color: #FFF7EE; background-color: #61c6c6;">
                    <asp:Image ID="img_Profile_Pic" runat="server" Width="150px" 
                        BorderColor="White" BorderStyle="Dashed" BorderWidth="1px" />
                    <br />
                    <br />
                    <asp:FileUpload ID="fu_Profile_Pic" runat="server" Width="100%" />
                </td>
            </tr>
            <tr>
                <td style="border-color: #FFF7EE; text-align: center; width: 10%; border-bottom-style: solid; border-bottom-width: 1px; background-color: #38ADAD; color: #006A6A;">
                    個人暱稱</td>
                <td style="padding: 5px; border-bottom-style: solid; border-bottom-width: 1px; border-color: #FFF7EE; background-color: #61c6c6;">
                    <asp:TextBox ID="tb_User_Nickname" runat="server"  placeholder = "輸入一個同學間親暱的稱呼吧！"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="border-color: #FFF7EE; text-align: center; width: 10%; border-bottom-style: solid; border-bottom-width: 2px; background-color: #38ADAD; color: #006A6A;">
                    出生日期</td>
                <td style="padding: 5px; border-bottom-style: solid; border-bottom-width: 2px; border-color: #FFF7EE; background-color: #61c6c6;">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:DropDownList ID="ddl_Birthday_Y" runat="server">
                                <asp:ListItem Value="0">年</asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="ddl_Birthday_M" runat="server" AutoPostBack="True">
                                <asp:ListItem Value="0">月</asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="ddl_Birthday_D" runat="server" AutoPostBack="True">
                                <asp:ListItem Value="0">日</asp:ListItem>
                            </asp:DropDownList>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td style="text-align: center; width: 5%; border-bottom-style: solid; border-bottom-width: 2px; background-color: #0C2C76; color: #FFFFFF; border-bottom-color: #FFF7EE;" 
                    rowspan="4">
                    通訊</td>
                <td style="border-color: #FFF7EE; text-align: center; width: 10%; border-bottom-style: solid; border-bottom-width: 1px; background-color: #4A6CBB; color: #0C2C76;">
                    家用電話</td>
                <td style="border-bottom-style: solid; border-bottom-width: 1px; border-color: #FFF7EE; background-color: #718ED0;">
                    <asp:TextBox ID="tb_User_HomePhone" runat="server"  
                        placeholder = "輸入家用電話讓同學間不失聯 ex.02-1234567"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="border-color: #FFF7EE; text-align: center; width: 10%; border-bottom-style: solid; border-bottom-width: 1px; background-color: #4A6CBB; color: #0C2C76;">
                    手機號碼</td>
                <td style="border-bottom-style: solid; border-bottom-width: 1px; border-color: #FFF7EE; background-color: #718ED0;">
                   <asp:TextBox ID="tb_User_CellPhone" runat="server"  
                        placeholder = "輸入手機號碼讓連絡更方便"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="border-color: #FFF7EE; text-align: center; width: 10%; border-bottom-style: solid; border-bottom-width: 1px; background-color: #4A6CBB; color: #0C2C76;">
                    電子信箱</td>
                <td style="border-bottom-style: solid; border-bottom-width: 1px; border-color: #FFF7EE; background-color: #718ED0;">
                   <asp:TextBox ID="tb_User_Email" runat="server"  
                        placeholder = "按下按鈕進行信箱驗證吧！" Width="50%"></asp:TextBox>
                    <asp:Button ID="bt_Mail_Modify" runat="server" Text="變更" 
                        
                        style="border: 5px solid #0C2C76; color:#ECE2D0; background-color:#4A6CBB; vertical-align:middle; " 
                        PostBackUrl="~/WebPage/Teacher/EmailModify.aspx" />
                </td>
            </tr>
            <tr>
                <td style="border-color: #FFF7EE; text-align: center; width: 10%; border-bottom-style: solid; border-bottom-width: 2px; color: #0C2C76; background-color: #4A6CBB;">
                    通訊地址</td>
                <td style="border-bottom-style: solid; border-bottom-width: 2px; border-color: #; padding-left: 8px; background-color: #718ED0;">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <asp:Label ID="lb_Address_Num" runat="server"></asp:Label>
                            <asp:DropDownList ID="ddl_Address_City" runat="server" AutoPostBack="True">
                                <asp:ListItem Value="0">請選擇縣市</asp:ListItem>
                                <asp:ListItem>基隆市</asp:ListItem>
                                <asp:ListItem>台北市</asp:ListItem>
                                <asp:ListItem>新北市</asp:ListItem>
                                <asp:ListItem>桃園市</asp:ListItem>
                                <asp:ListItem>新竹縣</asp:ListItem>
                                <asp:ListItem>新竹市</asp:ListItem>
                                <asp:ListItem>苗栗縣</asp:ListItem>
                                <asp:ListItem>台中縣</asp:ListItem>
                                <asp:ListItem>台中市</asp:ListItem>
                                <asp:ListItem>彰化縣</asp:ListItem>
                                <asp:ListItem>南投縣</asp:ListItem>
                                <asp:ListItem>雲林縣</asp:ListItem>
                                <asp:ListItem>嘉義縣</asp:ListItem>
                                <asp:ListItem>嘉義市</asp:ListItem>
                                <asp:ListItem>台南縣</asp:ListItem>
                                <asp:ListItem>台南市</asp:ListItem>
                                <asp:ListItem>高雄縣</asp:ListItem>
                                <asp:ListItem>高雄市</asp:ListItem>
                                <asp:ListItem>屏東縣</asp:ListItem>
                                <asp:ListItem>宜蘭縣</asp:ListItem>
                                <asp:ListItem>花蓮縣</asp:ListItem>
                                <asp:ListItem>台東縣</asp:ListItem>
                                <asp:ListItem>連江縣</asp:ListItem>
                                <asp:ListItem>金門縣</asp:ListItem>
                                <asp:ListItem Value="澎湖縣"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="ddl_Address_Dirc" runat="server" AutoPostBack="True">
                            </asp:DropDownList>
                            <asp:TextBox ID="tb_User_Address_Detail" runat="server" 
                                placeholder="這裡要填入完整的地址嘍！" Width="50%"></asp:TextBox>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td style="text-align: center; width: 5%; border-bottom-style: solid; border-bottom-width: 2px; background-color: #006A6A; color: #61c6c6; border-bottom-color: #FFF7EE;" 
                    rowspan="2">
                    社群</td>
                <td style="border-color: #FFF7EE; text-align: center; width: 10%; border-bottom-style: solid; border-bottom-width: 1px; background-color: #38ADAD; color: #006A6A;">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/WebPic/icon_FB.png" 
                        Width="100%" style="Max-Width:100px;" />
                </td>
                <td style="border-bottom-style: solid; border-bottom-width: 1px; border-color: #FFF7EE; background-color: #61c6c6;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="border-color: #808080; text-align: center; width: 10%; background-color: #38ADAD; color: #006A6A;">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/WebPic/icon_Line.png" 
                        Width="100%" style="Max-Width:100px;" />
                </td>
                <td style="background-color: #61c6c6;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="border-color: #808080; text-align: center; padding-top: 10px; padding-bottom: 10px;" 
                    colspan="3">
                    <asp:Button ID="bt_Profile_Submit" runat="server" Text="修改" />
                    <asp:Button ID="bt_Profile_Back" runat="server" OnClick="bt_Profile_Back_Click" Text="返回" />
                </td>
            </tr>
        </table>
     
          


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