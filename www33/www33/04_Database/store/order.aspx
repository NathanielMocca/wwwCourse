<%@ Page Language="C#" AutoEventWireup="true" CodeFile="order.aspx.cs" Inherits="_04_Database_store_order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>order</title>
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
        <asp:Button ID="orderButton" runat="server" OnClick="Button1_Click" Text="訂購" />
        &nbsp; 
        &nbsp;
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/03_ASP/06_price/priceTrip.aspx">回前頁</asp:HyperLink>
        <br />
        <asp:HiddenField ID="youtubeHiddenField" runat="server" />
        <asp:HiddenField ID="totalHiddenField" runat="server" />
        <asp:SqlDataSource ID="tripSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:WWW33ConnectionString %>" DeleteCommand="DELETE FROM [trip] WHERE [tripId] = @tripId" InsertCommand="INSERT INTO [trip] ([username], [tourId], [days], [total], [tripDate]) VALUES (@username, @tourId, @days, @total, @tripDate)" SelectCommand="SELECT * FROM [trip]" UpdateCommand="UPDATE [trip] SET [username] = @username, [tourId] = @tourId, [days] = @days, [total] = @total, [tripDate] = @tripDate WHERE [tripId] = @tripId">
            <DeleteParameters>
                <asp:Parameter Name="tripId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:SessionParameter Name="username" SessionField="username" Type="String" />
                <asp:SessionParameter Name="tourId" SessionField="tourId" Type="Int32" />
                <asp:SessionParameter Name="days" SessionField="days" Type="Int32" />
                <asp:SessionParameter Name="total" SessionField="totalHiddenField" Type="Int32" />
                <asp:SessionParameter Name="tripDate" SessionField="tripDate" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="tourId" Type="Int32" />
                <asp:Parameter Name="days" Type="Int32" />
                <asp:Parameter Name="total" Type="Int32" />
                <asp:Parameter Name="tripDate" Type="DateTime" />
                <asp:Parameter Name="tripId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
    </div>
    </form>
</body>
</html>

<script src="../../Javascript/youtubeOrderJavaScript.js"></script>
<script type="text/javascript" src="https://www.youtube.com/iframe_api"></script>