<%@ Page Language="C#" AutoEventWireup="true" CodeFile="aspLocation.aspx.cs" Inherits="_07_WebServices_aspLocation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>aspLoaction</title>
    <link href="../Styles/3_tripStyleSheet.css" rel="stylesheet" />

    </style>
</head>
<body class="body">
    <form id="form1" runat="server">
    <div class="body">
        <div>
            <span class="title">ASP一般網頁</span><br />
            <table align="center" class="auto-style1">
                <tr>
                    <td>
            <asp:RadioButtonList ID="placeRadioButtonList" runat="server" AutoPostBack="True" DataSourceID="placeSqlDataSource" DataTextField="place" DataValueField="tourId" OnSelectedIndexChanged="placeRadioButtonList_SelectedIndexChanged" RepeatDirection="Horizontal">
            </asp:RadioButtonList>
            <asp:FormView ID="placeFormView" runat="server" DataKeyNames="tourId" DataSourceID="placeSqlDataSource">
                <EditItemTemplate>
                    tourId:
                    <asp:Label ID="tourIdLabel1" runat="server" Text='<%# Eval("tourId") %>' />
                    <br />
                    place:
                    <asp:TextBox ID="placeTextBox" runat="server" Text='<%# Bind("place") %>' />
                    <br />
                    flickrId:
                    <asp:TextBox ID="flickrIdTextBox" runat="server" Text='<%# Bind("flickrId") %>' />
                    <br />
                    latitude:
                    <asp:TextBox ID="latitudeTextBox" runat="server" Text='<%# Bind("latitude") %>' />
                    <br />
                    longitude:
                    <asp:TextBox ID="longitudeTextBox" runat="server" Text='<%# Bind("longitude") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    place:
                    <asp:TextBox ID="placeTextBox" runat="server" Text='<%# Bind("place") %>' />
                    <br />
                    flickrId:
                    <asp:TextBox ID="flickrIdTextBox" runat="server" Text='<%# Bind("flickrId") %>' />
                    <br />
                    latitude:
                    <asp:TextBox ID="latitudeTextBox" runat="server" Text='<%# Bind("latitude") %>' />
                    <br />
                    longitude:
                    <asp:TextBox ID="longitudeTextBox" runat="server" Text='<%# Bind("longitude") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td colspan="2">
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("flickrId","http://farm9.staticflickr.com/{0}") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>緯度：</td>
                            <td>
                                <asp:Label ID="latitudeLabel" runat="server" Text='<%# Bind("latitude") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>經度：</td>
                            <td>
                                <asp:Label ID="longitudeLabel" runat="server" Text='<%# Bind("longitude") %>' />
                            </td>
                        </tr>
                    </table>
                    <br />
                </ItemTemplate>
            </asp:FormView>
                    </td>
                </tr>
            </table>
            <br />
            <div id="player">
                <br />
            </div>
            <br />
            <asp:SqlDataSource ID="placeSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:WWW33ConnectionString %>" SelectCommand="SELECT [tourId], [place], [flickrId], [latitude], [longitude] FROM [tour]"></asp:SqlDataSource>
        </div>
    </div>
    </form>
</body>
</html>
<script src="../Javascript/youtubeJavaScript.js"></script>
<script type="text/javascript" src="https://www.youtube.com/iframe_api"></script>
