<%@ Page Language="C#" AutoEventWireup="true" CodeFile="wcfLocation.aspx.cs" Inherits="_07_WebServices_wcfLocation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>wcf location</title>
    <link href="../Styles/tripStyleSheet.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        ScriptManager WCF AJAX網頁<br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
            <Services>
                <asp:ServiceReference
                    Path="~/WebServices/LocationService.svc" />
            </Services>
        </asp:ScriptManager>
        <br />
        <asp:RadioButtonList ID="placeRadioButtonList" runat="server" AutoPostBack="True" DataSourceID="placeSqlDataSource" DataTextField="place" DataValueField="tourId" OnDataBound="placeRadioButtonList_DataBound" RepeatDirection="Horizontal">
        </asp:RadioButtonList>
        <br />
        <table>
            <tr>
                <td colspan="2">
                    <asp:Image ID="placeImage" runat="server" Width="16px" />
                </td>
            </tr>
            <tr>
                <td>緯度：</td>
                <td>
                    <asp:Label ID="latitudeLabel" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>經度：</td>
                <td>
                    <asp:Label ID="longitudeLabel" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <div id="player">
        </div>
        <br />
        <asp:SqlDataSource ID="placeSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:WWW33ConnectionString %>" SelectCommand="SELECT [tourId], [place] FROM [tour]"></asp:SqlDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
<script src="../Javascript/wcfJavaScript.js"></script>
<script src="../Javascript/youtubeJavaScript.js"></script>
<script type="text/javascript" src="https://www.youtube.com/iframe_api"></script>