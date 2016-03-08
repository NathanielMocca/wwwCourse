<%@ Page Language="C#" AutoEventWireup="true" CodeFile="calendarOrder.aspx.cs" Inherits="_03_ASP_06_calendar_calendarOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>calendar Order</title>
    <link href="../../Styles/tripStyleSheet.css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server" class="body">
    <div class="title">
    
        <asp:Label ID="placeLabel" runat="server" Text="Label" CssClass="placeTitle"></asp:Label>
        請參考</div>
        <table>
            <tr>
                <td>旅行者：</td>
                <td>
                    <asp:Label ID="userLabel" runat="server" Text="Label"></asp:Label>
                    <br />
                </td>
            </tr>

            <tr>
                <td>啟航日：</td>
                <td>
                    <asp:Label ID="tripDateLabel" runat="server"></asp:Label>
                </td>
            </tr>

        </table>
         &nbsp;<br/>
   

        <div id="player">
        </div>

    <p>
        &nbsp; </p>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/03_ASP/06_calendar/calendarTrip.aspx">回上頁</asp:HyperLink>
        </p>
        <p>
            <asp:HiddenField ID="youtubeHiddenField" runat="server" />
        </p>
    </form>
</body>
</html>
<script src="../../Javascript/youtubeOrderJavascript.js"></script>
<script type = "text/javascript" src="https://www.youtube.com/iframe_api"></script>