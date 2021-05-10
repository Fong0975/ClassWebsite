<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Edit_Timetable.aspx.vb" Inherits="WebPage_Class_Home" %>

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
        <h3>
				課表修改 Timetable Modify</h3>
			<p>
				您可以點選「新增課程」後輸入名稱、教師、地點並勾選時間後增加課程；亦可以下拉式選擇一門已存在的課程後按下「編輯課程」進行修改，或是「刪除課程」來將課程移除。</p>
            <p>
				&nbsp;<small>You 
                can click &#39;新增課程&#39; and then type the title, teacher, place and checked the 
                checkbox of time in order to add a course.&nbsp; You also can drop-select a 
                course which had been created and then cllick &#39;編輯課程&#39; to modify the course or 
                click &#39;刪除課程&#39; to delete it.</small>
			</p>
            <br />
            <br />

               <div>
            
        
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:Class %>" 
                SelectCommand="SELECT * FROM [Timetable] WHERE ([Timetalbe_classid] = @Timetalbe_classid) ORDER BY [Timetalbe_Class_Name]">
                <SelectParameters>
                    <asp:QueryStringParameter Name="Timetalbe_classid" QueryStringField="classid" 
                        Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            
            <asp:Panel ID="pn_EditButton" runat="server">
                &nbsp;&nbsp; &nbsp;<table cellpadding="0" cellspacing="0" 
                    style="vertical-align: middle; text-align: center; border: 2px solid #993300; width: 100%">
                    <tr>
                        <td style="border-style: none solid none none; border-width: 2px; border-color: #800000">
                            <asp:Button ID="bt_Timetable_Edit_Insert" runat="server" Text="新增課程" />
                        </td>
                        <td style="border-style: none solid none none; border-width: 2px; border-color: #800000">
                            <asp:DropDownList ID="ddl_Timetable_ClassList" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="Timetalbe_Class_Name" 
                                DataValueField="Timetalbe_ID">
                            </asp:DropDownList>
                            <asp:Button ID="bt_Timetable_Edit_Update" runat="server" Text="編輯課程" />
                            <asp:Button ID="bt_Timetable_Edit_Delete" runat="server" 
                                onclientclick="return confirm('確定要刪除嗎？')" Text="刪除課程" />
                        </td>
                        <td>
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
                            課程名稱</td>
                        <td style="border-bottom-style: solid; border-bottom-width: 1px; border-color: #666666; text-align: left;">
                            <asp:TextBox ID="tb_Timetable_Insert_ClassName" runat="server" 
                                Font-Names="微軟正黑體" Font-Size="12pt" 
                                ForeColor="#666666" Width="95%" placeholder="如：「會計學」"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold; border-right-style: dashed; border-bottom-style: solid; border-right-width: 2px; border-bottom-width: 1px; border-color: #666666; width: 100px;" >
                            授課教師</td>
                        <td style="border-bottom-style: solid; border-bottom-width: 1px; border-color: #666666; text-align: left;">
                            <asp:TextBox ID="tb_Timetable_Insert_Teacher" runat="server" Font-Names="微軟正黑體" 
                                Font-Size="12pt" ForeColor="#666666" placeholder="如：「王雅慧」" Width="95%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold; border-right-style: dashed; border-bottom-style: solid; border-right-width: 2px; border-bottom-width: 1px; border-color: #666666; width: 100px;" >
                            授課時間</td>
                        <td style="border-bottom-style: solid; border-bottom-width: 1px; border-color: #666666; text-align: left;">
                            <table style="width: 100%; vertical-align: middle; text-align: center" >
                                <tr>
                                    <td style="border: 1px dotted #999999">
                                        &nbsp;</td>
                                    <td style="border: 1px dotted #999999">
                                        星期一 Monday</td>
                                    <td style="border: 1px dotted #999999">
                                        星期二 Tuesday</td>
                                    <td style="border: 1px dotted #999999">
                                        星期三 Wednesday</td>
                                    <td style="border: 1px dotted #999999">
                                        星期四 Thursday</td>
                                    <td style="border: 1px dotted #999999">
                                        星期五 Friday</td>
                                </tr>
                                <tr>
                                    <td style="border: 1px dotted #999999">
                                        一</td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_M1" runat="server" />
                                    </td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_T1" runat="server" />
                                    </td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_W1" runat="server" />
                                    </td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_R1" runat="server" />
                                    </td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_F1" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 1px dotted #999999">
                                        二</td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_M2" runat="server" />
                                    </td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_T2" runat="server" />
                                    </td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_W2" runat="server" />
                                    </td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_R2" runat="server" />
                                    </td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_F2" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 1px dotted #999999">
                                        三</td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_M3" runat="server" />
                                    </td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_T3" runat="server" />
                                    </td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_W3" runat="server" />
                                    </td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_R3" runat="server" />
                                    </td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_F3" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 1px dotted #999999">
                                        四</td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_M4" runat="server" />
                                    </td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_T4" runat="server" />
                                    </td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_W4" runat="server" />
                                    </td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_R4" runat="server" />
                                    </td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_F4" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 1px dotted #999999">
                                        五</td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_M5" runat="server" />
                                    </td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_T5" runat="server" />
                                    </td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_W5" runat="server" />
                                    </td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_R5" runat="server" />
                                    </td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_F5" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 1px dotted #999999">
                                        六</td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_M6" runat="server" />
                                    </td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_T6" runat="server" />
                                    </td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_W6" runat="server" />
                                    </td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_R6" runat="server" />
                                    </td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_F6" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 1px dotted #999999">
                                        七</td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_M7" runat="server" />
                                    </td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_T7" runat="server" />
                                    </td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_W7" runat="server" />
                                    </td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_R7" runat="server" />
                                    </td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_F7" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 1px dotted #999999">
                                        八</td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_M8" runat="server" />
                                    </td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_T8" runat="server" />
                                    </td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_W8" runat="server" />
                                    </td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_R8" runat="server" />
                                    </td>
                                    <td style="border: 1px dotted #999999">
                                        <asp:CheckBox ID="ck_Timetable_Edit_F8" runat="server" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold; border-right-style: dashed; border-bottom-style: solid; border-right-width: 2px; border-bottom-width: 1px; border-color: #666666; width: 100px;" >
                            授課教室</td>
                        <td style="border-bottom-style: solid; border-bottom-width: 1px; border-color: #666666; text-align: left;">
                            <asp:TextBox ID="tb_Timetable_Insert_Classroom" runat="server" 
                                Font-Names="微軟正黑體" Font-Size="12pt" ForeColor="#666666" placeholder="如：「資訊大樓-5F」" 
                                Width="95%"></asp:TextBox>
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
            
        
        </div>
        <div>
    
        <table style="padding: 0px; font-family: 微軟正黑體; font-size: 12pt; vertical-align: middle; text-align: center; border-style: none; border-width: 3px; width: 100%">
            <tr>
                <td  colspan="8" style="font-family: 標楷體; font-size: 20pt; font-weight: bold">
                    <asp:Label ID="lb_Title_ClassName" runat="server"></asp:Label>
                    的班級課表</td>
            </tr>
            <tr>
                <td  style="font-family: 微軟正黑體; font-size: 11pt; text-align: right;" 
                    colspan="8">
                    班導師：<asp:Label ID="lb_Title_Teacher" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td  style="width: 10px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td  style="width: 10px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    星期一</td>
                <td>
                    星期二</td>
                <td>
                    星期三</td>
                <td>
                    星期四</td>
                <td>
                    星期五</td>
            </tr>
            <tr class="ClassName">
                <td  
                    style="width: 10px;"  rowspan="12">
                    上<br />
                    午</td>
                <td  
                    style="border: 1px solid #333333; width: 10px; font-weight: normal;" 
                    rowspan="3">
                    第一節</td>
                <td  
                    
                    style="border: 1px solid #333333; font-size: 9pt; width: 45px; text-align: center; font-weight: normal;" 
                    rowspan="3">
                    08:10<br />
                    ~<br />
                    09:00</td>
                <td  
                    
                    style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_M1" runat="server"
                        ></asp:Label>
                    </td>
                <td  
                    
                    style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_T1" runat="server"
                        ></asp:Label>
                    </td>
                <td  
                    
                    style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_W1" runat="server"
                        ></asp:Label>
                    </td>
                <td  
                    
                    style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_R1" runat="server"
                        ></asp:Label>
                    </td>
                <td  
                    
                    style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_F1" runat="server"
                        ></asp:Label>
                    </td>
            </tr>
            <tr>
                <td style="margin: 0px; padding: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_M1" runat="server" Font-Size="11pt"></asp:Label>
                </td>
                <td style="margin: 0px; padding: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_T1" runat="server" Font-Size="11pt"></asp:Label>
                </td>
                <td style="margin: 0px; padding: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_W1" runat="server" Font-Size="11pt"></asp:Label>
                </td>
                <td style="margin: 0px; padding: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_R1" runat="server" Font-Size="11pt"></asp:Label>
                </td>
                <td style="margin: 0px; padding: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_F1" runat="server" Font-Size="11pt"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_M1" runat="server"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_T1" runat="server"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_W1" runat="server"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_R1" runat="server"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_F1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #333333; width: 10px;" rowspan="3">
                    第二節</td>
                <td style="border: 1px solid #333333; font-size: 9pt; width: 45px; text-align: center;" 
                    rowspan="3">
                    09:10<br />
                    ~<br />
                    10:00</td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_M2" runat="server"
                        ></asp:Label>
                </td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_T2" runat="server"
                        ></asp:Label>
                </td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_W2" runat="server"
                        ></asp:Label>
                </td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_R2" runat="server"
                        ></asp:Label>
                </td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_F2" runat="server"
                        ></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="margin: 0px; padding: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_M2" runat="server" Font-Size="11pt"></asp:Label>
                </td>
                <td style="margin: 0px; padding: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_T2" runat="server" Font-Size="11pt"></asp:Label>
                </td>
                <td style="margin: 0px; padding: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_W2" runat="server" Font-Size="11pt"></asp:Label>
                </td>
                <td style="margin: 0px; padding: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_R2" runat="server" Font-Size="11pt"></asp:Label>
                </td>
                <td style="margin: 0px; padding: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_F2" runat="server" Font-Size="11pt"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_M2" runat="server"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_T2" runat="server"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_W2" runat="server"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_R2" runat="server"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_F2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #333333; width: 10px;" rowspan="3">
                    第三節</td>
                <td style="border: 1px solid #333333; font-size: 9pt; width: 45px; text-align: center;" 
                    rowspan="3">
                    10:10<br />
                    ~<br />
                    11:00</td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_M3" runat="server"
                        ></asp:Label>
                </td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_T3" runat="server"
                        ></asp:Label>
                </td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_W3" runat="server"
                        ></asp:Label>
                </td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_R3" runat="server"
                        ></asp:Label>
                </td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_F3" runat="server"
                        ></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="margin: 0px; padding: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_M3" runat="server" Font-Size="11pt"></asp:Label>
                </td>
                <td style="margin: 0px; padding: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_T3" runat="server" Font-Size="11pt"></asp:Label>
                </td>
                <td style="margin: 0px; padding: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_W3" runat="server" Font-Size="11pt"></asp:Label>
                </td>
                <td style="margin: 0px; padding: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_R3" runat="server" Font-Size="11pt"></asp:Label>
                </td>
                <td style="margin: 0px; padding: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_F3" runat="server" Font-Size="11pt"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_M3" runat="server"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_T3" runat="server"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_W3" runat="server"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_R3" runat="server"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_F3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #333333; width: 10px;" rowspan="3">
                    第四節</td>
                <td style="border: 1px solid #333333; font-size: 9pt; width: 45px; text-align: center;" 
                    rowspan="3">
                    11:10<br />
                    ~<br />
                    12:00</td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_M4" runat="server"
                        ></asp:Label>
                </td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_T4" runat="server"
                        ></asp:Label>
                </td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_W4" runat="server"
                        ></asp:Label>
                </td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_R4" runat="server"
                        ></asp:Label>
                </td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_F4" runat="server"
                        ></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="margin: 0px; padding: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_M4" runat="server" Font-Size="11pt"></asp:Label>
                </td>
                <td style="margin: 0px; padding: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_T4" runat="server" Font-Size="11pt"></asp:Label>
                </td>
                <td style="margin: 0px; padding: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_W4" runat="server" Font-Size="11pt"></asp:Label>
                </td>
                <td style="margin: 0px; padding: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_R4" runat="server" Font-Size="11pt"></asp:Label>
                </td>
                <td style="margin: 0px; padding: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_F4" runat="server" Font-Size="11pt"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_M4" runat="server"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_T4" runat="server"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_W4" runat="server"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_R4" runat="server"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_F4" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td  style="width: 10px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td style="height: 10px; font-size: 1px;">
                    &nbsp;</td>
                <td style="height: 10px; font-size: 1px;">
                    &nbsp;</td>
                <td style="height: 10px; font-size: 1px;">
                    &nbsp;</td>
                <td style="height: 10px; font-size: 1px;">
                    &nbsp;</td>
                <td style="height: 10px; font-size: 1px;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 10px;"  rowspan="12">
                    下<br />
                    午</td>
                <td style="border: 1px solid #333333; width: 10px;" rowspan="3">
                    第五節</td>
                <td style="border: 1px solid #333333; font-size: 9pt; width: 45px; text-align: center;" 
                    rowspan="3">
                    13:10<br />
                    ~<br />
                    14:00</td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_M5" runat="server"></asp:Label>
                </td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_T5" runat="server"></asp:Label>
                </td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_W5" runat="server"></asp:Label>
                </td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_R5" runat="server"></asp:Label>
                </td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_F5" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="margin: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_M5" runat="server" Font-Size="11pt"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_T5" runat="server" Font-Size="11pt"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_W5" runat="server" Font-Size="11pt"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_R5" runat="server" Font-Size="11pt"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_F5" runat="server" Font-Size="11pt"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_M5" runat="server"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_T5" runat="server"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_W5" runat="server"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_R5" runat="server"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_F5" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #333333; width: 10px;" rowspan="3">
                    第六節</td>
                <td style="border: 1px solid #333333; font-size: 9pt; width: 45px; text-align: center;" 
                    rowspan="3">
                    14:05<br />
                    ~<br />
                    14:55</td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_M6" runat="server"></asp:Label>
                </td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_T6" runat="server"></asp:Label>
                </td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_W6" runat="server"></asp:Label>
                </td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_R6" runat="server"></asp:Label>
                </td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_F6" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="margin: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_M6" runat="server" Font-Size="11pt"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_T6" runat="server" Font-Size="11pt"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_W6" runat="server" Font-Size="11pt"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_R6" runat="server" Font-Size="11pt"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_F6" runat="server" Font-Size="11pt"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_M6" runat="server"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_T6" runat="server"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_W6" runat="server"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_R6" runat="server"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_F6" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #333333; width: 10px;" rowspan="3">
                    第七節</td>
                <td style="border: 1px solid #333333; font-size: 9pt; width: 45px; text-align: center;" 
                    rowspan="3">
                    15:10<br />
                    ~<br />
                    16:00</td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_M7" runat="server"></asp:Label>
                </td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_T7" runat="server"></asp:Label>
                </td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_W7" runat="server"></asp:Label>
                </td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_R7" runat="server"></asp:Label>
                </td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_F7" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="margin: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_M7" runat="server" Font-Size="11pt"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_T7" runat="server" Font-Size="11pt"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_W7" runat="server" Font-Size="11pt"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_R7" runat="server" Font-Size="11pt"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_F7" runat="server" Font-Size="11pt"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_M7" runat="server"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_T7" runat="server"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_W7" runat="server"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_R7" runat="server"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_F7" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border: 1px solid #333333; width: 10px;" rowspan="3">
                    第八節</td>
                <td style="border: 1px solid #333333; font-size: 9pt; width: 45px; text-align: center;" 
                    rowspan="3">
                    16:10<br />
                    ~<br />
                    17:00</td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_M8" runat="server"></asp:Label>
                </td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_T8" runat="server"></asp:Label>
                </td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_W8" runat="server"></asp:Label>
                </td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_R8" runat="server"></asp:Label>
                </td>
                <td style="padding: 0px; border-style: solid solid none solid; border-width: 1px; border-color: #333333;" 
                    class="ClassName">
                    <asp:Label ID="lb_ClassName_F8" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="margin: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_M8" runat="server" Font-Size="11pt"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_T8" runat="server" Font-Size="11pt"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_W8" runat="server" Font-Size="11pt"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_R8" runat="server" Font-Size="11pt"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid none solid; border-width: 1px; border-color: #333333;" 
                    class="Teacher">
                    <asp:Label ID="lb_TeacherName_F8" runat="server" Font-Size="11pt"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt; height: 10px;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_M8" runat="server"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt; height: 10px;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_T8" runat="server"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt; height: 10px;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_W8" runat="server"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt; height: 10px;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_R8" runat="server"></asp:Label>
                </td>
                <td style="margin: 0px; border-style: none solid solid solid; border-width: 1px; border-color: #333333; font-size: 10pt; height: 10px;" 
                    class="Classroom">
                    <asp:Label ID="lb_Classroom_F8" runat="server"></asp:Label>
                </td>
            </tr>
        </table>

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
