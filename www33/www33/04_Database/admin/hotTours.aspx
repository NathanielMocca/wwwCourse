<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hotTours.aspx.cs" Inherits="_04_Database_admin_hotTours" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>hot Tours</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 20px;
        }
    </style>
</head>
<link href="../../Styles/3_tripStyleSheet.css" rel="stylesheet" />
<body class="body">
    <form id="form1" runat="server">
    <div>
    
        <span class="title">熱門商品排行榜</span><br />
        <table class="auto-style1">
            <tr>
                <td colspan="2">
                    <asp:FormView ID="totalFormView" runat="server" DataSourceID="totalSqlDataSource">
                        <EditItemTemplate>
                            tripCount:
                            <asp:TextBox ID="tripCountTextBox" runat="server" Text='<%# Bind("tripCount") %>' />
                            <br />
                            totalSum:
                            <asp:TextBox ID="totalSumTextBox" runat="server" Text='<%# Bind("totalSum") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            tripCount:
                            <asp:TextBox ID="tripCountTextBox" runat="server" Text='<%# Bind("tripCount") %>' />
                            <br />
                            totalSum:
                            <asp:TextBox ID="totalSumTextBox" runat="server" Text='<%# Bind("totalSum") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            接單總數:
                            <asp:Label ID="tripCountLabel" runat="server" Text='<%# Bind("tripCount") %>' />
                            <br />
                            總營業額:
                            <asp:Label ID="totalSumLabel" runat="server" Text='<%# Eval("totalSum","{0:N0}") %>' />
                            <br />

                        </ItemTemplate>
                    </asp:FormView>
                    <br />
                    <asp:GridView ID="hotToursGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="tourId" DataSourceID="hotToursSqlDataSource" GridLines="Horizontal" >
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:BoundField DataField="place" HeaderText="地點" SortExpression="place" />
                            <asp:BoundField DataField="placeCount" HeaderText="旅遊人次" ReadOnly="True" SortExpression="placeCount" />
                            <asp:BoundField DataField="totalSum" DataFormatString="{0:N0}" HeaderText="營業額" ReadOnly="True" SortExpression="totalSum" />
                            <asp:BoundField DataField="daysAvg" HeaderText="平均天數" ReadOnly="True" SortExpression="daysAvg" />
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
                <td colspan="2">
                    <asp:DataList ID="hotToursDataList" runat="server" DataKeyField="tourId" DataSourceID="hotToursSqlDataSource" OnItemCommand="hotToursDataList_ItemCommand" RepeatDirection="Horizontal">
                        <ItemTemplate>
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="placeLabel" runat="server" Text='<%# Eval("place") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("flickrId","http://farm9.staticflickr.com/{0}") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td>營業額：<asp:Label ID="totalSumLabel" runat="server" Text='<%# Eval("totalSum","{0:N0}") %>' />
                                    </td>
                                </tr>
                            </table>
