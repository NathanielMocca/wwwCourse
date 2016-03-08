<%@ Page Language="C#" AutoEventWireup="true" CodeFile="23_pollGrid1.aspx.cs" Inherits="_05_MidTerm_051_Test_I__0406_23_pollGrid1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>23_pollGrid1</title>
    <link href="../../Styles/3_tripStyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div>
            <span class="title">最美的季節 投票列表</span><br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="pollId" DataSourceID="pollListSqlDataSource" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="pollId" HeaderText="序號" InsertVisible="False" ReadOnly="True" SortExpression="pollId" />
                    <asp:BoundField DataField="season" HeaderText="季節剪影" SortExpression="season" />
                    <asp:BoundField DataField="pollTime" HeaderText="pollTime" SortExpression="pollTime" Visible="False" />
                    <asp:BoundField DataField="seasonId" HeaderText="seasonId" SortExpression="seasonId" Visible="False" />
                    <asp:BoundField DataField="Expr1" HeaderText="Expr1" ReadOnly="True" SortExpression="Expr1" Visible="False" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="pollListSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:WWW33ConnectionString %>" SelectCommand="SELECT poll.pollId, season.season, poll.pollTime, poll.seasonId, COUNT(*) AS Expr1 FROM poll INNER JOIN season ON poll.seasonId = season.seasonId GROUP BY poll.pollId, season.season, poll.pollTime, poll.seasonId ORDER BY poll.pollId DESC"></asp:SqlDataSource>
            <br />
        </div>
    
    </div>
    </form>
</body>
</html>
