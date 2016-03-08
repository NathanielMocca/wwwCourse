<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AJAXtrip.aspx.cs" Inherits="_06_AJAX_store_AJAXtrip" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>AJAXtrip</title>
    <link href="../../Styles/tripStyleSheet.css" rel="stylesheet" />
    
    
    
</head>
<body class="body">
    <form id="form1" runat="server">
        <div>
            <span class="title">我要去旅行<asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            </span><br />
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <table>
                        <tr>
                            <td>旅行者</td>
                            <td>
                                <asp:TextBox ID="userTextBox" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="userTextBox" CssClass="tableHead" Display="Dynamic" ErrorMessage="請輸入名字"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>地點</td>
                            <td>
                                <asp:RadioButtonList ID="placeRadioButtonList" runat="server" AutoPostBack="True" CssClass="formViewContent" OnSelectedIndexChanged="placeRadioButtonList_SelectedIndexChanged" RepeatDirection="Horizontal" Width="236px">
                                    <asp:ListItem Selected="True" Value="1">東京</asp:ListItem>
                                    <asp:ListItem Value="2">紐約</asp:ListItem>
                                    <asp:ListItem Value="3">倫敦</asp:ListItem>
                                    <asp:ListItem Value="4">埃及</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:FormView ID="placeFormView" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="tourId" DataSourceID="tourSqlDataSource" GridLines="Both" OnDataBound="placeFormView_DataBound">
                                    <EditItemTemplate>
                                        tourId:
                                        <asp:Label ID="tourIdLabel1" runat="server" Text='<%# Eval("tourId") %>' />
                                        <br />
                                        place:
                                        <asp:TextBox ID="placeTextBox" runat="server" Text='<%# Bind("place") %>' />
                                        <br />
                                        price:
                                        <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                        <br />
                                        flickrId:
                                        <asp:TextBox ID="flickrIdTextBox" runat="server" Text='<%# Bind("flickrId") %>' />
                                        <br />
                                        youtubeId:
                                        <asp:TextBox ID="youtubeIdTextBox" runat="server" Text='<%# Bind("youtubeId") %>' />
                                        <br />
                                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                                    </EditItemTemplate>
                                    <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                    <InsertItemTemplate>
                                        place:
                                        <asp:TextBox ID="placeTextBox" runat="server" Text='<%# Bind("place") %>' />
                                        <br />
                                        price:
                                        <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                                        <br />
                                        flickrId:
                                        <asp:TextBox ID="flickrIdTextBox" runat="server" Text='<%# Bind("flickrId") %>' />
                                        <br />
                                        youtubeId:
                                        <asp:TextBox ID="youtubeIdTextBox" runat="server" Text='<%# Bind("youtubeId") %>' />
                                        <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <asp:Image ID="photoImage" runat="server" ImageUrl='<%# Eval("flickrId", "http://imgur.com/{0}") %>' />
                                        <br />
                                        <table>
                                            <tr>
                                                <td>單價</td>
                                                <td>
                                                    <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
                                                </td>
                                            </tr>
                                        </table>
                                        &nbsp;<br />
                                        <asp:HiddenField ID="priceHiddenField" runat="server" Value='<%# Eval("price") %>' />
                                        <asp:HiddenField ID="youtubeHiddenField" runat="server" Value='<%# Eval("youtubeId") %>' />
                                        <br />
                                    </ItemTemplate>
                                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                    <RowStyle BackColor="White" ForeColor="#003399" />
                                </asp:FormView>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
            <br />
            <div style="text-align: left">
            </div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style2">
                                <asp:Calendar ID="tripCalendar" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="330px">
                                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                                    <DayStyle BackColor="#CCCCCC" />
                                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                                    <OtherMonthDayStyle ForeColor="#999999" />
                                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                    <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                                    <TodayDayStyle BackColor="#999999" ForeColor="White" />
                                </asp:Calendar>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
            <br />
            <br />
            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>
                    <table>
                        <tr>
                            <td>天數：</td>
                            <td>
                                <asp:TextBox ID="daysTextBox" runat="server" AutoPostBack="True" OnTextChanged="daysTextBox_TextChanged"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>總價：</td>
                            <td>
                                <asp:Label ID="totalLabel" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="placeRadioButtonList" EventName="SelectedIndexChanged" />
                </Triggers>
            </asp:UpdatePanel>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
        <p class="formViewContent">
            <asp:Button ID="goButton" runat="server" Text="GO!" OnClick="goButton_Click" />
        </p>
        <p class="formViewContent">
            &nbsp;</p>
        <asp:HiddenField ID="totalHiddenField" runat="server" />
        <p class="formViewContent">
            <asp:SqlDataSource ID="tourSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:WWW41ConnectionString %>" SelectCommand="SELECT * FROM [tour]"></asp:SqlDataSource>
        </p>
        <p class="formViewContent">
            &nbsp;</p>
    </form>
</body>
</html>
