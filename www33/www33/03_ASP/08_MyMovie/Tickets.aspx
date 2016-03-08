<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tickets.aspx.cs" Inherits="_03_ASP_08_08_MyMovie_Tickets" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Tickets</title>
    <link href="../../Styles/tripStyleSheet.css" rel="stylesheet" />
    
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 458px;
        }
    </style>
    
</head>
<body class="body">
    <form id="form1" runat="server">
        <div>
            <span class="title">訂票系統<br />
            </span>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
            
            <div style="text-align: center">
                        <asp:Calendar ID="tripCalendar" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="330px">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                            <DayStyle BackColor="#CCCCCC" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                            <TodayDayStyle BackColor="#999999" ForeColor="White" />
                        </asp:Calendar>
            </div>
                    </td>
                    <td>
            <table align="center">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="電影"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="MovieName" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>單價：</td>
                    <td>
                        <asp:Label ID="priceLabel" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>數量：</td>
                    <td>
                        <asp:TextBox ID="countTextBox" runat="server" AutoPostBack="True" OnTextChanged="daysTextBox_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>總價：</td>
                    <td>
                        <asp:Label ID="totalLabel" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
                    </td>
                </tr>
            </table>
            <br />
            
            <br />
            <br />
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
            <asp:HiddenField ID="youtubeHiddenField" runat="server" />
        </p>
    </form>
</body>
</html>
