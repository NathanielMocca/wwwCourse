<%@ Page Language="C#" AutoEventWireup="true" CodeFile="21_seasonPoll1.aspx.cs" Inherits="_05_MidTerm_051_Test_I__0406_21_seasonPoll1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>21_seasonPoll1</title>
    <link href="../../Styles/3_tripStyleSheet.css" rel="stylesheet" />
</head>
<body class="body">
    <form id="form1" runat="server">
        <div>
            <span class="title">你認為哪個季節最美？</span><br />
            <asp:RadioButtonList ID="seasonRadioButtonList" runat="server" DataSourceID="seasonSqlDataSource" DataTextField="season" DataValueField="seasonId" AutoPostBack="True" RepeatDirection="Horizontal">
                <asp:ListItem Value="1">彩蝶之春</asp:ListItem>
                <asp:ListItem Value="2">翠芒之夏</asp:ListItem>
                <asp:ListItem Value="3">紅葉之秋</asp:ListItem>
                <asp:ListItem Value="4">雪梅之冬</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Button ID="chooseButton" runat="server" Text="這個季節最美" OnClick="chooseButton_Click" />
            <br />
            <asp:SqlDataSource ID="seasonSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:WWW33ConnectionString %>" SelectCommand="SELECT * FROM [season]" DeleteCommand="DELETE FROM [season] WHERE [seasonId] = @seasonId" InsertCommand="INSERT INTO [season] ([season], [flickrId]) VALUES (@season, @flickrId)" UpdateCommand="UPDATE [season] SET [season] = @season, [flickrId] = @flickrId WHERE [seasonId] = @seasonId">
                <DeleteParameters>
                    <asp:Parameter Name="seasonId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="season" Type="String" />
                    <asp:Parameter Name="flickrId" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="season" Type="String" />
                    <asp:Parameter Name="flickrId" Type="String" />
                    <asp:Parameter Name="seasonId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="pollSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:WWW33ConnectionString %>" DeleteCommand="DELETE FROM [poll] WHERE [pollId] = @pollId" InsertCommand="INSERT INTO [poll] ([seasonId], [pollTime]) VALUES (@seasonId, @pollTime)" SelectCommand="SELECT * FROM [poll]" UpdateCommand="UPDATE [poll] SET [seasonId] = @seasonId, [pollTime] = @pollTime WHERE [pollId] = @pollId">
                <DeleteParameters>
                    <asp:Parameter Name="pollId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="seasonId" Type="Int32" />
                    <asp:Parameter DbType="DateTimeOffset" Name="pollTime" />
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
