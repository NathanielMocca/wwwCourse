<%@ Page Language="C#" AutoEventWireup="true" CodeFile="calendarOrder.aspx.cs" Inherits="_03_ASP_05_calendar_calendarOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>calendar Order</title>
    <link href="../../Styles/3_tripStyleSheet.css" rel="stylesheet" />

</head>
<body class="body">
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="placeLabel" runat="server" Text="Label" CssClass="placeTitle"></asp:Label>
        <span class="title">旅遊資訊，請參考</span><br />
        <br />
        <table align="center">
            <tr>
                <td><span class="tableHead">旅行者：</span></td>
                <td>
                    <asp:Label ID="userLabel" runat="server" Text="Label" CssClass="tableHead"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>啟航日：</td>
                <td>
                    <asp:Label ID="tripDateLabel" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        <div id="player">
        </div>
        <br />
        &nbsp; 
        &nbsp;
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/03_ASP/05_calendar/calendarTrip.aspx">回前頁</asp:HyperLink>
        <br />
        <asp:HiddenField ID="youtubeHiddenField" runat="server" />
        <br />
    </div>
    </form>
</body>
</html>

<script src="../../Javascript/youtubeOrderJavaScript.js"></script>
<script type="text/javascript" src="https://www.youtube.com/iframe_api"></script>