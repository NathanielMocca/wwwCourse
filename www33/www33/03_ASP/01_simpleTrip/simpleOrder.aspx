<%@ Page Language="C#" AutoEventWireup="true" CodeFile="simpleOrder.aspx.cs" Inherits="_03_ASP_01_simpleTrip_simpleOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Simple Order</title>
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

        </table>
         <embed id="tripMediaPlayer" runat="server"  showcontrols="0" height="132" width="176" />
<br/>
    

    <p>
        <input id="playButton" type="button" value="播放" onclick="playButton_onclick()" />
        <input id="pauseButton" type="button" value="暫停" onclick="pauseButton_onclick()"/>
        <input id="stopButton" type="button" value="停止" onclick="stopButton_onclick()"/></p>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/03_ASP/01_simpleTrip/simpleTrip.aspx">回上頁</asp:HyperLink>
        </p>
    </form>
</body>
</html>
<script src="../../Javascript/tripJavaScript.js"></script>
