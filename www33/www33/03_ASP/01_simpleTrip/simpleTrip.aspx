<%@ Page Language="C#" AutoEventWireup="true" CodeFile="simpleTrip.aspx.cs" Inherits="_03_ASP_01_simpleTrip_simpleTrip" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>simple Trip</title>
    <link href="../../Styles/tripStyleSheet.css" rel="stylesheet" />
    
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
                        <asp:RadioButtonList ID="placeRadioButtonList" runat="server" CssClass="formViewContent" RepeatDirection="Horizontal" Width="236px">
                            <asp:ListItem Value="Tokyo" Selected="True">東京</asp:ListItem>
                            <asp:ListItem Value="NewYork">紐約</asp:ListItem>
                            <asp:ListItem Value="London">倫敦</asp:ListItem>
                            <asp:ListItem Value="Egypt">埃及</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <p class="formViewContent">
            <asp:Button ID="goButton" runat="server" Text="GO!" OnClick="goButton_Click" />
        </p>
    </form>
</body>
</html>