<br />
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:FormView ID="placeFormView" runat="server" DataKeyNames="tourId" DataSourceID="hotToursSqlDataSource">
                        <EditItemTemplate>
                            tourId:
                            <asp:Label ID="tourIdLabel1" runat="server" Text='<%# Eval("tourId") %>' />
                            <br />
                            place:
                            <asp:TextBox ID="placeTextBox" runat="server" Text='<%# Bind("place") %>' />
                            <br />
                            placeCount:
                            <asp:TextBox ID="placeCountTextBox" runat="server" Text='<%# Bind("placeCount") %>' />
                            <br />
                            flickrId:
                            <asp:TextBox ID="flickrIdTextBox" runat="server" Text='<%# Bind("flickrId") %>' />
                            <br />
                            daysAvg:
                            <asp:TextBox ID="daysAvgTextBox" runat="server" Text='<%# Bind("daysAvg") %>' />
                            <br />
                            totalSum:
                            <asp:TextBox ID="totalSumTextBox" runat="server" Text='<%# Bind("totalSum") %>' />
                            <br />
                            price:
                            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            place:
                            <asp:TextBox ID="placeTextBox" runat="server" Text='<%# Bind("place") %>' />
                            <br />
                            placeCount:
                            <asp:TextBox ID="placeCountTextBox" runat="server" Text='<%# Bind("placeCount") %>' />
                            <br />
                            flickrId:
                            <asp:TextBox ID="flickrIdTextBox" runat="server" Text='<%# Bind("flickrId") %>' />
                            <br />
                            daysAvg:
                            <asp:TextBox ID="daysAvgTextBox" runat="server" Text='<%# Bind("daysAvg") %>' />
                            <br />
                            totalSum:
                            <asp:TextBox ID="totalSumTextBox" runat="server" Text='<%# Bind("totalSum") %>' />
                            <br />
                            price:
                            <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            地點:
                            <asp:Label ID="placeLabel" runat="server" Text='<%# Bind("place") %>' />
                            <br />
                            單價:
                            <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price","{0:N0}") %>' />
                            <br />
                        </ItemTemplate>
                    </asp:FormView>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Chart ID="hotTourColumnChart" runat="server" DataSourceID="hotToursSqlDataSource">
                        <Series>
                            <asp:Series Name="Series1" XValueMember="place" YValueMembers="totalSum">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                                <AxisY Title="營業額">
                                </AxisY>
                                <AxisX Title="地點">
                                </AxisX>
                            </asp:ChartArea>
                        </ChartAreas>
                        <Titles>
                            <asp:Title Name="Title1" Text="營業額">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>
                </td>
                <td>
                    <asp:Chart ID="hotTourPieChart" runat="server" DataSourceID="hotToursSqlDataSource">
                        <Series>
                            <asp:Series Legend="Legend1" Name="旅遊人次" XValueMember="place" YValueMembers="placeCount">
                            </asp:Series>
                            <asp:Series ChartArea="ChartArea1" Legend="Legend1" Name="平均天數" XValueMember="place" YValueMembers="daysAvg">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                                <AxisY Title="次數">
                                </AxisY>
                                <AxisX Title="地點">
                                </AxisX>
                            </asp:ChartArea>
                        </ChartAreas>
                        <Legends>
                            <asp:Legend Name="Legend1" Title="次數名">
                            </asp:Legend>
                        </Legends>
                        <Titles>
                            <asp:Title Name="Title1" Text="次數比較">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Chart ID="hotTourRadarChart" runat="server" DataSourceID="hotToursSqlDataSource">
                        <Series>
                            <asp:Series ChartType="Radar" Name="Series1" XValueMember="place" YValueMembers="daysAvg">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                                <AxisY Title="平均天數">
                                </AxisY>
                                <AxisX Title="地點">
                                </AxisX>
                            </asp:ChartArea>
                        </ChartAreas>
                        <Titles>
                            <asp:Title Name="Title1" Text="平均天數">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>
                </td>
                <td>
                    <asp:Chart ID="Chart4" runat="server" DataSourceID="hotToursSqlDataSource">
                        <Series>
                            <asp:Series ChartType="Pie" IsValueShownAsLabel="True" Legend="Legend1" Name="Series1" XValueMember="place" YValueMembers="totalSum">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                        <Legends>
                            <asp:Legend Name="Legend1">
                            </asp:Legend>
                        </Legends>
                        <Titles>
                            <asp:Title Name="Title1" Text="旅遊人次">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:SqlDataSource ID="hotToursSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:WWW33ConnectionString %>" SelectCommand="SELECT tour.tourId, tour.place, COUNT(*) AS placeCount, tour.flickrId, AVG(trip.days) AS daysAvg, SUM(trip.total) AS totalSum, tour.price FROM tour INNER JOIN trip ON tour.tourId = trip.tourId GROUP BY tour.tourId, tour.place, tour.flickrId, tour.price ORDER BY placeCount DESC, totalSum DESC, daysAvg DESC"></asp:SqlDataSource>
    
        <asp:SqlDataSource ID="totalSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:WWW33ConnectionString %>" SelectCommand="SELECT COUNT(tripId) AS tripCount, SUM(total) AS totalSum FROM trip"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
