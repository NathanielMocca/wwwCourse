<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AJAXTrip.aspx.cs" Inherits="_06_AJAX_store_AJAXTrip" %>

<!DOCTYPE html>




<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>AJAX Trip</title>
    <link href="../../Styles/3_tripStyleSheet.css" rel="stylesheet" />


</head>
<body class="body">
    <form id="form1" runat="server" class="body">
        <span class="title">我要去旅行<br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        </span><br />
        <table align="center">
            <tr>
                <td >旅行者：</td>
                <td class="tableContent">
                    <asp:TextBox ID="userTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="userTextBox" Display="Dynamic" ErrorMessage="請輸入姓名!!" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            </table>
        <br />
        <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <table align="center">
                    <tr>
                        <td class="tableContent">旅行地：</td>
                        <td class="tableContent">
                            <asp:RadioButtonList ID="placeRadioButtonList" runat="server" AutoPostBack="True" DataSourceID="tourSqlDataSource" DataTextField="place" DataValueField="tourId" OnSelectedIndexChanged="placeRadioButtonList_SelectedIndexChanged" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True" Value="1">東京</asp:ListItem>
                                <asp:ListItem Value="2">紐約</asp:ListItem>
                                <asp:ListItem Value="3">倫敦</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="tableContent"></td>
                        <td class="tableContent">
                            <table>
                                <asp:FormView ID="placeFormView" runat="server" DataKeyNames="tourId" DataSourceID="tourSqlDataSource" OnDataBound="placeFormView_DataBound">
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
                                    <InsertItemTemplate>
                                        place:
                                        <asp:TextBox ID="placeTextBox0" runat="server" Text='<%# Bind("place") %>' />
                <br />
                                        price:
                                        <asp:TextBox ID="priceTextBox0" runat="server" Text='<%# Bind("price") %>' />
                <br />
                                        flickrId:
                                        <asp:TextBox ID="flickrIdTextBox0" runat="server" Text='<%# Bind("flickrId") %>' />
                <br />
                                        youtubeId:
                                        <asp:TextBox ID="youtubeIdTextBox0" runat="server" Text='<%# Bind("youtubeId") %>' />
                <br />
                                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <asp:Image ID="placeImage" runat="server" Height="154px" ImageUrl='<%# Eval("flickrId","http://farm9.staticflickr.com/{0}") %>' Width="144px" />
                <br />
                                        <table>
                                            <tr>
                                                <td>單價：</td>
                                                <td>&nbsp;<asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
                            <br />
                                                </td>
                                            </tr>
                                        </table>
                                        <asp:HiddenField ID="priceHiddenField" runat="server" Value='<%# Eval("price") %>' />
                                        <asp:HiddenField ID="youtubeHiddenField" runat="server" Value='<%# Eval("youtubeId") %>' />
                                    </ItemTemplate>
                                </asp:FormView>
                            </table>
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Calendar ID="tripCalendar" runat="server" BackColor="White" BorderColor="White" BorderStyle="Groove" CellSpacing="1" CssClass="body" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="218px" NextPrevFormat="ShortMonth" Width="265px">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                    <DayStyle BackColor="#CCCCCC" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                    <TodayDayStyle BackColor="#999999" ForeColor="White" />
                </asp:Calendar>
            </ContentTemplate>
        </asp:UpdatePanel>
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <table align="center">
                    <tr>
                        <td class="tableHead">天數：</td>
                        <td>
                            <asp:TextBox ID="daysTextBox" runat="server" AutoPostBack="True" CssClass="tableContent" OnTextChanged="daysTextBox_TextChanged"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="tableHead">總價：</td>
                        <td>
                            <asp:Label ID="totalLabel" runat="server" CssClass="tableContent" Text="Label"></asp:Label>
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
        <asp:Button ID="goButton" runat="server" OnClick="goButton_Click" Text="走吧!" />
        <asp:HiddenField ID="totalHiddenField" runat="server" />
        <br />
        <br />
        <asp:SqlDataSource ID="tourSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:WWW33ConnectionString %>" SelectCommand="SELECT * FROM [tour]" ></asp:SqlDataSource>
    </form>
</body>
</html>
