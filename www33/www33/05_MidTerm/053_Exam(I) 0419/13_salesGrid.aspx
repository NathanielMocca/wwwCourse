<%@ Page Language="C#" AutoEventWireup="true" CodeFile="13_salesGrid.aspx.cs" Inherits="_05_Midterm_053_Exam_I__0419_11_simpleBuy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../Styles/tripStyleSheet.css" rel="stylesheet" />
    <title>salesGrid</title>
</head>
<body>
    <form id="form1" runat="server" class="body">
    <div>
    
        <span class="title">銷售列表<br />
        </span>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="salesId" DataSourceID="productSqlDataSource" EmptyDataText="沒有資料錄可顯示。" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:BoundField DataField="salesId" HeaderText="序號" InsertVisible="False" ReadOnly="True" SortExpression="salesId" />
                <asp:BoundField DataField="productName" HeaderText="產品" SortExpression="productName" />
                <asp:BoundField DataField="category" HeaderText="類別" SortExpression="category" />
                <asp:BoundField DataField="amount" HeaderText="數量" SortExpression="amount" />
                <asp:BoundField DataField="total" HeaderText="總額" SortExpression="total" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="productSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:examConnectionString2 %>" DeleteCommand="DELETE FROM [product] WHERE [productId] = @productId" InsertCommand="INSERT INTO [product] ([productName], [categoryId], [category], [price], [flickrId]) VALUES (@productName, @categoryId, @category, @price, @flickrId)" SelectCommand="SELECT sales.salesId, product.productName, sales.amount, sales.total, product.category FROM product INNER JOIN sales ON product.productId = sales.productId ORDER BY sales.salesId DESC" UpdateCommand="UPDATE [product] SET [productName] = @productName, [categoryId] = @categoryId, [category] = @category, [price] = @price, [flickrId] = @flickrId WHERE [productId] = @productId">
            <DeleteParameters>
                <asp:Parameter Name="productId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="productName" Type="String" />
                <asp:Parameter Name="categoryId" Type="Int32" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="flickrId" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="productName" Type="String" />
                <asp:Parameter Name="categoryId" Type="Int32" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="flickrId" Type="String" />
                <asp:Parameter Name="productId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
