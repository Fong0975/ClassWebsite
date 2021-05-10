<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Teacher_Class.aspx.vb" Inherits="WebPage_Teacher_Teacher_Class" %>

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
				班級清單 <small>Own Classroom</small>
			</h3>
			<p>
			    這裡顯示所有您所管理的班級，您可以點選連結瀏覽抑或是進階的編輯。
            </p>
            <p>
				&nbsp;<small>Those are all your classroom.  You can click the link to view web page or advanced management.</small>
			</p>
            <br />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Class %>" 
                SelectCommand="SELECT * FROM [ClassInfo]"></asp:SqlDataSource>
            <asp:FormView ID="fv_CurrentClassroom" runat="server" DataKeyNames="Class_ID" 
                DataSourceID="SqlDataSource1" Width="100%">
                <EditItemTemplate>
                  
                </EditItemTemplate>
                <InsertItemTemplate>
                   
                </InsertItemTemplate>
                <ItemTemplate>
                    <table cellpadding="0" cellspacing="0" 
                        style="font-family: 微軟正黑體; font-size: 12pt; color: #333333; vertical-align: middle; text-align: left; padding: 5px; width: 100%">
                        <tr>
                            <td colspan="2" 
                                
                                style="font-weight: bold; color: #D6EDFF; background-color: #7EA0B7; padding-left: 10px; font-size: 28pt;">
                                就學班級</td>
                        </tr>
                        <tr>
                            <td rowspan="3" 
                                style="padding: 4px; width: 25%; text-align: center; vertical-align: middle;">
                                <asp:Image ID="img_CadresShow_ClassHPic" runat="server"  Width="90%" 
                                    ImageUrl='<%# Eval("Class_ID") %>' />
                                <asp:Label ID="Class_IDLabel" runat="server" Text='<%# Eval("Class_ID") %>' visible="false" />
                            </td>
                            <td style="padding: 14px; background-color: #D6EDFF; color: #597081; font-size: 18pt; font-weight: bold;">
                                <asp:Label ID="Class_NickNameLabel" runat="server" 
                                    Text='<%# Bind("Class_NickName") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="border-left: 3px dashed #808080; border-style: none; background-color: #D6EDFF; color: #597081; padding-right: 20px; text-align: left;">
                                <asp:Label ID="Class_DepartmentLabel" runat="server" 
                                    
                                    Text='<%# Bind("Class_Department") %>' 
                                    style="margin-left:25px;"></asp:Label>
                                <asp:Label ID="Class_ClassNameLabel" runat="server" style="margin-left:35px;" 
                                    Text='<%# Bind("Class_ClassName") %>' />
                                <asp:CheckBox ID="Class_Group_ShowCheckBox" runat="server" 
                                    Checked='<%# Bind("Class_Group_Show") %>' Enabled="False" Visible="False" 
                                    Text='<%# Eval("Class_EnterDate") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="border-left: 3px dashed #808080; background-color: #D6EDFF; color: #597081; text-align: right; border-top-width: 1px; border-top-style: solid; border-left-style: none; border-top-color: #2D3047; border-left-color: #808080;">
                                <asp:HyperLink ID="hy_Class_InSchool_Go" runat="server"  style="margin-right: 15px; margin-top: 40px;" 
                                    
                                    
                                    NavigateUrl='<%# "~/WebPage/Class/Home.aspx?classid=" & Eval("Class_ID") %>'>前往首頁 <small>GO Home Page</small></asp:HyperLink>
                                <br />
                                <asp:HyperLink ID="hy_Class_InSchool_GoManage" runat="server"  style="margin-right: 15px; margin-top: 40px;" 
                                    
                                    NavigateUrl='<%# "~/WebPage/Class/Home.aspx?classid=" & Eval("Class_ID") %>'>進階管理 <small>Advanced Management</small></asp:HyperLink>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:FormView>

            <br />

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Class %>" 
                
                SelectCommand="SELECT * FROM [ClassInfo]"></asp:SqlDataSource>
            <asp:Panel ID="pn_ClassList_Graduated" runat="server">
                <table cellpadding="0" cellspacing="0" 
                    style="font-family: 微軟正黑體; font-size: 12pt; color: #333333; vertical-align: middle; text-align: left; padding: 5px; width: 100%">
                    <tr>
                        <td style="font-weight: bold; color: #D6EDFF; background-color: #7EA0B7; padding-left: 10px; font-size: 28pt;">
                            非就學班級</td>
                    </tr>
                </table>
                <asp:DataList ID="dl_ClassList_Graduated" runat="server" 
    DataSourceID="SqlDataSource2" DataKeyField="Class_ID" Width="100%">
                    <ItemTemplate>
                        <table cellpadding="0" cellspacing="0" 
                            style="font-family: 微軟正黑體; font-size: 12pt; color: #333333; vertical-align: middle; text-align: left; padding: 5px; width: 100%">
                            <tr>
                                <td rowspan="3" 
                                    style="padding: 4px; width: 25%; text-align: center; vertical-align: middle;">
                                    <asp:Image ID="img_CadresShow_ClassHPic" runat="server" 
                                        ImageUrl='<%# Eval("Class_ID") %>' Width="90%" />
                                    <asp:Label ID="Class_IDLabel" runat="server" Text='<%# Eval("Class_ID") %>' 
                                        visible="false" />
                                </td>
                                <td style="padding: 14px; background-color: #D6EDFF; color: #597081; font-size: 18pt; font-weight: bold;">
                                    <asp:Label ID="Class_NickNameLabel" runat="server" 
                                        Text='<%# Bind("Class_NickName") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="border-left: 3px dashed #808080; border-style: none; background-color: #D6EDFF; color: #597081; padding-right: 20px; text-align: left;">
                                    <asp:Label ID="lb_EnterDate" runat="server" 
                                        Text='<%# Eval("Class_EnterDate", "{0:yyyy}") %>' style="margin-left:18px;"></asp:Label>
                                    <asp:Label ID="Class_DepartmentLabel" runat="server" style="margin-left:20px;" 
                                        Text='<%# Bind("Class_Department") %>'></asp:Label>
                                   
                                    <asp:CheckBox ID="Class_Group_ShowCheckBox" runat="server" 
                                        Checked='<%# Bind("Class_Group_Show") %>' Enabled="false" Visible="False" />
                                    <asp:Label ID="Class_ClassNameLabel" runat="server" style="margin-left:20px;" 
                                        Text='<%# Bind("Class_ClassName") %>' />
                                    <br />
                                </td>
                            </tr>
                            <tr >
                                <td style="border-left: 3px dashed #808080; background-color: #D6EDFF; color: #597081; border-style: solid none none none; text-align:right; border-top-width: 1px; border-left-width: 3px; border-top-color: #2D3047; border-left-color: #808080;">
                                    <asp:HyperLink ID="hy_Class_InSchool_Go" runat="server"  style="margin-right:15px; margin-top:40px;" 
                                        NavigateUrl='<%# "~/WebPage/Class/Home.aspx?classid=" & Eval("Class_ID") %>'>前往首頁 <small>GO Home Page</small></asp:HyperLink>
                                    <br />
                                    <asp:HyperLink ID="hy_Class_InSchool_GoManage" runat="server"
                                        NavigateUrl='<%# "~/WebPage/Class/Home.aspx?classid=" & Eval("Class_ID") %>' 
                                        style="margin-right:15px; margin-top:40px;">進階管理 <small>Advanced Management</small></asp:HyperLink>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </asp:Panel>

        </div>
		
		</div>

        <div style="margin-bottom:100px;"></div>
	</div>
	
</div>
<div style="margin-bottom:80px;"></div>
        <script src="../src/js/jquery.min.js"></script>
        <script src="../src/js/bootstrap.min.js"></script>
        <script src="../src/js/scripts.js"></script>
    </form>
  </body>
</html>
