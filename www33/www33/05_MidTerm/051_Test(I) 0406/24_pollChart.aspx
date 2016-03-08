<%@ Page Language="C#" AutoEventWireup="true" CodeFile="24_pollChart.aspx.cs" Inherits="_05_MidTerm_051_Test_I__0406_24_pollChart" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>poll Chart</title>
    <link href="../../Styles/3_tripStyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div class="body">
            <span class="title">最美的季節 票數統計圖</span><br />
            <asp:Chart ID="Chart1" runat="server" DataSourceID="pollListSqlDataSource">
                <series>
                    <asp:Series Name="Series1" XValueMember="season" YValueMembers="Expr1">
                    </asp:Series>
                </series>
                <chartareas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </chartareas>
            </asp:Chart>
            <br />
            <asp:SqlDataSource ID="pollListSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:WWW33ConnectionString %>" SelectCommand="SELECT season.season, poll.seasonId, COUNT(*) AS Expr1 FROM poll INNER JOIN season ON poll.seasonId = season.seasonId GROUP BY season.season, poll.seasonId"></asp:SqlDataSource>
            </div>
    
    </div>
    </form>
</body>
</html>
