<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="_03_ASP_08_MyMovie_Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Order</title>
    <link href="../../Styles/tripStyleSheet.css" rel="stylesheet" />
    
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server" class="body">
    <div class="title">
    
        請參考</div>
        <table>
            <tr>
                <td>電影：</td>
                <td>
                    <asp:Label ID="MovieName" runat="server" Text="Label"></asp:Label>
                    <br />
                </td>
            </tr>

            <tr>
                <td>日期：</td>
                <td>
                    <asp:Label ID="tripDateLabel" runat="server"></asp:Label>
                </td>
            </tr>

            <tr>
                <td>單價：</td>
                <td>
                    <asp:Label ID="priceLabel" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>

            <tr>
                <td>張數：</td>
                <td>
                    <asp:Label ID="countTextBox" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>

            <tr>
                <td class="auto-style1">總價：</td>
                <td class="auto-style1">
                    <asp:Label ID="totalLabel" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>

        </table>
         &nbsp;<br/>
   

    <p>
        &nbsp; </p>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/03_ASP/08_MyMovie/MyMovie.aspx">重新選擇電影</asp:HyperLink>
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
