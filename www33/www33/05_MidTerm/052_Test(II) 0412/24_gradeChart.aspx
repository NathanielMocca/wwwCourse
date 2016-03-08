<%@ Page Language="C#" AutoEventWireup="true" CodeFile="24_gradeChart.aspx.cs" Inherits="_05_MidTerm_052_Test_II__0412_24_gradeChart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>24_GradeChart</title>
</head>

<body>
    <form id="form1" runat="server">
        最佳影片 得分統計圖<br />
        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Palette="Pastel">
            <Series>
                <asp:Series ChartType="Pie" Name="Series1" XValueMember="movie" YValueMembers="gradeSum" IsValueShownAsLabel="True" Legend="Legend1">
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WWW33ConnectionString %>" SelectCommand="SELECT movie.movieId, movie.movie, SUM(movieGrade.grade) AS gradeSum, COUNT(*) AS Expr2 FROM movie INNER JOIN movieGrade ON movie.movieId = movieGrade.movieId GROUP BY movie.movieId, movie.movie"></asp:SqlDataSource>
    </form>
</body>
</html>
