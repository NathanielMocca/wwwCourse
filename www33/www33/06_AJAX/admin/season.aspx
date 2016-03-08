<%@ Page Language="C#" AutoEventWireup="true" CodeFile="season.aspx.cs" Inherits="_06_AJAX_admin_season" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
        <div>
            管理<br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="seasonId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="seasonId" HeaderText="seasonId" InsertVisible="False" ReadOnly="True" SortExpression="seasonId" />
                    <asp:BoundField DataField="flickrId" HeaderText="flickrId" SortExpression="flickrId" />
                    <asp:BoundField DataField="season" HeaderText="season" SortExpression="season" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="seasonId" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="seasonId" HeaderText="seasonId" InsertVisible="False" ReadOnly="True" SortExpression="seasonId" />
                    <asp:BoundField DataField="flickrId" HeaderText="flickrId" SortExpression="flickrId" />
                    <asp:BoundField DataField="season" HeaderText="season" SortExpression="season" />
                    <asp:CommandField ButtonType="Button" InsertText="新增" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WWW33ConnectionString %>" DeleteCommand="DELETE FROM [ajaxseason] WHERE [seasonId] = @seasonId" InsertCommand="INSERT INTO [ajaxseason] ([flickrId], [season]) VALUES (@flickrId, @season)" SelectCommand="SELECT * FROM [ajaxseason]" UpdateCommand="UPDATE [ajaxseason] SET [flickrId] = @flickrId, [season] = @season WHERE [seasonId] = @seasonId">
                <DeleteParameters>
                    <asp:Parameter Name="seasonId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="flickrId" Type="String" />
                    <asp:Parameter Name="season" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="flickrId" Type="String" />
                    <asp:Parameter Name="season" Type="String" />
                    <asp:Parameter Name="seasonId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
    
</body>
</html>
