<%@ Page Language="C#" AutoEventWireup="true" CodeFile="simpleMovie.aspx.cs" Inherits="_03_ASP_03_simpleMovie_simpleMovie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>simple Movie</title>
    <style type="text/css">
        .auto-style1 {
            width: 77%;
        }
        #player {
            width: 333px;
            height: 177px;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 450px;
        }
        .auto-style5 {
            font-size: x-large;
            text-align: center;
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style5">
    
        <strong>我要看電影</strong></div>
        <div style="height: 274px; text-align: center">
            <asp:ImageButton ID="ImageButton1" runat="server" Height="250px" ImageUrl="~/Image/01_Still Alice.jpg" Width="190px" OnClick="ImageButton1_Click" />
            &nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton2" runat="server" Width="190px" Height="250px" ImageUrl="~/Image/02_CHAPPIE.jpg" OnClick="ImageButton2_Click" />
            &nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton3" runat="server" Height="250px" ImageUrl="~/Image/03_RUN ALL NIGHT.jpg" Width="190px" OnClick="ImageButton3_Click" />
            <br />
        </div>
    <table class="auto-style1">
        <tr>
            
        </tr>
    </table>
                <asp:HiddenField ID="youtubeHiddenField" runat="server"   />
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style4">
                <div id="player">
                </div>
                        </td>
                        <td>
                            <div>
                                <asp:Label ID="MovieName" runat="server" Font-Size="Large"></asp:Label>
                                <br />
                                <asp:Label ID="EGname" runat="server" Font-Size="Small"></asp:Label>
                                <br />
                                <asp:Label ID="introduction" runat="server" Font-Size="Medium"></asp:Label>
                            </div>
                        </td>
                    </tr>
        </table>
        <br />
    </form>
    </body>
</html>
<script src="../../Javascript/youtubeOrderJavascript.js"></script>
<script type="text/javascript" src="https://www.youtube.com/iframe_api"></script>