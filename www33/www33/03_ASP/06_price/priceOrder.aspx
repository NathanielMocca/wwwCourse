<%@ Page Language="C#" AutoEventWireup="true" CodeFile="priceOrder.aspx.cs" Inherits="_03_ASP_06_price_priceOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>price Order</title>
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
                    <asp:Label ID="userLabel" runat="server" Text="Label" CssClass="tableContent"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="tableHead">單&nbsp;&nbsp; 價：</td>
                <td>
                    <asp:Label ID="priceLabel" runat="server" CssClass="tableContent" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="tableHead">天&nbsp;&nbsp; 數：</td>
                <td>
                    <asp:Label ID="daysLabel" runat="server" CssClass="tableContent" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="tableHead">總&nbsp;&nbsp; 價：</td>
                <td>
                    <asp:Label ID="totalLabel" runat="server" CssClass="tableContent" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="tableHead">啟航日：</td>
                <td>
                    <asp:Label ID="tripDateLabel" runat="server" Text="Label" CssClass="tableContent"></asp:Label>
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
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/03_ASP/06_price/priceTrip.aspx">回前頁</asp:HyperLink>
        <br />
        <asp:HiddenField ID="youtubeHiddenField" runat="server" />
        <br />
    </div>
    </form>
</body>
</html>

<script src="../../Javascript/youtubeOrderJavaScript.js"></script>
<script type="text/javascript" src="https://www.youtube.com/iframe_api"></script>