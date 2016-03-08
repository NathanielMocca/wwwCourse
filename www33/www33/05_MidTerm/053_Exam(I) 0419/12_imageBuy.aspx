<%@ Page Language="C#" AutoEventWireup="true" CodeFile="12_imageBuy.aspx.cs" Inherits="_05_Midterm_053_Exam_I__0419_12_imageBuy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../Styles/tripStyleSheet.css" rel="stylesheet" />
    <title>imageBuy</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 42px;
        }
        .auto-style3 {
            width: 42px;
            height: 20px;
        }
        .auto-style4 {
            height: 20px;
        }
    </style>
</head>
<body class="body">
    <form id="form1" runat="server">
    <div>
    
        <span class="title">熱門商品採購</span><br />
        <br />
        商品<asp:DropDownList ID="productDropDownList1" runat="server" AutoPostBack="True" DataSourceID="productSqlDataSource" DataTextField="productName" DataValueField="productId" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <br />
        <asp:FormView ID="productFormView" runat="server" DataKeyNames="productId" DataSourceID="productSqlDataSource" OnDataBound="productFormView_DataBound">
            <EditItemTemplate>
                productId:
                <asp:Label ID="productIdLabel1" runat="server" Text='<%# Eval("productId") %>' />
                <br />
                productName:
                <asp:TextBox ID="productNameTextBox" runat="server" Text='<%# Bind("productName") %>' />
                <br />
                categoryId:
                <asp:TextBox ID="categoryIdTextBox" runat="server" Text='<%# Bind("categoryId") %>' />
                <br />
                category:
                <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                <br />
                price:
                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                <br />
                flickrId:
                <asp:TextBox ID="flickrIdTextBox" runat="server" Text='<%# Bind("flickrId") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <InsertItemTemplate>
                productName:
                <asp:TextBox ID="productNameTextBox" runat="server" Text='<%# Bind("productName") %>' />
                <br />
                categoryId:
                <asp:TextBox ID="categoryIdTextBox" runat="server" Text='<%# Bind("categoryId") %>' />
                <br />
                category:
                <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                <br />
                price:
                <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                <br />
                flickrId:
                <asp:TextBox ID="flickrIdTextBox" runat="server" Text='<%# Bind("flickrId") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                單價： 
                <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
                <br />
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("flickrId", "http://farm9.staticflickr.com/{0}") %>' />
                <br />
                <br />
                <asp:HiddenField ID="priceHiddenField" runat="server" Value='<%# Eval("price") %>' />
                <br />
            </ItemTemplate>
        </asp:FormView>
        <br />
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">數量</td>
                <td>
                    <asp:RadioButtonList ID="priceRadioButtonList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
                        <asp:ListItem Value="5">5個</asp:ListItem>
                        <asp:ListItem Value="2">2個</asp:ListItem>
                        <asp:ListItem Value="1">1個</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">總價</td>
                <td class="auto-style4">
                    <asp:Label ID="totalLabel" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <asp:Button ID="goButton" runat="server" OnClick="goButton_Click" style="height: 21px" Text="GO!" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <br />
        <br />
        <asp:SqlDataSource ID="productSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:examConnectionString2 %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="salseSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:examConnectionString2 %>" SelectCommand="SELECT * FROM [sales]" DeleteCommand="DELETE FROM [sales] WHERE [salesId] = @salesId" InsertCommand="INSERT INTO [sales] ([productId], [amount], [total]) VALUES (@productId, @amount, @total)" UpdateCommand="UPDATE [sales] SET [productId] = @productId, [amount] = @amount, [total] = @total WHERE [salesId] = @salesId">
            <DeleteParameters>
                <asp:Parameter Name="salesId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:SessionParameter Name="productId" SessionField="productId" Type="Int32" />
                <asp:SessionParameter Name="amount" SessionField="amount" Type="Int32" />
                <asp:SessionParameter Name="total" SessionField="total" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="productId" Type="Int32" />
                <asp:Parameter Name="amount" Type="Int32" />
                <asp:Parameter Name="total" Type="Int32" />
                <asp:Parameter Name="salesId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
