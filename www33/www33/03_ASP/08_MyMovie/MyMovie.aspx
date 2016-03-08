<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyMovie.aspx.cs" Inherits="_03_ASP_08_MyMovie_MyMovie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>My Movie</title>
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
        #form1 {
            text-align: center;
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
                <asp:HiddenField ID="youtubeHiddenField" runat="server" Value="mPg2BRV66vY"   />
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style4">
                <div id="player">
                </div>
                        </td>
                        <td>
                            <div>
                                <asp:Label ID="MovieName" runat="server" Font-Size="Large">我想念我自己</asp:Label>
                                <br />
                                <asp:Label ID="EGname" runat="server" Font-Size="Small">Still Alice</asp:Label>
                                <br />
                                <asp:Label ID="introduction" runat="server" Font-Size="Medium">愛麗絲任教紐約哥倫比亞大學，是享譽全球的語言學教授，她聰明獨立、對人生充滿熱情，有個同為教授且深愛她的丈夫約翰與三個已長大成人的孩子，唯一煩惱只是小女兒莉蒂亞放棄念大學而執意追求演員夢。看似完美的生活，卻在演講時意外失語、慢跑時喪失方向感等一連串意外下失序。神經科醫生診斷她罹患了早發性且是遺傳性PSI基因變異的阿茲海默症，震驚崩潰的愛麗絲向家人透露病情，面對即將失去引以自豪的事業與獨立生活的能力，無助的她甚至為自己的未來先行安排結局；當記憶一步步走向終點時，也是愛麗絲與莉蒂亞展開諒解之旅的起點。</asp:Label>
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <br />
                                <asp:Label ID="Label1" runat="server" Text="單價："></asp:Label>
                                <asp:Label ID="priceLabel" runat="server" Text="250"></asp:Label>
                                <br />
                            </div>
                        </td>
                    </tr>
        </table>
        <br />
&nbsp;&nbsp;
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="訂票" />
        <br />
    </form>
    </body>
</html>
<script src="../../Javascript/youtubeOrderJavascript.js"></script>
<script type="text/javascript" src="https://www.youtube.com/iframe_api"></script>