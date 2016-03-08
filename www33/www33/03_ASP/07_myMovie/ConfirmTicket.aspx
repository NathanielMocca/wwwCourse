<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ConfirmTicket.aspx.cs" Inherits="_03_ASP_07_myMovie_ConfirmTicket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>確認您的訂票</title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
        .新增樣式1 {
            font-family: 微軟正黑體;
        }
        .auto-style2 {
            color: #FF0066;
        }
    </style>
</head>
<link href="../../Styles/3_tripStyleSheet.css" rel="stylesheet" />
<body>
    <form id="form1" runat="server">
    <div>
    
        <div>
            <span class="title">您訂的票是...</span><br />
            <br />
            <asp:Label ID="MovieLabel" runat="server" Text="MovieLabel" CssClass="auto-style1"></asp:Label>
            <span class="新增樣式1">
            <br class="auto-style1" />
            </span>
            <asp:Label ID="DateLabel" runat="server" Text="DateLabel" CssClass="auto-style1"></asp:Label>
            &nbsp;
            <asp:Label ID="TimeLabel" runat="server" Text="TimeLabel" CssClass="auto-style1"></asp:Label>
            <span class="新增樣式1">
            <br class="auto-style1" />
            </span>
            <asp:Label ID="TheaterLabel" runat="server" Text="TheaterLabel" CssClass="auto-style1"></asp:Label>
            <span class="新增樣式1">
            <br class="auto-style1" />
            </span>
            <asp:Label ID="NumberLabel" runat="server" Text="NumberLabel" CssClass="auto-style1"></asp:Label>
            張<br />
            <br />
            <span class="auto-style2"><strong>請於當日提早至網路訂票櫃台取票，謝謝您。</strong></span></div>
    
    </div>
    </form>
</body>
</html>
