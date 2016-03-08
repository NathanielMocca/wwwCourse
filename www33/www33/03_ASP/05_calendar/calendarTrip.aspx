<%@ Page Language="C#" AutoEventWireup="true" CodeFile="calendarTrip.aspx.cs" Inherits="_03_ASP_05_calendar_calendarTrip" %>

<!DOCTYPE html>




<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>calendar Trip</title>
    <link href="../../Styles/3_tripStyleSheet.css" rel="stylesheet" />


</head>
<body class="body">
    <form id="form1" runat="server">
        <span class="title">我要去旅行</span><br />
        <table align="center">
            <tr>
                <td class="auto-style1">旅行者：</td>
                <td class="tableContent">
                    <asp:TextBox ID="userTextBox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="userTextBox" Display="Dynamic" ErrorMessage="請輸入姓名!!" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="tableContent">旅行地：</td>
                <td class="tableContent">
                    <asp:RadioButtonList ID="placeRadioButtonList" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="placeRadioButtonList_SelectedIndexChanged">
                        <asp:ListItem Selected="True" Value="1">東京</asp:ListItem>
                        <asp:ListItem Value="2">紐約</asp:ListItem>
                        <asp:ListItem Value="3">倫敦</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
        </table>
        <table align="center">
            <tr>
                <td class="auto-style3">
        <asp:Calendar ID="tripCalendar" runat="server" BackColor="White" BorderColor="White" BorderStyle="Groove" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="330px">
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
        <asp:Image ID="placeImage" runat="server" Height="154px" Width="150px" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <asp:Button ID="goButton" runat="server" OnClick="goButton_Click" Text="走吧!" />
        <br />
        <br />
        <asp:HiddenField ID="youtubeHiddenField" runat="server" />
    </form>
</body>
</html>
