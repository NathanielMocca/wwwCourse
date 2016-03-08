<%@ Page Language="C#" AutoEventWireup="true" CodeFile="22_movieGrade2.aspx.cs" Inherits="_05_MidTerm_052_Test_II__0412_22_movieGrade2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>22_movieGrade2</title>
    <link href="../../Styles/3_tripStyleSheet.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
            你認為哪部影片最棒？<br />
            <asp:RadioButtonList ID="movieRadioButtonList" runat="server" DataSourceID="SqlDataSource1" DataTextField="movie" DataValueField="movieId" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="movieRadioButtonList_SelectedIndexChanged">
            </asp:RadioButtonList>
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
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <br />
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("flickrId","http://farm9.staticflickr.com/{0}") %>' />
                </ItemTemplate>
            </asp:FormView>
            <br />
            <table>
                <tr>
                    <td>評分：</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server">
                            <asp:ListItem Value="5">★★★★★</asp:ListItem>
                            <asp:ListItem Value="4">★★★★</asp:ListItem>
                            <asp:ListItem Value="3">★★★</asp:ListItem>
                            <asp:ListItem Value="2">★★</asp:ListItem>
                            <asp:ListItem Value="1">★</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
            <asp:Button ID="voteButton" runat="server" OnClick="voteButton_Click" Text="Vote!" />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WWW33ConnectionString %>" SelectCommand="SELECT * FROM [movie]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WWW33ConnectionString %>" DeleteCommand="DELETE FROM [movieGrade] WHERE [gradeId] = @gradeId" InsertCommand="INSERT INTO [movieGrade] ([movieId], [grade], [gradeTime]) VALUES (@movieId, @grade, @gradeTime)" SelectCommand="SELECT * FROM [movieGrade]" UpdateCommand="UPDATE [movieGrade] SET [movieId] = @movieId, [grade] = @grade, [gradeTime] = @gradeTime WHERE [gradeId] = @gradeId">
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
        </div>
    </form>
</body>
</html>
