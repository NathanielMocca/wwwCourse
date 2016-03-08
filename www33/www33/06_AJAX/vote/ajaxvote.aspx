<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ajaxvote.aspx.cs" Inherits="_06_AJAX_vote_ajaxvote" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>vote</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
<link href="../../Styles/3_tripStyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="title">AJAX</span>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="season" DataValueField="seasonId" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
                            </asp:RadioButtonList>
                            <asp:FormView ID="FormView1" runat="server" DataKeyNames="seasonId" DataSourceID="SqlDataSource1">
                                <EditItemTemplate>
                                    seasonId:
                                    <asp:Label ID="seasonIdLabel1" runat="server" Text='<%# Eval("seasonId") %>' />
                                    <br />
                                    season:
                                    <asp:TextBox ID="seasonTextBox" runat="server" Text='<%# Bind("season") %>' />
                                    <br />
                                    flickrId:
                                    <asp:TextBox ID="flickrIdTextBox" runat="server" Text='<%# Bind("flickrId") %>' />
                                    <br />
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    season:
                                    <asp:TextBox ID="seasonTextBox" runat="server" Text='<%# Bind("season") %>' />
                                    <br />
                                    flickrId:
                                    <asp:TextBox ID="flickrIdTextBox" runat="server" Text='<%# Bind("flickrId") %>' />
                                    <br />
                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("flickrId","http://farm9.staticflickr.com/{0}") %>' />
                                    <br />
                                </ItemTemplate>
                            </asp:FormView>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" OnLoad="UpdatePanel1_Load" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="season" DataValueField="seasonId" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged" RepeatDirection="Horizontal">
                            </asp:RadioButtonList>
                            <asp:FormView ID="FormView2" runat="server" DataKeyNames="seasonId" DataSourceID="SqlDataSource4" Height="64px" OnDataBound="FormView2_DataBound" Width="110px">
                                <EditItemTemplate>
                                    seasonId:
                                    <asp:Label ID="seasonIdLabel1" runat="server" Text='<%# Eval("seasonId") %>' />
                                    <br />
                                    flickrId:
                                    <asp:TextBox ID="flickrIdTextBox" runat="server" Text='<%# Bind("flickrId") %>' />
                                    <br />
                                    season:
                                    <asp:TextBox ID="seasonTextBox" runat="server" Text='<%# Bind("season") %>' />
                                    <br />
                                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    flickrId:
                                    <asp:TextBox ID="flickrIdTextBox" runat="server" Text='<%# Bind("flickrId") %>' />
                                    <br />
                                    season:
                                    <asp:TextBox ID="seasonTextBox" runat="server" Text='<%# Bind("season") %>' />
                                    <br />
                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <br />
                                    <asp:HiddenField ID="insideHiddenField" runat="server" Value='<%# Eval("flickrId") %>' />
                                </ItemTemplate>
                            </asp:FormView>
                            <br />
                            <asp:HiddenField ID="outsideHiddenField" runat="server" />
                            <div id="player">
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="這個好" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="顆顆" OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="#333333" RepeatDirection="Horizontal">
                        <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <ItemTemplate>
                            <asp:Label ID="seasonLabel" runat="server" Text='<%# Eval("season") %>' />
                            <br />
                            得票數:
                            <asp:Label ID="COULabel" runat="server" Text='<%# Eval("COU") %>' />
                            <br />
                            <br />
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    </asp:DataList>
                </td>
                <td>
                    <asp:DataList ID="DataList2" runat="server" CellPadding="4" DataSourceID="SqlDataSource6" ForeColor="#333333" RepeatDirection="Horizontal">
                        <AlternatingItemStyle BackColor="White" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="#E3EAEB" />
                        <ItemTemplate>
                            <asp:Label ID="seasonLabel" runat="server" Text='<%# Eval("season") %>' />
                            <br />
                            得票數：<asp:Label ID="COULabel" runat="server" Text='<%# Eval("COU") %>' />
                            <br />
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    </asp:DataList>
                </td>
            </tr>
        </table>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WWW33ConnectionString %>" SelectCommand="SELECT * FROM [season]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WWW33ConnectionString %>" DeleteCommand="DELETE FROM [poll] WHERE [pollId] = @pollId" InsertCommand="INSERT INTO [poll] ([seasonId], [pollTime]) VALUES (@seasonId, @pollTime)" SelectCommand="SELECT * FROM [poll]" UpdateCommand="UPDATE [poll] SET [seasonId] = @seasonId, [pollTime] = @pollTime WHERE [pollId] = @pollId">
            <DeleteParameters>
                <asp:Parameter Name="pollId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="RadioButtonList1" DefaultValue="1" Name="seasonId" PropertyName="SelectedValue" Type="Int32" />
                <asp:Parameter Name="pollTime" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="seasonId" Type="Int32" />
                <asp:Parameter Name="pollTime" Type="DateTime" />
                <asp:Parameter Name="pollId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WWW33ConnectionString %>" SelectCommand="SELECT season.season, COUNT(poll.pollId) AS COU FROM poll INNER JOIN season ON poll.seasonId = season.seasonId GROUP BY season.season"></asp:SqlDataSource>
        <br />
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:WWW33ConnectionString %>" SelectCommand="SELECT * FROM [ajaxseason]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:WWW33ConnectionString %>" DeleteCommand="DELETE FROM [ajaxpoll] WHERE [ajaxpollId] = @ajaxpollId" InsertCommand="INSERT INTO [ajaxpoll] ([seasonId]) VALUES (@seasonId)" SelectCommand="SELECT * FROM [ajaxpoll]" UpdateCommand="UPDATE [ajaxpoll] SET [seasonId] = @seasonId WHERE [ajaxpollId] = @ajaxpollId">
            <DeleteParameters>
                <asp:Parameter Name="ajaxpollId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="RadioButtonList2" DefaultValue="5" Name="seasonId" PropertyName="SelectedValue" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="seasonId" Type="Int32" />
                <asp:Parameter Name="ajaxpollId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:WWW33ConnectionString %>" SelectCommand="SELECT COUNT(ajaxpoll.ajaxpollId) AS COU, ajaxseason.season FROM ajaxpoll INNER JOIN ajaxseason ON ajaxpoll.seasonId = ajaxseason.seasonId GROUP BY ajaxseason.season"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
<script src="../../Javascript/ajaxJavaScript.js"></script>
<script type="text/javascript" src="https://www.youtube.com/iframe_api"></script> <!--Include youtube API>