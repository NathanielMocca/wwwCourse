<%@ Page Language="C#" AutoEventWireup="true" CodeFile="40_pollGrid3.aspx.cs" Inherits="_05_MidTerm_051_Test_I__0406_40_pollGrid3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>40_pollGrid3</title>
    <link href="../../Styles/3_tripStyleSheet.css" rel="stylesheet" />
</head>
<body class="body">
    <form id="form1" runat="server">
    <div>
    
        <div>
            <span class="title">最美的季節 票數統計表</span><br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="seasonpollSqlDataSource" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="seasonId" HeaderText="序號" SortExpression="seasonId" />
                    <asp:BoundField DataField="season" HeaderText="季節剪影" SortExpression="season" />
                    <asp:BoundField DataField="Expr1" HeaderText="票數" ReadOnly="True" SortExpression="Expr1" />
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
            <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="seasonpollSqlDataSource" ForeColor="Black" GridLines="Vertical">
                <EditItemTemplate>
                    seasonId:
                    <asp:TextBox ID="seasonIdTextBox" runat="server" Text='<%# Bind("seasonId") %>' />
                    <br />
                    season:
                    <asp:TextBox ID="seasonTextBox" runat="server" Text='<%# Bind("season") %>' />
                    <br />
                    Expr1:
                    <asp:TextBox ID="Expr1TextBox" runat="server" Text='<%# Bind("Expr1") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    seasonId:
                    <asp:TextBox ID="seasonIdTextBox" runat="server" Text='<%# Bind("seasonId") %>' />
                    <br />
                    season:
                    <asp:TextBox ID="seasonTextBox" runat="server" Text='<%# Bind("season") %>' />
                    <br />
                    Expr1:
                    <asp:TextBox ID="Expr1TextBox" runat="server" Text='<%# Bind("Expr1") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </InsertItemTemplate>
                <ItemTemplate>
                    最美的季節:&nbsp;
                    <asp:Label ID="seasonLabel" runat="server" Text='<%# Bind("season") %>' />
                    <br />
                    票數:
                    <asp:Label ID="Expr1Label" runat="server" Text='<%# Bind("Expr1") %>' />
                    <br />

                </ItemTemplate>
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
            </asp:FormView>
            <br />
            <asp:SqlDataSource ID="seasonpollSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:WWW33ConnectionString %>" SelectCommand="SELECT poll.seasonId, season.season, COUNT(*) AS Expr1 FROM poll INNER JOIN season ON poll.seasonId = season.seasonId GROUP BY poll.seasonId, season.season ORDER BY Expr1 DESC"></asp:SqlDataSource>
            <br />
        </div>
    
    </div>
    </form>
</body>
</html>
