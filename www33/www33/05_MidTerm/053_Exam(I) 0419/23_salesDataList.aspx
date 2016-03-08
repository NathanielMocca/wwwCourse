<%@ Page Language="C#" AutoEventWireup="true" CodeFile="23_salesDataList.aspx.cs" Inherits="_05_Midterm_053_Exam_I__0419_23_salesDataList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../Styles/tripStyleSheet.css" rel="stylesheet" />
    <title>salesDataList</title>
</head>
<body class="body">
    <form id="form1" runat="server">
    <div>
    
        <span class="title">銷售統計圖</span><br />
        <br />
        <br />
        <asp:RadioButtonList ID="salseRadioButtonList" runat="server" AutoPostBack="True" DataSourceID="productSqlDataSource" DataTextField="category" DataValueField="categoryId" RepeatDirection="Horizontal">
        </asp:RadioButtonList>
        <br />
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="productId" DataSourceID="salseSqlDataSource" RepeatDirection="Horizontal">
            <ItemTemplate>
                productName:
                <asp:Label ID="productNameLabel" runat="server" Text='<%# Eval("productName") %>' />
                <br />
                total:
                <asp:Label ID="totalLabel" runat="server" Text='<%# Eval("total") %>' />
                <br />
                amount:
                <asp:Label ID="amountLabel" runat="server" Text='<%# Eval("amount") %>' />
                <br />
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("flickrId", "http://farm9.staticflickr.com/{0}") %>' />
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="productSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:examConnectionString2 %>" SelectCommand="SELECT categoryId, category FROM product GROUP BY categoryId, category"></asp:SqlDataSource>
        <asp:SqlDataSource ID="salseSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:examConnectionString2 %>" SelectCommand="SELECT product.productId, SUM(sales.total) AS total, SUM(sales.amount) AS amount, product.productName, product.category, product.categoryId, product.flickrId FROM product INNER JOIN sales ON product.productId = sales.productId WHERE (product.categoryId = @categoryId) GROUP BY product.productId, product.productName, product.category, product.categoryId, product.flickrId ORDER BY total DESC">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="1" Name="categoryId" SessionField="categoryId" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
