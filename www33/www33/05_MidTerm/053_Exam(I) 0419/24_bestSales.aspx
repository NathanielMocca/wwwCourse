<%@ Page Language="C#" AutoEventWireup="true" CodeFile="24_bestSales.aspx.cs" Inherits="_05_Midterm_053_Exam_I__0419_24_bestSales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../Styles/tripStyleSheet.css" rel="stylesheet" />
    <title>bestSales</title>
</head>
<body class="body">
    <form id="form1" runat="server">
    <div>
    
        <span class="title">銷售統計圖</span><br />
    
        <asp:RadioButtonList ID="salseRadioButtonList" runat="server" AutoPostBack="True" DataSourceID="productSqlDataSource" DataTextField="category" DataValueField="categoryId" OnSelectedIndexChanged="salseRadioButtonList_SelectedIndexChanged" RepeatDirection="Horizontal">
        </asp:RadioButtonList>
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="productId" DataSourceID="salseSqlDataSource">
            <EditItemTemplate>
                productId:
                <asp:Label ID="productIdLabel1" runat="server" Text='<%# Eval("productId") %>' />
                <br />
                total:
                <asp:TextBox ID="totalTextBox" runat="server" Text='<%# Bind("total") %>' />
                <br />
                amount:
                <asp:TextBox ID="amountTextBox" runat="server" Text='<%# Bind("amount") %>' />
                <br />
                productName:
                <asp:TextBox ID="productNameTextBox" runat="server" Text='<%# Bind("productName") %>' />
                <br />
                category:
                <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                <br />
                categoryId:
                <asp:TextBox ID="categoryIdTextBox" runat="server" Text='<%# Bind("categoryId") %>' />
                <br />
                flickrId:
                <asp:TextBox ID="flickrIdTextBox" runat="server" Text='<%# Bind("flickrId") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <InsertItemTemplate>
                total:
                <asp:TextBox ID="totalTextBox" runat="server" Text='<%# Bind("total") %>' />
                <br />
                amount:
                <asp:TextBox ID="amountTextBox" runat="server" Text='<%# Bind("amount") %>' />
                <br />
                productName:
                <asp:TextBox ID="productNameTextBox" runat="server" Text='<%# Bind("productName") %>' />
                <br />
                category:
                <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                <br />
                categoryId:
                <asp:TextBox ID="categoryIdTextBox" runat="server" Text='<%# Bind("categoryId") %>' />
                <br />
                flickrId:
                <asp:TextBox ID="flickrIdTextBox" runat="server" Text='<%# Bind("flickrId") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                productName:
                <asp:Label ID="productNameLabel" runat="server" Text='<%# Bind("productName") %>' />
                <br />
                total:
                <asp:Label ID="totalLabel" runat="server" Text='<%# Bind("total") %>' />
                <br />
                amount:
                <asp:Label ID="amountLabel" runat="server" Text='<%# Bind("amount") %>' />
                <br />
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("flickrId", "http://farm9.staticflickr.com/{0}") %>' />
                <br />
            </ItemTemplate>
        </asp:FormView>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="productId" DataSourceID="salseSqlDataSource">
            <Columns>
                <asp:BoundField DataField="productId" HeaderText="序號" InsertVisible="False" ReadOnly="True" SortExpression="productId" />
                <asp:BoundField DataField="productName" HeaderText="產品" SortExpression="productName" />
                <asp:BoundField DataField="amount" HeaderText="數量" ReadOnly="True" SortExpression="amount" />
                <asp:BoundField DataField="total" HeaderText="總價" ReadOnly="True" SortExpression="total" />
            </Columns>
        </asp:GridView>
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
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
