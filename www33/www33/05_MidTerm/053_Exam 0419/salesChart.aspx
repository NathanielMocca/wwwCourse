<%@ Page Language="C#" AutoEventWireup="true" CodeFile="salesChart.aspx.cs" Inherits="_05_MidTerm_053_Exam_0419_salesChart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>SalesChart</title>
</head>
<link href="../../Styles/3_tripStyleSheet.css" rel="stylesheet" />
<body>
    <form id="form1" runat="server">
    <div>
    
        銷售統計圖<br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="category" DataValueField="Expr1" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
            <asp:ListItem Selected="True" Value="1">智慧型手機</asp:ListItem>
            <asp:ListItem Value="2">平板電腦</asp:ListItem>
            <asp:ListItem Value="3">筆記型電腦</asp:ListItem>
        </asp:RadioButtonList>
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                productName:
                <asp:TextBox ID="productNameTextBox" runat="server" Text='<%# Bind("productName") %>' />
                <br />
                categoryId:
                <asp:TextBox ID="categoryIdTextBox" runat="server" Text='<%# Bind("categoryId") %>' />
                <br />
                total_sum:
                <asp:TextBox ID="total_sumTextBox" runat="server" Text='<%# Bind("total_sum") %>' />
                <br />
                amount_sum:
                <asp:TextBox ID="amount_sumTextBox" runat="server" Text='<%# Bind("amount_sum") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <InsertItemTemplate>
                productName:
                <asp:TextBox ID="productNameTextBox" runat="server" Text='<%# Bind("productName") %>' />
                <br />
                categoryId:
                <asp:TextBox ID="categoryIdTextBox" runat="server" Text='<%# Bind("categoryId") %>' />
                <br />
                total_sum:
                <asp:TextBox ID="total_sumTextBox" runat="server" Text='<%# Bind("total_sum") %>' />
                <br />
                amount_sum:
                <asp:TextBox ID="amount_sumTextBox" runat="server" Text='<%# Bind("amount_sum") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
                    <Series>
                        <asp:Series Name="Series1" XValueMember="productName" YValueMembers="total_sum">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <br />

                <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource1">
                    <Series>
                        <asp:Series ChartType="Pie" IsValueShownAsLabel="True" Legend="Legend1" Name="Series1" XValueMember="productName" YValueMembers="amount_sum">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </ChartAreas>
                    <Legends>
                        <asp:Legend Name="Legend1">
                        </asp:Legend>
                    </Legends>
                    <Titles>
                        <asp:Title Name="銷售數量">
                        </asp:Title>
                    </Titles>
                </asp:Chart>
                <br />
            </ItemTemplate>
        </asp:FormView>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:examConnectionString %>" SelectCommand="SELECT product.productName, product.categoryId, SUM(sales.total) AS total_sum, COUNT(sales.amount) AS amount_sum FROM product INNER JOIN sales ON product.productId = sales.productId GROUP BY product.productName, product.categoryId HAVING (product.categoryId = @selectedValue) ORDER BY total_sum DESC, amount_sum DESC">
            <SelectParameters>
                <asp:SessionParameter Name="selectedValue" SessionField="selectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:examConnectionString %>" SelectCommand="SELECT categoryId AS Expr1, category FROM product GROUP BY category, categoryId"></asp:SqlDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
