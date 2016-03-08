<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ticket.aspx.cs" Inherits="_03_ASP_07_myMovie_Ticket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>購票專區</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td>選擇影城：</td>
                <td>
                    <asp:ListBox ID="ListBox1" runat="server" Height="19px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" Width="111px">
                        <asp:ListItem>請選擇</asp:ListItem>
                        <asp:ListItem Value="1">台北信義影城</asp:ListItem>
                        <asp:ListItem Value="2">台南遠百影城</asp:ListItem>
                    </asp:ListBox>
                </td>
            </tr>
            <tr>
                <td>電&nbsp;&nbsp; 影：</td>
                <td>
                    <asp:ListBox ID="ListBox2" runat="server" Height="18px" OnSelectedIndexChanged="ListBox2_SelectedIndexChanged" Width="86px">
                        <asp:ListItem>請選擇</asp:ListItem>
                        <asp:ListItem Value="0">仙履奇緣</asp:ListItem>
                        <asp:ListItem Value="1">金牌特務</asp:ListItem>
                        <asp:ListItem Value="2">一夜狂奔</asp:ListItem>
                    </asp:ListBox>
                </td>
            </tr>
            <tr>
                <td>日&nbsp;&nbsp; 期：</td>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="183px" Width="307px">
                        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                        <WeekendDayStyle BackColor="#CCCCFF" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td>票&nbsp;&nbsp; 數：</td>
                <td>
                    <asp:TextBox ID="NumberTextBox" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>場&nbsp;&nbsp; 次：</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style2" Height="16px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem Value="9">請選擇</asp:ListItem>
                        <asp:ListItem Value="0">早場 7:00 (8折)</asp:ListItem>
                        <asp:ListItem Value="1">午場13:00</asp:ListItem>
                        <asp:ListItem Value="2">晚場19:00</asp:ListItem>
                        <asp:ListItem Value="3">午夜場23:00 (8折)</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
    
    </div>
        <div>
            <asp:Button ID="goButton" runat="server" OnClick="goButton_Click" Text="確認" />
            <br />
            <asp:HiddenField ID="TheaterHiddenField" runat="server" />
            <asp:HiddenField ID="MovieHiddenField" runat="server" />
            <asp:HiddenField ID="TimeHiddenField" runat="server" />
        </div>
    </form>
</body>
</html>
