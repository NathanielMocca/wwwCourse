<%@ Page Language="C#" AutoEventWireup="true" CodeFile="32_pollGrid2.aspx.cs" Inherits="_05_MidTerm_051_Test_I__0406_32_pollGrid2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>32_pollGrid2</title>
    <link href="../../Styles/3_tripStyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .新增樣式1 {
            font-family: 微軟正黑體;
        }
        .auto-style1 {
            font-family: 微軟正黑體;
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span style="color: rgb(0, 0, 0); font-family: 標楷體; font-size: xx-large; font-style: normal; font-variant: normal; font-weight: bold; letter-spacing: normal; line-height: normal; orphans: auto; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">最美的季節 投票列表<br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style1" ForeColor="Black" GridLines="Vertical" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="pollId" DataSourceID="SqlDataSource1" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="pollId" HeaderText="序號" InsertVisible="False" ReadOnly="True" SortExpression="pollId" />
                <asp:BoundField DataField="season" HeaderText="季節剪影" SortExpression="season" />
                <asp:BoundField DataField="pollTime" HeaderText="投票時間" SortExpression="pollTime" />
                <asp:BoundField DataField="seasonId" HeaderText="seasonId" SortExpression="seasonId" Visible="False" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WWW33ConnectionString %>" SelectCommand="SELECT poll.pollId, season.season, poll.pollTime, poll.seasonId FROM poll INNER JOIN season ON poll.seasonId = season.seasonId ORDER BY poll.pollId DESC"></asp:SqlDataSource>
            <br />
        </span>
    
    </div>
    </form>
</body>
</html>
