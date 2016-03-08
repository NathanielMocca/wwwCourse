<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pricerOrder.aspx.cs" Inherits="_03_ASP_07_price_priceOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>price Order</title>
    <link href="../../Styles/tripStyleSheet.css" rel="stylesheet" />
    
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
    </style>
    
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

            <tr>
                <td>單價：</td>
                <td>
                    <asp:Label ID="priceLabel" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>

            <tr>
                <td>天數：</td>
                <td>
                    <asp:Label ID="daysLabel" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>

            <tr>
                <td class="auto-style1">總價：</td>
                <td class="auto-style1">
                    <asp:Label ID="totalLabel" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>

        </table>
         &nbsp;<br/>
   

        <div id="player">
        </div>

    <p>
        &nbsp; </p>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/03_ASP/07_price/priceTrip.aspx">回上頁</asp:HyperLink>
        </p>
        <p>
            <asp:HiddenField ID="youtubeHiddenField" runat="server" />
        </p>
    </form>
</body>
</html>
<script src="../../Javascript/youtubeOrderJavascript.js"></script>
<script type = "text/javascript" src="https://www.youtube.com/iframe_api"></script>