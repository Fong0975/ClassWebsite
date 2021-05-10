<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Index.aspx.vb" Inherits="WebPage_Index" %>

<!DOCTYPE html>
<html lang="en">
    <head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>班級聯絡簿 ContactBook</title>
    <link rel="shortcut icon" href="../Images/WebPic/favicon.ico" type="image/x-icon" />

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="../src/css/bootstrap.min.css" rel="stylesheet">
    <link href="../src/css/style.css" rel="stylesheet">

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
			<div class="page-header">
				<h1 style="color: #FF9900; font-weight: bold;">
					<font style="text-shadow:3px 3px 3px #cccccc; -webkit-text-stroke: 1px #808080;">班級聯絡簿 ContactBook</font> <br /><small style="margin-left:50px; color:#3A2D32;background:rgba(90%,90%,90%,0.6);">用系統讓友誼不失聯 The system makes friendship be more close.</small>
				</h1>
			</div>
		</div>
	</div>
	<div class="row">
        <div class="col-md-2">
			<dl style="padding-top: 25px">
				<dt style="display: inline; margin-top: 5px;">
					聯絡記事<br /><small>ContactBook Notes</small>
				</dt>
				<dd>
					提供、改善聯絡簿記載提醒事項的功能，讓你絕對不再遺忘。.
				</dd>
				<dt style="margin-top: 5px;">
					班級課表<br /><small>Class Timetable</small>
				</dt>
				<dd >
					由班級的課表可一目了然授課的各種詳細資料，包含教師、小老師、授課教室等等，將多種資訊整合為一。
				</dd >
				<dt style="margin-top: 5px;">
					班級成員<br /><small>Class Member</small>
				</dt>
				<dd>
					將所有班級成員整合起來，除了彼此間可以查看對方的連絡資訊方便聯繫，非同班同學可是無法得知的喔！
				</dd>
				<dt style="margin-top: 5px;">
					班級討論區<br /><small>Class Fourm</small>
				</dt>
				<dd>
					設置有互動的討論區，只讓同班的同學加入議題的討論，輕鬆傳達彼此間的意見。
				</dd>

                <dt style="margin-top: 15px;">
					老師們，你們心動了嗎？現在就加入我們吧！<br /><a href="Register.aspx">Go...</a>
				</dt>
			</dl>
		</div>
		<div class="col-md-10">
			<h3>
				班級列表 ClassList
			</h3>
			<p>
				以下是所有班級的列表，觀迎各位瀏覽，看看他們在這個階段留下了什麼紀錄吧！</p>
            <p>
				&nbsp;<small>There is list of all classes. Welcome to view to know what is left in this stage.</small>
			</p>
            <br />
            <h4>
				就學班級 <small>The school classes</small>
			</h4>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Class %>" 
            SelectCommand="SELECT * FROM [ClassInfo] WHERE ([Class_GraduatedDate] = @Class_GraduatedDate) ORDER BY  [Class_Department], [Class_EnterDate] DESC, [Class_ClassName]">
            <SelectParameters>
                <asp:Parameter DbType="Date" DefaultValue="1900/1/1" 
                    Name="Class_GraduatedDate" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="gv_Inshchool" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="Class_ID" DataSourceID="SqlDataSource2" 
            Font-Names="微軟正黑體" Font-Size="12pt" ForeColor="#333333" GridLines="None" 
            style="text-align: center" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="班級暱稱" SortExpression="Class_NickName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Class_NickName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:HyperLink ID="hl_gvI_Class_Nickname" runat="server" 
                            NavigateUrl='<%# "Class/Home.aspx?classid=" & Eval("Class_ID") %>' 
                            Text='<%# Eval("Class_NickName") %>'></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="班級名稱" SortExpression="Class_Department">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" 
                            Text='<%# Bind("Class_Department") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lb_gvI_Department" runat="server" 
                            Text='<%# Bind("Class_Department") %>'></asp:Label>
                        <br />
                        <asp:Label ID="lb_gvI_ShowGroup" runat="server" 
                            Text='<%# Eval("Class_Group_Show") %>' Visible="False"></asp:Label>
                        <asp:Label ID="lb_gvI_Group" runat="server" 
                            Text='<%# Eval("Class_EnterDate", "{0:d}") %>'></asp:Label>
                        <asp:Label ID="lb_gvI_Class" runat="server" 
                            Text='<%# Eval("Class_ClassName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="班級導師" SortExpression="Teacher_ID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Teacher_ID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lb_gvI_Teacher" runat="server" Text='<%# Bind("Teacher_ID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <br />
            <h4>
				畢業班級 <small>The classes graduated</small>
			</h4>

		
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Class %>" 
            
                SelectCommand="SELECT * FROM [ClassInfo] WHERE ([Class_GraduatedDate] &gt; @Class_GraduatedDate) AND ([Class_Department]  NOT LIKE '%' + @Class_Department + '%') ORDER BY [Class_GraduatedDate] DESC, [Class_Department], [Class_ClassName]">
            <SelectParameters>
                <asp:Parameter DbType="Date" DefaultValue="1900/1/1" 
                    Name="Class_GraduatedDate" />
                <asp:Parameter DefaultValue="行政" Name="Class_Department" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="gv_Graduated" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="Class_ID" DataSourceID="SqlDataSource1" 
            Font-Names="微軟正黑體" Font-Size="12pt" ForeColor="#333333" GridLines="None" 
            style="text-align: center" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="班級暱稱" SortExpression="Class_NickName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Class_NickName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:HyperLink ID="hl_gvG_Class_Nickname" runat="server" 
                            NavigateUrl='<%# "Class/Home.aspx?classid=" & Eval("Class_ID") %>' 
                            Text='<%# Eval("Class_NickName") %>'></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="就學期間" SortExpression="Class_EnterDate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Class_EnterDate") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" 
                            Text='<%# Bind("Class_EnterDate", "{0:yyyy/MM}") %>'></asp:Label>
                        <br />
                        ~<br />
                        <asp:Label ID="Label5" runat="server" 
                            Text='<%# Eval("Class_GraduatedDate", "{0:yyyy/MM}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="班級名稱" SortExpression="Class_Department">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" 
                            Text='<%# Bind("Class_Department") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lb_gvG_Department" runat="server" 
                            Text='<%# Bind("Class_Department") %>'></asp:Label>
                        <br />
                        <asp:Label ID="lb_gvG_Class" runat="server" 
                            Text='<%# Eval("Class_ClassName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="班級導師" SortExpression="Teacher_ID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Teacher_ID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lb_gvG_Teacher" runat="server" Text='<%# Bind("Teacher_ID") %>'></asp:Label>
                    </ItemTemplate>
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
            <br />

		
		</div>
		
	</div>
	<div class="row">
		<div class="col-md-12" 
            style="border: 1px solid #F9F9F9; margin-right: 5px; padding-right: 8px; padding-left: 8px; background-color: #FFFDFB; text-align: right;">
		    <span style="border: color: rgb(51, 51, 51); font-size: 11px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: right; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; arial:; width: 100%;">
            Copyright © Feng,Sheng-Feng All rights reserved.</span></div>
	</div>
</div>

        <script src="../src/js/jquery.min.js"></script>
        <script src="../src/js/bootstrap.min.js"></script>
        <script src="../src/js/scripts.js"></script>
    </form>
  </body>
</html>