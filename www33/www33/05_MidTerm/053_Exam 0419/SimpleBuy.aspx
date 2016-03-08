<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SimpleBuy.aspx.cs" Inherits="_05_MidTerm_053_Exam_0419_SimpleBuy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Simple Buy</title>

</head>
<link href="../../Styles/3_tripStyleSheet.css" rel="stylesheet" />
<body class="body">
    <form id="form1" runat="server">
    <div>
    
        <span class="title">熱門商品採購<br />
        </span>
        <table>
            <tr>
                <td>商品：</td>
                <td>
                    <asp:DropDownList ID="productsDropDownList" runat="server" AutoPostBack="True" DataSourceID="productSqlDataSource" DataTextField="productName" DataValueField="productId" OnSelectedIndexChanged="productsDropDownList_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>單價：</td>
                <td>
                    <asp:FormView ID="priceFormView" runat="server" DataKeyNames="productId" DataSourceID="productSqlDataSource" OnDataBound="priceFormView_DataBound">
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
                            <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price","{0:N0}") %>' />
                        </ItemTemplate>
                    </asp:FormView>
                </td>
            </tr>
            <tr>
                <td>數量：</td>
                <td>
                    <asp:RadioButtonList ID="NumberRadioButtonList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="NumberRadioButtonList_SelectedIndexChanged" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True" Value="5">5個</asp:ListItem>
                        <asp:ListItem Value="3">3個</asp:ListItem>
                        <asp:ListItem Value="1">1個</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>總價：</td>
                <td>
                    <asp:Label ID="totalLabel" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="buyButton" runat="server" OnClick="buyButton_Click" Text="買" />
        <br />
        <br />
        <asp:SqlDataSource ID="productSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:examConnectionString %>" DeleteCommand="DELETE FROM [product] WHERE [productId] = @productId" InsertCommand="INSERT INTO [product] ([productName], [categoryId], [category], [price], [flickrId]) VALUES (@productName, @categoryId, @category, @price, @flickrId)" SelectCommand="SELECT * FROM [product]" UpdateCommand="UPDATE [product] SET [productName] = @productName, [categoryId] = @categoryId, [category] = @category, [price] = @price, [flickrId] = @flickrId WHERE [productId] = @productId">
            <DeleteParameters>
                <asp:Parameter Name="productId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="productName" Type="String" />
                <asp:Parameter Name="categoryId" Type="Int32" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="flickrId" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="productName" Type="String" />
                <asp:Parameter Name="categoryId" Type="Int32" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="flickrId" Type="String" />
                <asp:Parameter Name="productId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="salesSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:examConnectionString %>" DeleteCommand="DELETE FROM [sales] WHERE [salesId] = @salesId" InsertCommand="INSERT INTO [sales] ([productId], [amount], [total]) VALUES (@productId, @amount, @total)" SelectCommand="SELECT * FROM [sales]" UpdateCommand="UPDATE [sales] SET [productId] = @productId, [amount] = @amount, [total] = @total WHERE [salesId] = @salesId">
            <DeleteParameters>
                <asp:Parameter Name="salesId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="productsDropDownList" Name="productId" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="NumberRadioButtonList" Name="amount" PropertyName="SelectedValue" Type="Int32" />
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
    
    </div>
    </form>
</body>
</html>
