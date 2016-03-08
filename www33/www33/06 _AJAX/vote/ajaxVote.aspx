<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ajaxVote.aspx.cs" Inherits="_06__AJAX_vote_ajaxVote" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        AJAX 網頁設計 <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <br />
        <table>
            <tr>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WWW41ConnectionString %>" SelectCommand="SELECT * FROM [season]"></asp:SqlDataSource>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="seasonName" DataValueField="seasonId" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
                            </asp:RadioButtonList>
                            <asp:FormView ID="FormView1" runat="server" DataKeyNames="seasonId" DataSourceID="SqlDataSource1" >
                                <EditItemTemplate>
                                    seasonId:
                                    <asp:Label ID="seasonIdLabel1" runat="server" Text='<%# Eval("seasonId") %>' />
                                    <br />
                                    seasonName:
                                    <asp:TextBox ID="seasonNameTextBox" runat="server" Text='<%# Bind("seasonName") %>' />
                                    <br />
                                    flickrId:
                                    <asp:TextBox ID="flickrIdTextBox" runat="server" Text='<%# Bind("flickrId") %>' />
                                    <br />
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    seasonName:
                                    <asp:TextBox ID="seasonNameTextBox" runat="server" Text='<%# Bind("seasonName") %>' />
                                    <br />
                                    flickrId:
                                    <asp:TextBox ID="flickrIdTextBox" runat="server" Text='<%# Bind("flickrId") %>' />
                                    <br />
                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("flickrId", "http://farm9.staticflickr.com/{0}") %>' />
                                </ItemTemplate>
                            </asp:FormView>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional" OnLoad="UpdatePanel2_Load">
                        <ContentTemplate>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:WWW41ConnectionString %>" SelectCommand="SELECT * FROM [heineken]"></asp:SqlDataSource>
                            <asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="name" DataValueField="Id" Height="26px" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged">
                            </asp:RadioButtonList>
                            <asp:FormView ID="FormView2" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource4" OnDataBound="FormView2_DataBound">
                                <EditItemTemplate>
                                    Id:
                                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                                    <br />
                                    name:
                                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                                    <br />
                                    youtubeID:
                                    <asp:TextBox ID="youtubeIDTextBox" runat="server" Text='<%# Bind("youtubeID") %>' />
                                    <br />
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    name:
                                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                                    <br />
                                    youtubeID:
                                    <asp:TextBox ID="youtubeIDTextBox" runat="server" Text='<%# Bind("youtubeID") %>' />
                                    <br />
                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:HiddenField ID="youtubeHiddenField" runat="server" Value='<%# Eval("youtubeID") %>' />
                                    <br />
                                </ItemTemplate>
                            </asp:FormView>
                            <div id="player">
                            </div>
                            <asp:HiddenField ID="youtubeIDHiddenField" runat="server" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:Button ID="Button1" runat="server" Text="GoButtun" OnClick="Button1_Click" />
                            <br />
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WWW41ConnectionString %>" SelectCommand="SELECT * FROM [seasonpoll]" DeleteCommand="DELETE FROM [seasonpoll] WHERE [pollId] = @pollId" InsertCommand="INSERT INTO [seasonpoll] ([seasonId], [seasonName], [polltime]) VALUES (@seasonId, @seasonName, @polltime)" UpdateCommand="UPDATE [seasonpoll] SET [seasonId] = @seasonId, [seasonName] = @seasonName, [polltime] = @polltime WHERE [pollId] = @pollId">
                                <DeleteParameters>
                                    <asp:Parameter Name="pollId" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:ControlParameter ControlID="RadioButtonList1" Name="seasonId" PropertyName="SelectedValue" Type="Int32" />
                                    <asp:SessionParameter Name="seasonName" SessionField="seasonName" Type="String" />
                                    <asp:Parameter Name="polltime" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="seasonId" Type="Int32" />
                                    <asp:Parameter Name="seasonName" Type="String" />
                                    <asp:Parameter Name="polltime" Type="String" />
                                    <asp:Parameter Name="pollId" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WWW41ConnectionString %>" SelectCommand="SELECT season.seasonName, season.seasonId, COUNT(*) AS count FROM season INNER JOIN seasonpoll ON season.seasonId = seasonpoll.seasonId GROUP BY season.seasonName, season.seasonId"></asp:SqlDataSource>
                            <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" RepeatDirection="Horizontal" DataKeyField="seasonId">
                                <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <ItemTemplate>
                                    &nbsp;<asp:Label ID="seasonNameLabel" runat="server" Text='<%# Eval("seasonName") %>' />
                                    <br />
                                    票數: <asp:Label ID="countLabel" runat="server" Text='<%# Eval("count") %>' />
        <br />
                                    <br />
                                </ItemTemplate>
                                <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            </asp:DataList>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel4" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="GoButtun" />
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:WWW41ConnectionString %>" SelectCommand="SELECT * FROM [heinekenpoll]" DeleteCommand="DELETE FROM [heinekenpoll] WHERE [Id] = @Id" InsertCommand="INSERT INTO [heinekenpoll] ([pollId]) VALUES (@pollId)" UpdateCommand="UPDATE [heinekenpoll] SET [pollId] = @pollId WHERE [Id] = @Id">
                                <DeleteParameters>
                                    <asp:Parameter Name="Id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:ControlParameter ControlID="RadioButtonList2" Name="pollId" PropertyName="SelectedValue" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="pollId" Type="String" />
                                    <asp:Parameter Name="Id" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:WWW41ConnectionString %>" SelectCommand="SELECT heineken.name, heinekenpoll.pollId, COUNT(*) AS count FROM heineken INNER JOIN heinekenpoll ON heineken.Id = heinekenpoll.Id GROUP BY heinekenpoll.pollId, heineken.name"></asp:SqlDataSource>
                            <asp:DataList ID="DataList2" runat="server" CellPadding="4" DataSourceID="SqlDataSource5" ForeColor="#333333" RepeatDirection="Horizontal">
                                <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <ItemTemplate>
                                    &nbsp;<asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                    <br />
                                    票數:
                                    <asp:Label ID="countLabel" runat="server" Text='<%# Eval("count") %>' />
                                    <br />
                                    <br />
                                </ItemTemplate>
                                <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            </asp:DataList>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
<script src="../../Javascript/youtubeOrderJavascript.js"></script>
<script type = "text/javascript" src="https://www.youtube.com/iframe_api"></script>
