﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Account_Approve.aspx.vb" Inherits="WebPage_Admin_Account_Approve" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="shortcut icon" href="../../Images/WebPic/favicon.ico" type="image/x-icon" />

    <script src="../../Jquery/sweetalert.min.js"></script> 
     <link rel="stylesheet" type="text/css" href="../../Jquery/sweetalert.css">
</head>
<body >
    <form id="form1" runat="server">
        <img src="../../Images/WebPic/wait.gif" width="100%" />

     <script type="text/javascript">

         function confirmReset() {
             swal({
                 title: "帳號啟用完成", text: "您可以開始使用您的帳號了",
                 type: "success",
                 showCancelButton: false,
                 confirmButtonText: "OK",
                 closeOnConfirm: false
             }, function () {
                 window.location.href = "../Index.aspx";
             });
         }

        </script>
    </form>
</body>
</html>
