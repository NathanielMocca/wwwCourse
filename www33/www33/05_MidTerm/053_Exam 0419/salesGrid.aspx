<%@ Page Language="C#" AutoEventWireup="true" CodeFile="salesGrid.aspx.cs" Inherits="_05_MidTerm_053_Exam_0419_salesGrid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Sales Grid</title>
    <style type="text/css">
        .auto-style1 {
            margin-right: 0px;
        }
    </style>
</head>
<link href="../../Styles/3_tripStyleSheet.css" rel="stylesheet" />
<body>
    <form id="form1" runat="server">
        <div>
            <span class="title">銷售列表<br />
            <br />
            </span>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style1" DataKeyNames="salesId" DataSourceID="salesGridSqlDataSource" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="salesId" HeaderText="序號" InsertVisible="False" ReadOnly="True" SortExpression="salesId" />
                    <asp:BoundField DataField="productName" HeaderText="名稱" SortExpression="productName" />
                    <asp:BoundField DataField="category" HeaderText="類別" SortExpression="category" />
                    <asp:BoundField DataField="amount" HeaderText="銷售數量" SortExpression="amount" />
                    <asp:BoundField DataField="total" HeaderText="銷售總額" SortExpression="total" />
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
            <asp:SqlDataSource ID="salesGridSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:examConnectionString %>" SelectCommand="SELECT sales.salesId, sales.productId, product.productName, sales.amount, sales.total, product.category FROM product INNER JOIN sales ON product.productId = sales.productId ORDER BY sales.salesId DESC"></asp:SqlDataSource>
        </div>
    <div>
    
    </div>
    </form>
</body>
</html>
