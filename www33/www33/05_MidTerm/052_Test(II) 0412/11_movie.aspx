<%@ Page Language="C#" AutoEventWireup="true" CodeFile="11_movie.aspx.cs" Inherits="_05_MidTerm_052_Test_II__0412_11_movie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>11_movie</title>
    <link href="../../Styles/3_tripStyleSheet.css" rel="stylesheet" />
</head>

<body class="body">
    <form id="form1" runat="server">
        <span class="title">最佳影片 提名</span><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="movieId" DataSourceID="movieSqlDataSource" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="movieId" HeaderText="序號" InsertVisible="False" ReadOnly="True" SortExpression="movieId" />
                <asp:BoundField DataField="movie" HeaderText="電影" SortExpression="movie" />
                <asp:BoundField DataField="flickrId" HeaderText="flickr 照片" SortExpression="flickrId" />
                <asp:CommandField ButtonType="Button" InsertText="新增" ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="movieId" DataSourceID="movieSqlDataSource" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="movieId" HeaderText="movieId" InsertVisible="False" ReadOnly="True" SortExpression="movieId" Visible="False" />
                <asp:BoundField DataField="movie" HeaderText="電影" SortExpression="movie" />
                <asp:BoundField DataField="flickrId" HeaderText="flickr 照片" SortExpression="flickrId" />
                <asp:CommandField ButtonType="Button" InsertText="新增" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <br />
        <asp:SqlDataSource ID="movieSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:WWW33ConnectionString %>" DeleteCommand="DELETE FROM [movie] WHERE [movieId] = @movieId" InsertCommand="INSERT INTO [movie] ([movie], [flickrId]) VALUES (@movie, @flickrId)" SelectCommand="SELECT * FROM [movie]" UpdateCommand="UPDATE [movie] SET [movie] = @movie, [flickrId] = @flickrId WHERE [movieId] = @movieId">
            <DeleteParameters>
                <asp:Parameter Name="movieId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="movie" Type="String" />
                <asp:Parameter Name="flickrId" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="movie" Type="String" />
                <asp:Parameter Name="flickrId" Type="String" />
                <asp:Parameter Name="movieId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
