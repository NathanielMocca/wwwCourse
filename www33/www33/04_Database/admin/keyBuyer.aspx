<%@ Page Language="C#" AutoEventWireup="true" CodeFile="keyBuyer.aspx.cs" Inherits="_04_Database_admin_keyBuyer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Key Buyer</title>
    <link href="../../Styles/3_tripStyleSheet.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body class="body">
    <form id="form1" runat="server">
    <div>
    
        <div>
            <span class="title">超級土豪排夯榜<br />
            </span>
            <table class="auto-style1">
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="keyBuyerGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="keyBuyerSqlDataSource" GridLines="Horizontal">
                            <AlternatingRowStyle BackColor="#F7F7F7" />
                            <Columns>
                                <asp:BoundField DataField="username" HeaderText="金主" SortExpression="username" />
                                <asp:BoundField DataField="tripCount" HeaderText="旅遊次數" ReadOnly="True" SortExpression="tripCount" />
                                <asp:BoundField DataField="totalSum" HeaderText="給我的錢" ReadOnly="True" SortExpression="totalSum" />
                                <asp:BoundField DataField="daysSum" HeaderText="旅遊總天數" ReadOnly="True" SortExpression="daysSum" />
                            </Columns>
                            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                            <SortedAscendingCellStyle BackColor="#F4F4FD" />
                            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                            <SortedDescendingCellStyle BackColor="#D8D8F0" />
                            <SortedDescendingHeaderStyle BackColor="#3E3277" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Chart ID="Chart1" runat="server" DataSourceID="keyBuyerSqlDataSource">
                            <Series>
                                <asp:Series ChartArea="ChartArea1" Name="Series1" XValueMember="username" YValueMembers="totalSum">
                                </asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1">
                                    <AxisY Title="消費額">
                                    </AxisY>
                                    <AxisX Title="金主">
                                    </AxisX>
                                </asp:ChartArea>
                            </ChartAreas>
                            <Titles>
                                <asp:Title Name="Title1" Text="給我多少錢">
                                </asp:Title>
                            </Titles>
                        </asp:Chart>
                    </td>
                    <td>
                        <asp:Chart ID="Chart2" runat="server" DataSourceID="keyBuyerSqlDataSource">
                            <Series>
                                <asp:Series ChartType="Pie" IsValueShownAsLabel="True" Legend="Legend1" Name="Series1" XValueMember="username" YValueMembers="tripCount">
                                </asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1">
                                    <AxisY Title="旅遊次數">
                                    </AxisY>
                                    <AxisX Title="金主">
                                    </AxisX>
                                </asp:ChartArea>
                            </ChartAreas>
                            <Legends>
                                <asp:Legend Name="Legend1">
                                </asp:Legend>
                            </Legends>
                            <Titles>
                                <asp:Title Name="Title1" Text="旅遊次數比較">
                                </asp:Title>
                            </Titles>
                        </asp:Chart>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Chart ID="Chart3" runat="server" DataSourceID="keyBuyerSqlDataSource">
                            <Series>
                                <asp:Series ChartType="Radar" Name="Series1" XValueMember="username" YValueMembers="daysSum">
                                </asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1">
                                    <AxisY Title="旅遊天數">
                                    </AxisY>
                                    <AxisX Title="金主">
                                    </AxisX>
                                </asp:ChartArea>
                            </ChartAreas>
                            <Titles>
                                <asp:Title Name="Title1" Text="旅遊天數比較">
                                </asp:Title>
                            </Titles>
                        </asp:Chart>
                    </td>
                </tr>
            </table>
            <br />
            <asp:SqlDataSource ID="keyBuyerSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:WWW33ConnectionString %>" SelectCommand="SELECT username, COUNT(*) AS tripCount, SUM(days) AS daysSum, SUM(total) AS totalSum FROM trip GROUP BY username ORDER BY totalSum DESC, daysSum DESC, tripCount DESC"></asp:SqlDataSource>
        </div>
    
    </div>
    </form>
</body>
</html>
