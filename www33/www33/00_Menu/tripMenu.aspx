<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tripMenu.aspx.cs" Inherits="_00_Menu_tripMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TreeView ID="TreeView1" runat="server" ImageSet="Arrows">
            <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
            <Nodes>
                <asp:TreeNode Expanded="False" SelectAction="Expand" Text="01_html" Value="01_html">
                    <asp:TreeNode NavigateUrl="~/01_html/hello.html" Target="mainFrame" Text="hello.html" Value="新節點"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Expanded="False" SelectAction="Expand" Text="02_JavaScript" Value="02_JavaScript">
                    <asp:TreeNode NavigateUrl="~/02_Javascript/simpleMedia.html" Target="mainFrame" Text="simpleMedia.thml" Value="simpleMedia.thml"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/02_Javascript/youtubeMedia.html" Target="mainFrame" Text="youtubeMedia.html" Value="youtubeMedia.html"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/02_Javascript/simpleMovie.aspx" Target="mainFrame" Text="simpleMovie" Value="simpleMovie"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Expanded="False" SelectAction="Expand" Text="03_ASP" Value="03_ASP">
                    <asp:TreeNode NavigateUrl="~/03_ASP/01_simple/simpleTrip.aspx" Target="mainFrame" Text="01_simple" Value="01_simple"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/03_ASP/02_youtube/youtubeTrip.aspx" Target="mainFrame" Text="02_youtube" Value="02_youtubeSimple"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/03_ASP/03_image/imageTrip.aspx" Target="mainFrame" Text="03_image" Value="03_image"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/03_ASP/04_flickr/flickrTrip.aspx" Target="mainFrame" Text="04_flickr" Value="04_flickr"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/03_ASP/05_calendar/calendarTrip.aspx" Target="mainFrame" Text="05_calendar" Value="05_calendar"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/03_ASP/06_price/priceTrip.aspx" Target="mainFrame" Text="06_price" Value="06_price"></asp:TreeNode>
                    <asp:TreeNode Target="mainFrame" Text="07_myMovie" Value="07_myMovie" NavigateUrl="~/03_ASP/07_myMovie/simpleMovie.aspx"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Expanded="False" Text="04_Database" Value="04_Database">
                    <asp:TreeNode Expanded="False" SelectAction="Expand" Text="admin" Value="admin">
                        <asp:TreeNode NavigateUrl="~/04_Database/admin/tour.aspx" Target="mainFrame" Text="tour" Value="tour"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/04_Database/admin/hotTours.aspx" Target="mainFrame" Text="HotTours" Value="HotTours"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/04_Database/admin/keyBuyer.aspx" Target="mainFrame" Text="KeyBuyers" Value="KeyBuyers"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Expanded="False" SelectAction="Expand" Text="store" Value="store">
                        <asp:TreeNode NavigateUrl="~/04_Database/store/Trip.aspx" Target="mainFrame" Text="trip" Value="trip"></asp:TreeNode>
                    </asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Expanded="False" Text="05_MidTerm" Value="05_MidTerm">
                    <asp:TreeNode Expanded="False" Text="051_Test(I) 0406" Value="051_Test(I) 0406">
                        <asp:TreeNode NavigateUrl="~/05_MidTerm/051_Test(I) 0406/10_season.aspx" Target="mainFrame" Text="10_season" Value="10_season"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/05_MidTerm/051_Test(I) 0406/21_seasonPoll1.aspx" Target="mainFrame" Text="21_seasonPoll1" Value="21_seasonPoll1"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/05_MidTerm/051_Test(I) 0406/22_seasonPoll2.aspx" Target="mainFrame" Text="22_seasonPoll2" Value="22_seasonPoll2"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/05_MidTerm/051_Test(I) 0406/23_pollGrid1.aspx" Target="mainFrame" Text="23_pollGrid1" Value="23_pollGrid1"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/05_MidTerm/051_Test(I) 0406/24_pollChart.aspx" Target="mainFrame" Text="24_pollChart" Value="24_pollChart"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/05_MidTerm/051_Test(I) 0406/25_pollDatalist.aspx" Target="mainFrame" Text="25_pollDataList" Value="25_pollDataList"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/05_MidTerm/051_Test(I) 0406/31_seasonPoll3.aspx" Target="mainFrame" Text="31_seasonPoll3" Value="31_seasonPoll3"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/05_MidTerm/051_Test(I) 0406/32_pollGrid2.aspx" Target="mainFrame" Text="32_pollGrid2" Value="32_pollGrid2"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/05_MidTerm/051_Test(I) 0406/40_pollGrid3.aspx" Target="mainFrame" Text="40_pollGrid3" Value="40_pollGrid3"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Expanded="False" Text="052_Test (II) 0412" Value="052_Test (II) 0412">
                        <asp:TreeNode NavigateUrl="~/05_MidTerm/052_Test(II) 0412/11_movie.aspx" Target="mainFrame" Text="11_movie" Value="11_movie"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/05_MidTerm/052_Test(II) 0412/21_movieGrade1.aspx" Target="mainFrame" Text="21_movieGrade1" Value="21_movieGrade1"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/05_MidTerm/052_Test(II) 0412/22_movieGrade2.aspx" Target="mainFrame" Text="22_movieGrade2" Value="22_movieGrade2"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/05_MidTerm/052_Test(II) 0412/23_gradeGrid1.aspx" Target="mainFrame" Text="23_gradeGrid1" Value="23_gradeGrid1"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/05_MidTerm/052_Test(II) 0412/24_gradeChart.aspx" Target="mainFrame" Text="24_gradeChart" Value="24_gradeChart"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/05_MidTerm/052_Test(II) 0412/25_gradeDataList.aspx" Target="mainFrame" Text="25_gradeDataList" Value="25_gradeDataList"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/05_MidTerm/052_Test(II) 0412/31_movieGrade3.aspx" Target="mainFrame" Text="31_movieGrade3" Value="31_movieGrade3"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/05_MidTerm/052_Test(II) 0412/32_gradeGrid2.aspx" Target="mainFrame" Text="32_gradeGrid2" Value="32_gradeGrid2"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/05_MidTerm/052_Test(II) 0412/41_gradeGrid3.aspx" Target="mainFrame" Text="41_gradeGrid3" Value="41_gradeGrid3"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Text="053_Exam(I)" Value="053_Exam(I)">
                        <asp:TreeNode NavigateUrl="~/05_MidTerm/053_Exam 0419/SimpleBuy.aspx" Target="mainFrame" Text="simpleBuy" Value="simpleBuy"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/05_MidTerm/053_Exam 0419/ImageBuy.aspx" Target="mainFrame" Text="imageBuy" Value="imageBuy"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/05_MidTerm/053_Exam 0419/salesGrid.aspx" Target="mainFrame" Text="salesGrid" Value="salesGrid"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/05_MidTerm/053_Exam 0419/revenueGrid.aspx" Target="mainFrame" Text="revenueGrid" Value="revenueGrid"></asp:TreeNode>
                    </asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="06_AJAX" Value="06_AJAX">
                    <asp:TreeNode NavigateUrl="~/06_AJAX/store/AJAXTrip.aspx" Target="mainFrame" Text="AJAX Trip" Value="AJAX Trip"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/06_AJAX/vote/ajaxvote.aspx" Target="mainFrame" Text="AJAX" Value="AJAX"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/06_AJAX/vote/vote.aspx" Target="mainFrame" Text="WhyAJAX" Value="WhyAJAX"></asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
            <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
            <ParentNodeStyle Font-Bold="False" />
            <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
        </asp:TreeView>
    
    </div>
    </form>
</body>
</html>
