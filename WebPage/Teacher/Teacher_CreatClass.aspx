<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Teacher_CreatClass.aspx.vb" Inherits="WebPage_Teacher_Teacher_CreatClass" %>

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
				班級創建 <small>Create Classroom</small>
			</h3>
			<p>
			    您可以依據您班級(處室)的資料來建立一個班級網頁。若是您目前已經擁有尚未畢業的班級，即無法新增其他班級。
            </p>
            <p>
				&nbsp;<small>You can own a page of the classroom or office after filling in their field.  However, if you had been having a class which isn't graduate, you 
                can&#39;t create another classroom.</small>
			</p>
            <br />

            
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <table style="border: 5px solid #666666; width: 100%; text-align: center; vertical-align: middle; font-family: 微軟正黑體; font-size: 14pt; color: #333333;">
            <tr>
                <td colspan="2" 
                    style="border-bottom-style: solid; border-bottom-width: 3px; border-bottom-color: #333333">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1" 
                    style="border-right-style: dashed; border-right-width: 3px; border-right-color: #666666">
                    班級導師</td>
                <td class="style1" style="text-align: left">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Account %>" 
                        
                        SelectCommand="SELECT [Account_Mid] FROM [Account] WHERE ([Account_Mid] = @Account_Mid)">
                        <SelectParameters>
                            <asp:SessionParameter Name="Account_Mid" SessionField="userid" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DropDownList ID="ddl_CreatClass_Teacher_List" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="Account_Mid" 
                        DataValueField="Account_Mid" Font-Size="12pt">
                    </asp:DropDownList>
&nbsp;老師</td>
            </tr>
            <tr>
                <td style="border-color: #666666; border-right-style: dashed; border-right-width: 3px; border-top-style: dashed; border-top-width: 3px;">
                    學生<br /> 入學日期</td>
                <td style="border-width: 3px; border-color: #666666; text-align: left; border-top-style: dashed;">
                    <asp:Calendar ID="cal_CreatClass_EnterSchoolDate" runat="server" 
                        BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" 
                        DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="12pt" 
                        ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                            ForeColor="#FFFFCC" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td style="border-color: #666666; border-right-style: dashed; border-right-width: 3px; border-top-style: dashed; border-top-width: 3px;">
                    畢業日期</td>
                <td style="border-width: 3px; border-color: #666666; text-align: left; border-top-style: dashed;">
                    <asp:CheckBox ID="ck_CreatClass_NotGraduate" runat="server" Text="尚未畢業" 
                        AutoPostBack="True" />
                    <asp:Calendar ID="cal_CreatClass_GraduatedSchoolDate" runat="server" 
                        BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" 
                        DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="12pt" 
                        ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                            ForeColor="#FFFFCC" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td style="border-color: #666666; border-right-style: dashed; border-right-width: 3px; border-top-style: dashed; border-top-width: 3px;">
                    教室科別</td>
                <td style="border-width: 3px; border-color: #666666; text-align: left; border-top-style: dashed;">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Class %>" 
                        SelectCommand="SELECT * FROM [ClassList] WHERE ([List_Style] = @List_Style) ORDER BY [List_Sort]">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="0" Name="List_Style" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DropDownList ID="ddl_CreatClass_Department" runat="server" 
                        datasourceid="SqlDataSource2" DataTextField="List_Name" 
                        DataValueField="List_Name" Font-Size="12pt" AutoPostBack="True">
                    </asp:DropDownList>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td style="border-color: #666666; border-right-style: dashed; border-right-width: 3px; border-top-style: dashed; border-top-width: 3px;">
                    教室年級</td>
                <td style="border-width: 3px; border-color: #666666; text-align: left; border-top-style: dashed;">
                    <asp:RadioButtonList ID="radio_CreatClass_Group_Show" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem Value="True" Selected="True">顯示</asp:ListItem>
                        <asp:ListItem Value="False">不顯示</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td style="border-color: #666666; border-right-style: dashed; border-right-width: 3px; border-top-style: dashed; border-top-width: 3px;">
                    &nbsp;教室班級&nbsp;</td>
                <td style="border-width: 3px; border-color: #666666; text-align: left; border-top-style: dashed;">
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Class %>" 
                        SelectCommand="SELECT * FROM [ClassList] WHERE ([List_Style] = @List_Style) ORDER BY [List_Sort]">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="2" Name="List_Style" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DropDownList ID="ddl_CreatClass_ClassNum" runat="server" 
                        datasourceid="SqlDataSource3" DataTextField="List_Name" 
                        DataValueField="List_Name" Font-Size="12pt">
                    </asp:DropDownList>
                    <asp:TextBox ID="tb_CreatClass_ClassNum_Admin" runat="server" Font-Size="12pt" 
                        placeholder="請輸入處室名稱，如[輔導室]" Visible="False" Width="70%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="border-color: #666666; border-right-style: dashed; border-right-width: 3px; border-top-style: dashed; border-top-width: 3px;">
                    教室暱稱</td>
                <td style="border-width: 3px; border-color: #666666; text-align: left; border-top-style: dashed;">
                    <asp:TextBox ID="tb_CreatClass_ClassNickName" runat="server" Font-Size="12pt" 
                        Width="70%" placeholder="若未輸入將以入班級全銜或自訂教室作為預設暱稱" AutoPostBack="True" 
                        MaxLength="20" ></asp:TextBox>
                    <asp:Label ID="lb_CreatClass_Nickname" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        
        <br />
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:Button ID="bt_CreatClass_Creat_Submit" runat="server" Text="建立班級" />
    

                <asp:Button ID="bt_Back" runat="server" Text="返回" 
                Style="background-color:#A16B47;" 
                PostBackUrl="~/WebPage/Teacher/Teacher_Home.aspx" />
    

        </div>
		
		</div>
	</div>
	
</div>
<div style="margin-bottom:80px;"></div>

          <script type="text/javascript">

              function confirmReset() {
                  swal({
                      title: "班級建立完成", text: "已經完成班級的建立了，您現在可以開始編輯班級資訊了",
                      type: "success",
                      showCancelButton: false,
                      confirmButtonText: "OK",
                      closeOnConfirm: false
                  }, function () {
                      window.location.href = "Teacher_Class.aspx";
                  });
              }

              function confirmReset2() {
                  swal({
                      title: "無新增班級權限", text: "您目前尚有未畢業之班級，故無法新增班級",
                      type: "error",
                      showCancelButton: false,
                      confirmButtonText: "OK",
                      closeOnConfirm: false
                  }, function () {
                      window.location.href = "Teacher_Class.aspx";
                  });
              }

        </script>
        <script src="../src/js/jquery.min.js"></script>
        <script src="../src/js/bootstrap.min.js"></script>
        <script src="../src/js/scripts.js"></script>
    </form>
  </body>
</html>