<%@ Page Language="C#" AutoEventWireup="true" CodeFile="41_gradeGrid3.aspx.cs" Inherits="_05_MidTerm_052_Test_II__0412_41_gradeGrid3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        最佳影片 得分及評分統計表<br />
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="movieId" DataSourceID="SqlDataSource1" ForeColor="#333333"  RepeatDirection="Horizontal">
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#EFF3FB" />
            <ItemTemplate>
                &nbsp;<asp:Label ID="movieLabel" runat="server" Text='<%# Eval("movie") %>' />
                <br />
                <br />
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("flickrId","http://farm9.staticflickr.com/{0}") %>' />
                <br />
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="movieId" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                movieId:
                <asp:Label ID="movieIdLabel1" runat="server" Text='<%# Eval("movieId") %>' />
                <br />
                movie:
                <asp:TextBox ID="movieTextBox" runat="server" Text='<%# Bind("movie") %>' />
                <br />
                flickrId:
                <asp:TextBox ID="flickrIdTextBox" runat="server" Text='<%# Bind("flickrId") %>' />
                <br />
                分數:
                <asp:TextBox ID="分數TextBox" runat="server" Text='<%# Bind("分數") %>' />
                <br />
                Expr1:
                <asp:TextBox ID="Expr1TextBox" runat="server" Text='<%# Bind("Expr1") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <InsertItemTemplate>
                movie:
                <asp:TextBox ID="movieTextBox" runat="server" Text='<%# Bind("movie") %>' />
                <br />
                flickrId:
                <asp:TextBox ID="flickrIdTextBox" runat="server" Text='<%# Bind("flickrId") %>' />
                <br />
                分數:
                <asp:TextBox ID="分數TextBox" runat="server" Text='<%# Bind("分數") %>' />
                <br />
                Expr1:
                <asp:TextBox ID="Expr1TextBox" runat="server" Text='<%# Bind("Expr1") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                <br />
                影片:
                <asp:Label ID="movieLabel" runat="server" Text='<%# Bind("movie") %>' />
                <br />
                <br />
                得分： 
                <asp:Label ID="分數Label" runat="server" Text='<%# Bind("分數") %>' />
                <br />
                <br />

            </ItemTemplate>
        </asp:FormView>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="gradeId,movieId" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="gradeId" HeaderText="序號" InsertVisible="False" ReadOnly="True" SortExpression="gradeId" />
                <asp:BoundField DataField="movie" HeaderText="影片" SortExpression="movie" />
                <asp:BoundField DataField="grade" HeaderText="評分" SortExpression="grade" />
                <asp:BoundField DataField="gradeTime" HeaderText="評分時間" SortExpression="gradeTime" />
                <asp:BoundField DataField="movieId" HeaderText="movieId" InsertVisible="False" ReadOnly="True" SortExpression="movieId" Visible="False" />
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
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WWW33ConnectionString %>" SelectCommand="SELECT movie.movieId, movie.movie, movie.flickrId, SUM(movieGrade.grade) AS 分數, COUNT(*) AS Expr1 FROM movie INNER JOIN movieGrade ON movie.movieId = movieGrade.movieId GROUP BY movie.movieId, movie.movie, movie.flickrId ORDER BY SUM(movieGrade.grade) DESC"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WWW33ConnectionString %>" SelectCommand="SELECT movie.movie, movieGrade.grade, movieGrade.gradeTime, movieGrade.gradeId, movie.movieId FROM movie INNER JOIN movieGrade ON movieGrade.movieId = movie.movieId GROUP BY movie.movie, movieGrade.grade, movieGrade.gradeTime, movieGrade.gradeId, movie.movieId HAVING (movie.movieId = @FUCK) ORDER BY movie.movie DESC">
            <SelectParameters>
                <asp:ControlParameter ControlID="DataList1" DefaultValue="1" Name="FUCK" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    </form>
</body>
</html>
