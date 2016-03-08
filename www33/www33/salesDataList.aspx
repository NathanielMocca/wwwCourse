<%@ Page Language="C#" AutoEventWireup="true" CodeFile="salesDataList.aspx.cs" Inherits="_05_mid_Exam_salesDataList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        銷售統計表<br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" DataSourceID="choiceSqlDataSource" DataTextField="category" DataValueField="categoryId" RepeatDirection="Horizontal">
        </asp:RadioButtonList>
        <br />
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataSourceID="datalistSqlDataSource" ForeColor="#333333" RepeatDirection="Horizontal">
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <ItemTemplate>
                <asp:Label ID="productNameLabel" runat="server" Text='<%# Eval("productName") %>' />
                <br />
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("flickrId", "http://farm9.staticflickr.com/{0}") %>' />
                <br />
                銷售數量:
                <asp:Label ID="Expr2Label" runat="server" Text='<%# Eval("Expr2") %>' />
                <br />
                銷售總額:
                <asp:Label ID="Expr1Label" runat="server" Text='<%# Eval("Expr1", "{0:N0}") %>' />
                <br />
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
        <br />
        <asp:SqlDataSource ID="choiceSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:examConnectionString %>" SelectCommand="SELECT categoryId, category FROM product GROUP BY categoryId, category"></asp:SqlDataSource>
    
    </div>
        <asp:SqlDataSource ID="datalistSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:examConnectionString %>" SelectCommand="SELECT product.productName, SUM(sales.amount) AS Expr2, SUM(sales.total) AS Expr1, product.flickrId, product.categoryId FROM product INNER JOIN sales ON product.productId = sales.productId GROUP BY product.productName, product.flickrId, product.categoryId HAVING (product.categoryId = @selectedValue)">
            <SelectParameters>
                <asp:ControlParameter ControlID="RadioButtonList1" DefaultValue="1" Name="selectedValue" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
