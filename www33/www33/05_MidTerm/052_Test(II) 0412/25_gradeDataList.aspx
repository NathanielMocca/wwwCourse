<%@ Page Language="C#" AutoEventWireup="true" CodeFile="25_gradeDataList.aspx.cs" Inherits="_05_MidTerm_052_Test_II__0412_25_gradeDataList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>25_gradeDataList</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div>
            最佳影片 得分統計表<br />
            <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" RepeatDirection="Horizontal">
                <AlternatingItemStyle BackColor="White" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#EFF3FB" />
                <ItemTemplate>
                    &nbsp;<asp:Label ID="movieLabel" runat="server" Text='<%# Eval("movie") %>' />
                    <br />
                    <br />
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("flickrId","http://farm9.staticflickr.com/{0}") %>' />
                    <br />
                    <br />
                    票數:
                    <asp:Label ID="Expr2Label" runat="server" Text='<%# Eval("Expr2") %>' />
                    <br />
                    <br />
                    <br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            </asp:DataList>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WWW33ConnectionString %>" SelectCommand="SELECT movie.movie, movie.flickrId, SUM(movieGrade.grade) AS Expr2, COUNT(*) AS Expr1 FROM movie INNER JOIN movieGrade ON movie.movieId = movieGrade.movieId GROUP BY movie.movie, movie.flickrId"></asp:SqlDataSource>
        </div>
    
    </div>
    </form>
</body>
</html>
