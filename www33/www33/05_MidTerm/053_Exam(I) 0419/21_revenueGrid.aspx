<%@ Page Language="C#" AutoEventWireup="true" CodeFile="21_revenueGrid.aspx.cs" Inherits="_05_Midterm_053_Exam_I__0419_21_revenueGrid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../Styles/tripStyleSheet.css" rel="stylesheet" />
    <title>revenueGrid</title>
</head>
<body class="body">
    <form id="form1" runat="server">
    <div>
    
        <span class="title">熱門商品銷售紀錄</span><br />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="productId" DataSourceID="salseSqlDataSource" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
            <Columns>
                <asp:BoundField DataField="productId" HeaderText="序號" InsertVisible="False" ReadOnly="True" SortExpression="productId" />
                <asp:BoundField DataField="productName" HeaderText="名稱" SortExpression="productName" />
                <asp:BoundField DataField="category" HeaderText="類別" SortExpression="category" />
                <asp:BoundField DataField="price" HeaderText="單價" SortExpression="price" />
                <asp:CommandField ButtonType="Button" InsertText="詳細" ShowSelectButton="True" />
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
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="productId" DataSourceID="salseSqlDataSource">
            <EditItemTemplate>
                productId:
                <asp:Label ID="productIdLabel1" runat="server" Text='<%# Eval("productId") %>' />
                <br />
                productName:
                <asp:TextBox ID="productNameTextBox" runat="server" Text='<%# Bind("productName") %>' />
                <br />
                price:
                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                <br />
                flickrId:
                <asp:TextBox ID="flickrIdTextBox" runat="server" Text='<%# Bind("flickrId") %>' />
                <br />
                Expr1:
                <asp:TextBox ID="Expr1TextBox" runat="server" Text='<%# Bind("Expr1") %>' />
                <br />
                Expr2:
                <asp:TextBox ID="Expr2TextBox" runat="server" Text='<%# Bind("Expr2") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <InsertItemTemplate>
                productName:
                <asp:TextBox ID="productNameTextBox" runat="server" Text='<%# Bind("productName") %>' />
                <br />
                price:
                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                <br />
                flickrId:
                <asp:TextBox ID="flickrIdTextBox" runat="server" Text='<%# Bind("flickrId") %>' />
                <br />
                Expr1:
                <asp:TextBox ID="Expr1TextBox" runat="server" Text='<%# Bind("Expr1") %>' />
                <br />
                Expr2:
                <asp:TextBox ID="Expr2TextBox" runat="server" Text='<%# Bind("Expr2") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Label ID="productNameLabel" runat="server" Text='<%# Bind("productName") %>' />
                <br />
                price:
                <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
                <br />

                數量 
                <asp:Label ID="Expr2Label" runat="server" Text='<%# Bind("Expr2") %>' />
                <br />
                總價 
                <asp:Label ID="Expr1Label" runat="server" Text='<%# Bind("Expr1") %>' />
                <br />
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("flickrId", "http://farm9.staticflickr.com/{0}") %>' />
                <br />
            </ItemTemplate>
        </asp:FormView>
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
        <br />
        <asp:SqlDataSource ID="salseSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:examConnectionString2 %>" SelectCommand="SELECT product.productId, product.productName, product.price, product.flickrId, SUM(sales.total) AS Expr1, SUM(sales.amount) AS Expr2, product.category FROM product INNER JOIN sales ON product.productId = sales.productId GROUP BY product.productId, product.productName, product.price, product.flickrId, product.category"></asp:SqlDataSource>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
