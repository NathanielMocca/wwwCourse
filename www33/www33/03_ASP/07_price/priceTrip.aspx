<%@ Page Language="C#" AutoEventWireup="true" CodeFile="priceTrip.aspx.cs" Inherits="_03_ASP_07_price_priceTrip" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>price Trip</title>
    <link href="../../Styles/tripStyleSheet.css" rel="stylesheet" />
    
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 338px;
        }
    </style>
    
</head>
<body class="body">
    <form id="form1" runat="server">
        <div>
            <span class="title">我要去旅行</span><br />
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
                        <asp:RadioButtonList ID="placeRadioButtonList" runat="server" CssClass="formViewContent" RepeatDirection="Horizontal" Width="236px" AutoPostBack="True" OnSelectedIndexChanged="placeRadioButtonList_SelectedIndexChanged">
                            <asp:ListItem Value="1" Selected="True">東京</asp:ListItem>
                            <asp:ListItem Value="2">紐約</asp:ListItem>
                            <asp:ListItem Value="3">倫敦</asp:ListItem>
                            <asp:ListItem Value="4">埃及</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <div style="text-align: left">
            </div>
            <br />
            <br />
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
                    <td>
            <asp:Image ID="photoImage" runat="server" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <table align="center">
                <tr>
                    <td>單價：</td>
                    <td>
                        <asp:Label ID="priceLabel" runat="server"></asp:Label>
                    </td>
                </tr>
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
            <asp:HiddenField ID="youtubeHiddenField" runat="server" />
        </p>
        <asp:HiddenField ID="priceHiddenField" runat="server" />
        <p class="formViewContent">
            &nbsp;</p>
    </form>
</body>
</html>
