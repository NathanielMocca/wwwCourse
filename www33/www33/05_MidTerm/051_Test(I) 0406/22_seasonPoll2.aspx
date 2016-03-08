<%@ Page Language="C#" AutoEventWireup="true" CodeFile="22_seasonPoll2.aspx.cs" Inherits="_05_MidTerm_051_Test_I__0406_22_seasonPoll2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>21_seasonPoll1</title>
    <link href="../../Styles/3_tripStyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 0px;
        }
    </style>
</head>
<body class="body">
    <form id="form1" runat="server">
        <div>
            <span class="title">你認為哪個季節最美？<br />
            </span>
            <asp:RadioButtonList ID="seasonRadioButtonList" runat="server" DataSourceID="seasonSqlDataSource" DataTextField="season" DataValueField="seasonId" AutoPostBack="True" RepeatDirection="Horizontal" CssClass="auto-style1" OnSelectedIndexChanged="seasonRadioButtonList_SelectedIndexChanged">
                <asp:ListItem Value="1" Selected="True">彩蝶之春</asp:ListItem>
                <asp:ListItem Value="2">翠芒之夏</asp:ListItem>
                <asp:ListItem Value="3">紅葉之秋</asp:ListItem>
                <asp:ListItem Value="4">雪梅之冬</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:FormView ID="imageFormView" runat="server" DataKeyNames="movieId" DataSourceID="seasonSqlDataSource" Height="21px" OnDataBound="imageFormView_DataBound" >
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
            <asp:Button ID="chooseButton" runat="server" Text="這個季節最美" OnClick="chooseButton_Click" />
            <br />
            <asp:SqlDataSource ID="seasonSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:WWW33ConnectionString %>" SelectCommand="SELECT * FROM [movie]">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="pollSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:WWW33ConnectionString %>" DeleteCommand="DELETE FROM [poll] WHERE [pollId] = @pollId" InsertCommand="INSERT INTO [poll] ([seasonId], [pollTime]) VALUES (@seasonId, @pollTime)" SelectCommand="SELECT * FROM [poll]" UpdateCommand="UPDATE [poll] SET [seasonId] = @seasonId, [pollTime] = @pollTime WHERE [pollId] = @pollId">
                <DeleteParameters>
                    <asp:Parameter Name="pollId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="seasonRadioButtonList" Name="seasonId" PropertyName="SelectedValue" Type="Int32" />
                    <asp:SessionParameter DbType="DateTimeOffset" Name="pollTime" SessionField="time" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="seasonId" Type="Int32" />
                    <asp:Parameter DbType="DateTimeOffset" Name="pollTime" />
                    <asp:Parameter Name="pollId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
