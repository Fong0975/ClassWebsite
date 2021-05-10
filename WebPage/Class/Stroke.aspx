<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Stroke.aspx.vb" Inherits="WebPage_Class_Member" %>

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
		<div class="col-md-12">
			
        
        <h3>
				事件詳情 
                Class Task</h3>
			<p>
				以下是此待辦事項的詳細資料，包含課程名稱、負責同學、時間、說明和已經簽註自己完成紀錄的同學們，還沒有完成的同學要把握時間了喔！</p>
            <p>
				&nbsp;<small> There is the detail of this stroke, containing ‘Lesson name’, ‘classmate in charge’, ‘time’, ‘description’ and ‘students of marking achievement’. If you have not completed stroke, you must pay attention to deadline.</small>
			</p>
            <br />
            <div style="text-align:center;">
                <asp:Button ID="bt_Stroke_Delete" runat="server" 
                    onclientclick="return confirm('確定要刪除此項事件嗎？')" Text="刪除" Visible="False" />
                <asp:Button ID="bt_Back" runat="server" Text="返回" Style="background-color:#A16B47;" /></div>
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
            DataSourceID="SqlDataSource1" Font-Names="微軟正黑體" Font-Size="14pt" Width="100%">
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
                        <asp:Label ID="lb_Stroke_Classid" runat="server" Text='<%# Eval("Class_ID") %>' 
                            Visible="False"></asp:Label>
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
                        <asp:Label ID="lb_Finish_List" runat="server" 
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
    
			<div style="margin-bottom:100px;"></div>
		</div>
	</div>
</div>
     <script type="text/javascript">

         function confirmReset() {
             swal({
                 title: "事件刪除完成", text: "這項事件已完整刪除完成，但須手動重新整理",
                 type: "success",
                 showCancelButton: false,
                 confirmButtonText: "OK",
                 closeOnConfirm: false
             }, function () {
                 window.open('', '_self', ''); window.close();
             });
         }

        </script>
    <script src="../../src/js/jquery.min.js"></script>
    <script src="../../src/js/bootstrap.min.js"></script>
    <script src="../../src/js/scripts.js"></script>
    </form>
  </body>
</html>
