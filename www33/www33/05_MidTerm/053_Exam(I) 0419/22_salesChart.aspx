<%@ Page Language="C#" AutoEventWireup="true" CodeFile="22_salesChart.aspx.cs" Inherits="_05_Midterm_053_Exam_I__0419_22_salesChart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../Styles/tripStyleSheet.css" rel="stylesheet" />
    <title>salesChart</title>
</head>
<body class="body">
    <form id="form1" runat="server">
    <div>
    
        <span class="title">銷售統計圖</span><br />
        <br />
        <br />
        <asp:RadioButtonList ID="salseRadioButtonList" runat="server" AutoPostBack="True" DataSourceID="productSqlDataSource" DataTextField="category" DataValueField="categoryId" OnSelectedIndexChanged="salseRadioButtonList_SelectedIndexChanged" RepeatDirection="Horizontal">
        </asp:RadioButtonList>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Chart ID="Chart1" runat="server" DataSourceID="salseSqlDataSource">
            <Series>
                <asp:Series Name="Series1" XValueMember="productName" YValueMembers="total">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
&nbsp;&nbsp;&nbsp;
        <asp:Chart ID="Chart2" runat="server" DataSourceID="salseSqlDataSource">
            <Series>
                <asp:Series ChartType="Pie" IsValueShownAsLabel="True" Legend="Legend1" Name="Series1" XValueMember="productName" YValueMembers="amount">
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
        </asp:Chart>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="productSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:examConnectionString2 %>" SelectCommand="SELECT categoryId, category FROM product GROUP BY categoryId, category"></asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="salseSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:examConnectionString2 %>" SelectCommand="SELECT product.productId, SUM(sales.total) AS total, SUM(sales.amount) AS amount, product.productName, product.category, product.categoryId FROM product INNER JOIN sales ON product.productId = sales.productId WHERE (product.categoryId = @categoryId) GROUP BY product.productId, product.productName, product.category, product.categoryId ORDER BY total DESC">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="1" Name="categoryId" SessionField="categoryId" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
