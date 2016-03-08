<%@ Page Language="C#" AutoEventWireup="true" CodeFile="25_pollDatalist.aspx.cs" Inherits="_05_MidTerm_051_Test_I__0406_25_pollDatalist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>poll Datalist</title>
    <link href="../../Styles/3_tripStyleSheet.css" rel="stylesheet" />
</head>
<body class="body">
    <form id="form1" runat="server">
    <div>
    
        <div>
            <span class="title">最美的季節 票數統計<br />
            </span>
            <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="pollListSqlDataSource" ForeColor="Black" GridLines="Horizontal" RepeatDirection="Horizontal">
                <AlternatingItemStyle BackColor="White" />
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#F7F7DE" />
                <ItemTemplate>
                    &nbsp;<asp:Label ID="seasonLabel" runat="server" Text='<%# Eval("season") %>' />
                    <br />
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("flickrId","http://farm9.staticflickr.com/{0}") %>' />
                    <br />
                    票數:&nbsp;<asp:Label ID="Expr1Label" runat="server" Text='<%# Eval("Expr1") %>' />
                    <br />
                    <br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
            <br />
            <asp:SqlDataSource ID="pollListSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:WWW33ConnectionString %>" SelectCommand="SELECT season.season, poll.seasonId, COUNT(*) AS Expr1, season.flickrId FROM poll INNER JOIN season ON poll.seasonId = season.seasonId GROUP BY season.season, poll.seasonId, season.flickrId"></asp:SqlDataSource>
            </div>
    
    </div>
    </form>
</body>
</html>
