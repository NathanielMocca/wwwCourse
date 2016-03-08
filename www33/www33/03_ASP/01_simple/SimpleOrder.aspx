<%@ Page Language="C#" AutoEventWireup="true" CodeFile="simpleOrder.aspx.cs" Inherits="_03_ASP_01_simple_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Simple Order</title>
    <link href="../../Styles/3_tripStyleSheet.css" rel="stylesheet" />

</head>
<body class="body">
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="placeLabel" runat="server" Text="Label" CssClass="placeTitle"></asp:Label>
        <span class="title">旅遊資訊，請參考</span><br />
        <br />
        <table>
            <tr>
                <td><span class="tableHead">旅行者：</span></td>
                <td>
                    <asp:Label ID="userLabel" runat="server" Text="Label" CssClass="tableHead"></asp:Label>
                </td>
            </tr>
        </table>
    <embed id ="tripMediaPlayer" runat="server" height="132" width="176" showcontrols="0" /><br />
        <input id="PlayButton" type="button" value="播放" onclick="playButton_onclick()" />&nbsp; 
        <input id="PauseButton" type="button" value="暫停" onclick="pauseButton_onclick()"/>&nbsp;
        <input id="StopButton" type="button" value="停止" onclick="stopButton_onclick()"/><br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/03_ASP/01_simple/simpleTrip.aspx">回前頁</asp:HyperLink>
        <br />
    </div>
    </form>
</body>
</html>
<script src="../../Javascript/tripMediaJavaScript.js"></script>
