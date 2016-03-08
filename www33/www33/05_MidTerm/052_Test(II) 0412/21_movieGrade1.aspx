<%@ Page Language="C#" AutoEventWireup="true" CodeFile="21_movieGrade1.aspx.cs" Inherits="_05_MidTerm_052_Test_II__0412_21_movieGrade1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>21_movieGrade1</title>

    </style>
</head>
<link href="../../Styles/3_tripStyleSheet.css" rel="stylesheet" />
<body>
    <form id="form1" runat="server">
        <div>
            <span class="title">你認為哪部影片最棒？</span><br />
            <asp:RadioButtonList ID="movieRadioButtonList" runat="server" AutoPostBack="True" DataSourceID="movieSqlDataSource" DataTextField="movie" DataValueField="movieId" RepeatDirection="Horizontal">
            </asp:RadioButtonList>
            <table>
                <tr>
                    <td>評分：</td>
                    <td><asp:DropDownList ID="DropDownList1" runat="server" >
                <asp:ListItem Value="5">★★★★★</asp:ListItem>
                <asp:ListItem Value="4">★★★★</asp:ListItem>
                <asp:ListItem Value="3">★★★</asp:ListItem>
                <asp:ListItem Value="2">★★</asp:ListItem>
                <asp:ListItem Value="1">★</asp:ListItem>
            </asp:DropDownList>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <asp:Button ID="voteButton" runat="server" OnClick="voteButton_Click" Text="Vote!" />
            <br />
            <asp:SqlDataSource ID="movieSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:WWW33ConnectionString %>" SelectCommand="SELECT * FROM [movie]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="movieGradeSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:WWW33ConnectionString %>" DeleteCommand="DELETE FROM [movieGrade] WHERE [gradeId] = @gradeId" InsertCommand="INSERT INTO [movieGrade] ([movieId], [grade], [gradeTime]) VALUES (@movieId, @grade, @gradeTime)" SelectCommand="SELECT * FROM [movieGrade]" UpdateCommand="UPDATE [movieGrade] SET [movieId] = @movieId, [grade] = @grade, [gradeTime] = @gradeTime WHERE [gradeId] = @gradeId">
                <DeleteParameters>
                    <asp:Parameter Name="gradeId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:SessionParameter Name="movieId" SessionField="movieId" Type="String" />
                    <asp:SessionParameter Name="grade" SessionField="grade" Type="Int32" />
                    <asp:Parameter Name="gradeTime" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="movieId" Type="String" />
                    <asp:Parameter Name="grade" Type="Int32" />
                    <asp:Parameter Name="gradeTime" Type="DateTime" />
                    <asp:Parameter Name="gradeId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
