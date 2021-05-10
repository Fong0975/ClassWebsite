<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Stroke.aspx.vb" Inherits="WebPage_Class_Stroke" %>


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
    
    <a href ="Student_Home.aspx">
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
		<div class="col-md-10" ">
            <div style="margin-left:10px;">
			<h3>
				事項詳情 <small>Stroke Detail</small>
			</h3>
			<br />
            <div style="text-align:center;"><asp:Button ID="bt_Back" runat="server" Text="返回" Style="background-color:#A16B47;" /></div>
            <br />

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Class %>" 
            SelectCommand="SELECT * FROM [Stroke] WHERE ([Stroke_ID] = @Stroke_ID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Stroke_ID" QueryStringField="strokeid" 
                    Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" CellSpacing="2" DataKeyNames="Stroke_ID" 
            DataSourceID="SqlDataSource1" Font-Names="微軟正黑體" Font-Size="12pt" Width="100%">
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:TemplateField HeaderText="課程名稱" SortExpression="Timetable_ID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Timetable_ID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Timetable_ID") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lb_Stroke_ClassName" runat="server" 
                            Text='<%# Bind("Timetable_ID") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="150px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="負責人員" SortExpression="Class_ID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Class_ID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Class_ID") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lb_LTeacher" runat="server" Text='<%# Eval("Timetable_ID") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="事項類型" SortExpression="Stroke_Type">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Stroke_Type") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Stroke_Type") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lb_Stroke_Type" runat="server" Text='<%# Bind("Stroke_Type") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="150px" />
                </asp:TemplateField>
                <asp:BoundField DataField="Stroke_Name" HeaderText="事項名稱" 
                    SortExpression="Stroke_Name">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="150px" />
                </asp:BoundField>
                <asp:BoundField DataField="Stroke_Range" HeaderText="事項範圍" 
                    SortExpression="Stroke_Range">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="150px" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="事項描述" SortExpression="Stroke_Description">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" 
                            Text='<%# Bind("Stroke_Description") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" 
                            Text='<%# Bind("Stroke_Description") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Stroke_Description") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="150px" />
                </asp:TemplateField>
                <asp:BoundField DataField="Stroke_StartDate" HeaderText="開始日期" 
                    SortExpression="Stroke_StartDate" DataFormatString="{0:d}">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="150px" />
                </asp:BoundField>
                <asp:BoundField DataField="Stroke_EndDate" HeaderText="截止日期" 
                    SortExpression="Stroke_EndDate" DataFormatString="{0:d}">
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="150px" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="完成名單" SortExpression="Stroke_Finish">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Stroke_Finish") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Stroke_Finish") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lb_dv_FinishList" runat="server" 
                            Text='<%# Bind("Stroke_Finish") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="150px" />
                </asp:TemplateField>
            </Fields>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" 
                HorizontalAlign="Center" VerticalAlign="Middle" Width="150px" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:DetailsView>
    
        <br />
        <br />
        <asp:Button ID="bt_Stroke_Finish" runat="server" Text="已完成" />

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

    

    
