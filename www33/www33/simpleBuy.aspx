<%@ Page Language="C#" AutoEventWireup="true" CodeFile="simpleBuy.aspx.cs" Inherits="_05_mid_Exam_simpleBuy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../script/tripStyleSheet.css" rel="stylesheet" />
    <title>simpleBuy</title>
    <style type="text/css">
</style>
</head>
<body style="text-align: left">
    <form id="form1" runat="server" class="tableContent">
    <div style="text-align: left">
    
        <span class="placeTitle">熱門商品採購</span><br />
        <br />
        商品：<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="productSqlDataSource" DataTextField="productName" DataValueField="productId" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
        </asp:DropDownList>
        <asp:FormView ID="priceFormView" runat="server" DataKeyNames="productId" DataSourceID="productSqlDataSource" Width="67px">
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
                價格： 
                <asp:Label ID="priceLabel" runat="server" OnDataBinding="priceLabel_DataBinding" Text='<%# Bind("price") %>' />
                <br />
                <br />

            </ItemTemplate>
        </asp:FormView>
        <table class="auto-style1" align="left">
            <tr>
                <td class="body"><span class="engTitle">數量：</span></td>
                <td class="body">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged1" RepeatDirection="Horizontal">
                        <asp:ListItem Value="5">5個</asp:ListItem>
                        <asp:ListItem Value="4">4個</asp:ListItem>
                        <asp:ListItem Value="3">3個</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td><span class="body">總價：<br />
                    </span></td>
                <td>
                    <asp:Label ID="totalLabel" runat="server" Text="Label"></asp:Label>
                    <br />
        <asp:Button ID="Button1" runat="server" Text="購買" OnClick="Button1_Click" style="text-align: center;" />
                </td>
            </tr>
        </table>
    
    </div>
        <br />
        <asp:SqlDataSource ID="productSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:examConnectionString %>" SelectCommand="SELECT * FROM [product]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="buyerSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:examConnectionString %>" DeleteCommand="DELETE FROM [sales] WHERE [salesId] = @salesId" InsertCommand="INSERT INTO [sales] ([productId], [amount], [total]) VALUES (@productId, @amount, @total)" SelectCommand="SELECT * FROM [sales]" UpdateCommand="UPDATE [sales] SET [productId] = @productId, [amount] = @amount, [total] = @total WHERE [salesId] = @salesId">
            <DeleteParameters>
                <asp:Parameter Name="salesId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" Name="productId" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="RadioButtonList1" DefaultValue="5" Name="amount" PropertyName="SelectedValue" Type="Int32" />
                <asp:SessionParameter Name="total" SessionField="total" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="productId" Type="Int32" />
                <asp:Parameter Name="amount" Type="Int32" />
                <asp:Parameter Name="total" Type="Int32" />
                <asp:Parameter Name="salesId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
