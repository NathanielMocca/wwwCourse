<%@ Page Language="C#" AutoEventWireup="true" CodeFile="revenueGrid.aspx.cs" Inherits="_05_MidTerm_053_Exam_0419_revenueGrid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Revenue Grid</title>
</head>
<link href="../../Styles/3_tripStyleSheet.css" rel="stylesheet" />
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="title">熱門商品銷售紀錄<br />
        </span>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="productId" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="productId" HeaderText="編號" InsertVisible="False" ReadOnly="True" SortExpression="productId" />
                <asp:BoundField DataField="productName" HeaderText="商品" SortExpression="productName" />
                <asp:BoundField DataField="category" HeaderText="類別" SortExpression="category" />
                <asp:BoundField DataField="price" HeaderText="單價" SortExpression="price" />
                <asp:ButtonField ButtonType="Button" CommandName="Select" Text="詳細" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <br />
        <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="productId" DataSourceID="SqlDataSource1" GridLines="Both">
            <EditItemTemplate>
                productId:
                <asp:Label ID="productIdLabel1" runat="server" Text='<%# Eval("productId") %>' />
                <br />
                productName:
                <asp:TextBox ID="productNameTextBox" runat="server" Text='<%# Bind("productName") %>' />
                <br />
                category:
                <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                <br />
                price:
                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                <br />
                amont_sum:
                <asp:TextBox ID="amont_sumTextBox" runat="server" Text='<%# Bind("amont_sum") %>' />
                <br />
                total_sum:
                <asp:TextBox ID="total_sumTextBox" runat="server" Text='<%# Bind("total_sum") %>' />
                <br />
                flickrId:
                <asp:TextBox ID="flickrIdTextBox" runat="server" Text='<%# Bind("flickrId") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <InsertItemTemplate>
                productName:
                <asp:TextBox ID="productNameTextBox" runat="server" Text='<%# Bind("productName") %>' />
                <br />
                category:
                <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                <br />
                price:
                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                <br />
                amont_sum:
                <asp:TextBox ID="amont_sumTextBox" runat="server" Text='<%# Bind("amont_sum") %>' />
                <br />
                total_sum:
                <asp:TextBox ID="total_sumTextBox" runat="server" Text='<%# Bind("total_sum") %>' />
                <br />
                flickrId:
                <asp:TextBox ID="flickrIdTextBox" runat="server" Text='<%# Bind("flickrId") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                &nbsp;<asp:Label ID="productNameLabel" runat="server" Text='<%# Bind("productName") %>' />
                <br />
                <br />
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("flickrId","http://farm9.staticflickr.com/{0}") %>' />
                <br />
                銷售總數:
                <asp:Label ID="amont_sumLabel" runat="server" Text='<%# Bind("amont_sum") %>' />
                <br />
                銷售總額:
                <asp:Label ID="total_sumLabel" runat="server" Text='<%# Bind("total_sum") %>' />
                <br />
                <br />
            </ItemTemplate>
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
        </asp:FormView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:examConnectionString %>" SelectCommand="SELECT product.productId, product.productName, product.category, product.price, SUM(sales.amount) AS amont_sum, SUM(sales.total) AS total_sum, product.flickrId FROM product INNER JOIN sales ON product.productId = sales.productId GROUP BY product.productId, product.productName, product.category, product.price, product.flickrId ORDER BY product.productId DESC"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
