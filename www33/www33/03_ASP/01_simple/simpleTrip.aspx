<%@ Page Language="C#" AutoEventWireup="true" CodeFile="simpleTrip.aspx.cs" Inherits="_03_ASP_01_simple_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Simple Trip</title>
    <link href="../../Styles/3_tripStyleSheet.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style1 {
            text-align: right;
            white-space: nowrap;
            height: 26px;
        }
    </style>

</head>
<body class="body">
    <form id="form1" runat="server">
        <span class="title">我要去旅行</span><br />
        <table>
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
                    <asp:RadioButtonList ID="placeRadioButtonList" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True" Value="Tokyo">東京</asp:ListItem>
                        <asp:ListItem Value="NewYork">紐約</asp:ListItem>
                        <asp:ListItem Value="London">倫敦</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="goButton" runat="server" OnClick="Button1_Click" Text="走吧!" />
    </form>
</body>
</html>
