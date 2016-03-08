<%@ Page Language="C#" AutoEventWireup="true" CodeFile="simpleMovie.aspx.cs" Inherits="_03_ASP_00_simpleMovie_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Simple Movie</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .新增樣式1 {
            font-family: 微軟正黑體;
        }
        .auto-style2 {
            width: 448px;
            height: 357px;
        }
        .auto-style3 {
            width: 482px;
        }
    </style>
</head>
<link href="../../Styles/3_tripStyleSheet.css" rel="stylesheet" />
<body style="margin-top: 15px" class="body">
    <form id="form1" runat="server">
    <div>
    
        <br />
        <div id="ImageButtonDiv">
    
        <table class="auto-style1">
            <tr>
                <td>
                    <br />
                    <asp:ImageButton ID="CinferellaImageButton" runat="server" ImageUrl="~/Images/Cinderella.jpg" Height="220px" Width="161px" OnClick="CinferellaImageButton_Click" />
                </td>
                <td>
                    <asp:ImageButton ID="KingsmanServiceImageButton" runat="server" ImageUrl="~/Images/KingsmanService.jpg"  Height="220px" Width="161px" OnClick="KingsmanServiceImageButton_Click" />
                </td>
                <td>
                    <asp:ImageButton ID="RunAllNightImageButton" runat="server" ImageUrl="~/Images/RunAllNight.jpg"   Height="220px" Width="161px" OnClick="RunAllNightImageButton_Click"/>
                </td>
            </tr>
        </table>
    
            <br />
        </div>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
        <div id="player" class="auto-style2">
        </div>

        
                </td>
                <td>

        
        <asp:Label ID="CHLabel" runat="server" Text="Label" CssClass="title"></asp:Label>
                    <br />
        <asp:Label ID="ENLabel" runat="server" Text="Label" CssClass="engTitle"></asp:Label>

        
                    <br />
        <asp:Label ID="ContentLabel" runat="server" CssClass="新增樣式1" Text="Label"></asp:Label>

        
                </td>
            </tr>
        </table>
        <br />
        <br />

        
        <br />

        
        <br />
        <asp:HiddenField ID="youtubeHiddenField" runat="server"  />
    
    </div>
    </form>
</body>
</html>

<script src="../../Javascript/simpleMovieJavaScript.js"></script>
<script type="text/javascript" src="https://www.youtube.com/iframe_api"></script>