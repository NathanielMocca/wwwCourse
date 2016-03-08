<%@ Page Language="C#" AutoEventWireup="true" CodeFile="10_season.aspx.cs" Inherits="_05_MidTerm_051_Test_I__0406_10_season" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>season</title>
    <link href="../../Styles/3_tripStyleSheet.css" rel="stylesheet" />
</head>
<body class="body">
    <form id="form1" runat="server">
        <div>
        </div>
    <div>
    
        <span class="title">我提供這些季節的剪影</span><br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="seasonId" DataSourceID="seasonSqlDataSource" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="seasonId" HeaderText="序號" ReadOnly="True" SortExpression="seasonId" />
                <asp:BoundField DataField="season" HeaderText="季節剪影" SortExpression="season" />
                <asp:BoundField DataField="flickrId" HeaderText="flickr 照片" SortExpression="flickrId" />
                <asp:CommandField ButtonType="Button" HeaderText="管理" ShowDeleteButton="True" ShowEditButton="True" />
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
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="seasonId" DataSourceID="seasonSqlDataSource" ForeColor="Black" GridLines="Vertical" Height="50px" Width="300px" DefaultMode="Insert">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="seasonId" HeaderText="序號" ReadOnly="True" SortExpression="seasonId" InsertVisible="False" />
                <asp:BoundField DataField="season" HeaderText="季節剪影" SortExpression="season" />
                <asp:BoundField DataField="flickrId" HeaderText="flickr 照片" SortExpression="flickrId" />
                <asp:CommandField ShowInsertButton="True" ButtonType="Button" InsertText="新增" />
            </Fields>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
        </asp:DetailsView>
        <br />
        <asp:SqlDataSource ID="seasonSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:WWW33ConnectionString %>" SelectCommand="SELECT * FROM [season]" DeleteCommand="DELETE FROM [season] WHERE [seasonId] = @seasonId" InsertCommand="INSERT INTO [season] ([season], [flickrId]) VALUES (@season, @flickrId)" UpdateCommand="UPDATE [season] SET [season] = @season, [flickrId] = @flickrId WHERE [seasonId] = @seasonId">
            <DeleteParameters>
                <asp:Parameter Name="seasonId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="season" Type="String" />
                <asp:Parameter Name="flickrId" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="season" Type="String" />
                <asp:Parameter Name="flickrId" Type="String" />
                <asp:Parameter Name="seasonId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
