<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Edit_Cadres.aspx.vb" Inherits="WebPage_Class_Home" %>

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

       <style type="text/css">
        .ClassName
        {
            font-size:13pt;
            font-weight:bold;
        }
        .Teacher
        {
            font-size:11pt;
            color:#333333;
        }
        .Classroom
        {
            font-size:10pt;
            color:#666666;
            }
       
        </style>
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
				<dd>
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
        <h3>
				幹部修改 Cadres Modify</h3>
			<p>
				您可以在這裡修改幹部的名單，名單變動的瞬間，網頁管理的權限也將隨之改變。</p>
            <p>
				&nbsp;<small>You can modify the list of cadres there.  When you submit modification, the power of management in this website will transfer.</small>
			</p>
            <br />
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />

               <div>
            
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
            <asp:Panel ID="pn_EditButton" runat="server">
                &nbsp;&nbsp; &nbsp;<table cellpadding="0" cellspacing="0" 
                    style="vertical-align: middle; text-align: center; border: 2px solid #993300; width: 100%">
                    <tr>
                        <td style="padding: 8px; border-style: none solid dashed none; border-width: 2px; border-color: #800000;">
                            <asp:Button ID="bt_Timetable_Edit_Insert" runat="server" Text="新增幹部" />
                        </td>
                    </tr>
                    <tr>
                        <td style="padding: 8px; border-style: none solid dashed none; border-width: 2px; border-color: #800000;">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:Class %>" 
                                SelectCommand="SELECT * FROM [Cadres] WHERE ([Class_ID] = @Class_ID) ORDER BY [Cadres_Name]">
                                <SelectParameters>
                                    <asp:QueryStringParameter Name="Class_ID" QueryStringField="classid" 
                                        Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:DropDownList ID="ddl_Cadres_ClassList" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="Cadres_ID" 
                                DataValueField="Cadres_ID">
                            </asp:DropDownList>
                            <br />
                            <asp:Button ID="bt_Timetable_Edit_Delete" runat="server" 
                                onclientclick="return confirm('確定要刪除嗎？')" Text="刪除幹部" />
                        </td>
                    </tr>
                    <tr>
                        <td style="padding: 8px; border-style: none solid none none; border-width: 2px; border-color: #800000;">
                            <asp:Button ID="bt_Back" runat="server" CausesValidation="False" 
                                OnClientClick="bt_Back_Click" Style="background-color:#A16B47;" Text="返回" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>



            <asp:Panel ID="pn_Timetable_Edit_EditPart" runat="server" Visible="False">


              
                <table style="font-family: 微軟正黑體; font-size: 12pt; color: #333333; vertical-align: middle; text-align: center; border: 2px solid #333333; width: 100%">
                    <tr>
                        <td style="font-weight: bold; border-right-style: dashed; border-bottom-style: solid; border-right-width: 2px; border-bottom-width: 1px; border-color: #666666; width: 100px;" >
                            幹部類型</td>
                        <td style="padding: 5px; border-bottom-style: solid; border-bottom-width: 1px; border-color: #666666; text-align: left; ">
                            <asp:DropDownList ID="ddl_Cadres_Style" runat="server" AutoPostBack="True">
                                <asp:ListItem Value="False">班級幹部</asp:ListItem>
                                <asp:ListItem Value="True">課程小老師</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold; border-right-style: dashed; border-bottom-style: solid; border-right-width: 2px; border-bottom-width: 1px; border-color: #666666; width: 100px;">
                            幹部名稱</td>
                        <td style="padding: 5px; border-bottom-style: solid; border-bottom-width: 1px; border-color: #666666; text-align: left; ">
            
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:Class %>" 
                                        SelectCommand="SELECT * FROM [Cadres] WHERE ([Class_ID] = @Class_ID)">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="0" Name="Class_ID" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:Class %>" 
                                        SelectCommand="SELECT * FROM [Timetable] WHERE ([Timetalbe_classid] = @Timetalbe_classid) ORDER BY [Timetalbe_Class_Name]">
                                        <SelectParameters>
                                            <asp:QueryStringParameter Name="Timetalbe_classid" QueryStringField="classid" 
                                                Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <asp:DropDownList ID="ddl_Cadres_List" runat="server" 
                                        DataSourceID="SqlDataSource2" DataTextField="Cadres_Name" 
                                        DataValueField="Cadres_ID" AutoPostBack="True">
                                    </asp:DropDownList>
                                    　<asp:TextBox ID="tb_Cadres_Other" runat="server" Font-Names="微軟正黑體" 
                                        Font-Size="12pt" ForeColor="#666666" placeholder="請填入幹部名稱如：「聯絡簿小股長」" 
                                        Width="50%" Wrap="False" Visible="False"></asp:TextBox>
                             
                        </td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold; border-right-style: dashed; border-bottom-style: solid; border-right-width: 2px; border-bottom-width: 1px; border-color: #666666; width: 100px;" >
                            幹部姓名</td>
                        <td style="padding: 5px; border-bottom-style: solid; border-bottom-width: 1px; border-color: #666666; text-align: left; ">
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:Account %>" 
                                SelectCommand="SELECT [User].Account_ID, Account.Account_User, [User].User_Name, [User].User_Class_ID FROM [User] INNER JOIN Account ON [User].Account_ID = Account.Account_Mid WHERE ([User].User_Class_ID = @User_Class_ID) ORDER BY Account.Account_User">
                                <SelectParameters>
                                    <asp:QueryStringParameter Name="User_Class_ID" QueryStringField="classid" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:DropDownList ID="ddl_ClassMember" runat="server" 
                                DataSourceID="SqlDataSource3" DataTextField="User_Name" 
                                DataValueField="Account_ID">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2" >
                            <asp:Button ID="bt_Timetable_Edit_Submit" runat="server" Text="新增" />
                            &nbsp;<asp:Button ID="bt_Timetable_Edit_Cancel" runat="server" Text="取消" />
                        </td>
                    </tr>
                </table>


            </asp:Panel>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Class %>" 
                    SelectCommand="SELECT * FROM [Cadres] WHERE ([Class_ID] = @Class_ID) ORDER BY [Cadres_Style], [Cadres_Name],[Account_ID]">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Class_ID" QueryStringField="classid" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="Cadres_ID" DataSourceID="SqlDataSource5" 
                    ForeColor="#333333" GridLines="None" Width="100%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="幹部類型" SortExpression="Cadres_Style">
                            <EditItemTemplate>
                                <asp:CheckBox ID="CheckBox1" runat="server" 
                                    Checked='<%# Bind("Cadres_Style") %>' />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="ck_Cadres_Style" runat="server" 
                                    Checked='<%# Bind("Cadres_Style") %>' Enabled="false" Visible="False" />
                                <asp:Label ID="lb_Cadres_Style" runat="server"></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="幹部職稱" SortExpression="Cadres_Name">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Cadres_Name") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lb_Cadres_Name" runat="server" Text='<%# Bind("Cadres_Name") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="幹部姓名" SortExpression="Account_ID">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Account_ID") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lb_Cadres_Account" runat="server" 
                                    Text='<%# Bind("Account_ID") %>'></asp:Label>
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
            
             </ContentTemplate>
         </asp:UpdatePanel>
        </div>
        <div>
    
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
