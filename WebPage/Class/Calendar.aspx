<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Calendar.aspx.vb" Inherits="WebPage_Class_Member" %>

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

   <style type="text/css">
        .DayNum
        {
            color:#666666;
            font-weight:bold;
            }
        .stroke
        {
            padding: 10px;
            color: #666666;
            text-align: left;
            font-size: 11pt;
        }
        .stroke_Row
        {
            height:100px;
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
			
			
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Account %>" 
            SelectCommand="SELECT * FROM [Account]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Account %>" 
            SelectCommand="SELECT * FROM [User] WHERE ([User_Class_ID] = @User_Class_ID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="User_Class_ID" QueryStringField="classid" 
                    Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <h3>
				班級行事曆 
                Class Calendar<asp:Label ID="lb_Teacher_ID" runat="server" Visible="False"></asp:Label>
            </h3>
			<p>
				以下是這個班級每天的作業、考試、提醒等等的待辦事項，點進連結裡可以瀏覽詳細資訊（時間、負責人等）。如果你是這個班級的同學，別忘了登入後，到個人後台簽註自己完成的事項喔！</p>
            <p>
				&nbsp;<small>This is the latest in this class curriculum. Through these lessons make us grow.</small>
			</p>
            <br />
            <br />
         <div style="text-align:center;">
             <asp:Button ID="bt_Insert_Stroke" runat="server" Text="新增" 
                 PostBackUrl="~/WebPage/Class/Cadres/Cadres_Storke.aspx" /></div>
        <div style="font-size: 25pt; text-align: center">
            <asp:LinkButton ID="linkb_Calendar_lastMon" runat="server">&lt;</asp:LinkButton>
            &nbsp;<asp:Label ID="lb_Calendar_Month" runat="server" Text="2016/9" 
                Font-Bold="True" Font-Names="微軟正黑體"></asp:Label>
            &nbsp;<asp:LinkButton ID="linkb_Calendar_nextMon" runat="server">&gt;</asp:LinkButton>
        </div>
        
        <br />
        
        <table cellpadding="0" cellspacing="0" style="font-family: 微軟正黑體; font-size: 12pt; color: #333333; vertical-align: middle; text-align: center; border: 3px solid #333333; width: 100%">
            <tr>
                <td style="border-width: 2px; border-color: #333333; color: #000000; font-weight: bold; font-size: 14pt; border-right-style: solid;">
                    星期日 Sun</td>
                <td style="border-width: 2px; border-color: #333333; color: #000000; font-weight: bold; font-size: 14pt; border-right-style: solid;">
                    星期一 Mon</td>
                <td style="border-width: 2px; border-color: #333333; color: #000000; font-weight: bold; font-size: 14pt; border-right-style: solid;">
                    星期二 Tue</td>
                <td style="border-width: 2px; border-color: #333333; color: #000000; font-weight: bold; font-size: 14pt; border-right-style: solid;">
                    星期三 Wed</td>
                <td style="border-width: 2px; border-color: #333333; color: #000000; font-weight: bold; font-size: 14pt; border-right-style: solid;">
                    星期四 Thu</td>
                <td style="border-width: 2px; border-color: #333333; color: #000000; font-weight: bold; font-size: 14pt; border-right-style: solid;">
                    星期五 Fri</td>
                <td style="color: #000000; font-weight: bold; font-size: 14pt">
                    星期六 Sat</td>
            </tr>
            <tr>
                <td style="border-style: solid dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D1" runat="server"></asp:Label>
                </td>
                <td style="border-style: solid dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D2" runat="server"></asp:Label>
                </td>
                <td style="border-style: solid dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D3" runat="server"></asp:Label>
                </td>
                <td style="border-style: solid dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D4" runat="server"></asp:Label>
                </td>
                <td style="border-style: solid dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D5" runat="server"></asp:Label>
                </td>
                <td style="border-style: solid dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D6" runat="server"></asp:Label>
                </td>
                <td style="border-style: solid none none none; border-width: 2px; border-color: #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D7" runat="server"></asp:Label>
                </td>
            </tr>
            <tr class="stroke_Row">
                <td style="border-style: none dashed dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T1" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T2" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T3" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T4" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T5" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T6" runat="server"></asp:Label>
                </td>
                <td style="border-style: none none dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T7" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D8" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D9" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D10" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D11" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D12" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D13" runat="server"></asp:Label>
                </td>
                <td class="DayNum">
                    <asp:Label ID="lb_Calendar_D14" runat="server"></asp:Label>
                </td>
            </tr>
            <tr class="stroke_Row">
                <td style="border-style: none dashed dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T8" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T9" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T10" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T11" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T12" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T13" runat="server"></asp:Label>
                </td>
                <td style="border-style: none none dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T14" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D15" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D16" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D17" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D18" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D19" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D20" runat="server"></asp:Label>
                </td>
                <td class="DayNum">
                    <asp:Label ID="lb_Calendar_D21" runat="server"></asp:Label>
                </td>
            </tr>
            <tr class="stroke_Row">
                <td style="border-style: none dashed dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T15" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T16" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T17" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T18" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T19" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T20" runat="server"></asp:Label>
                </td>
                <td style="border-style: none none dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T21" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D22" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D23" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D24" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D25" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D26" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D27" runat="server"></asp:Label>
                </td>
                <td class="DayNum">
                    <asp:Label ID="lb_Calendar_D28" runat="server"></asp:Label>
                </td>
            </tr>
            <tr class="stroke_Row">
                <td style="border-style: none dashed dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T22" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T23" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T24" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T25" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T26" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T27" runat="server"></asp:Label>
                </td>
                <td style="border-style: none none dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T28" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D29" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D30" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D31" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D32" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D33" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D34" runat="server"></asp:Label>
                </td>
                <td class="DayNum">
                    <asp:Label ID="lb_Calendar_D35" runat="server"></asp:Label>
                </td>
            </tr>
            <tr class="stroke_Row">
                <td style="border-style: none dashed dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T29" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T30" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T31" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T32" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T33" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T34" runat="server"></asp:Label>
                </td>
                <td style="border-style: none none dashed none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T35" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D36" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D37" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D38" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D39" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D40" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #333333 #333333;" 
                    class="DayNum">
                    <asp:Label ID="lb_Calendar_D41" runat="server"></asp:Label>
                </td>
                <td class="DayNum">
                    <asp:Label ID="lb_Calendar_D42" runat="server"></asp:Label>
                </td>
            </tr>
            <tr class="stroke_Row">
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T36" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T37" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T38" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T39" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T40" runat="server"></asp:Label>
                </td>
                <td style="border-style: none dashed none none; border-width: 2px; border-color: #333333 #666666 #666666 #333333;" 
                    class="stroke">
                    <asp:Label ID="lb_Calendar_T41" runat="server"></asp:Label>
                </td>
                <td class="stroke">
                    <asp:Label ID="lb_Calendar_T42" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
			<div style="margin-bottom:100px;"></div>
		</div>
	</div>
</div>

    <script src="../../src/js/jquery.min.js"></script>
    <script src="../../src/js/bootstrap.min.js"></script>
    <script src="../../src/js/scripts.js"></script>
    </form>
  </body>
</html>
