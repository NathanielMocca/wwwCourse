using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _03_ASP_00_simpleMovie_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CHLabel.Text = "仙履奇緣";
        ENLabel.Text = "Cinderella";
        ContentLabel.Text = "母親離世後，艾拉的父親再娶了一位後母，為了支持深愛的父親，艾拉熱情的歡迎後母和她的兩位女兒進入自己的家庭，然而當父親意外去世後，艾拉被後母一家當作女僕對待，還被戲稱為「灰姑娘」。儘管遭受不合理的對待，艾拉還是決心堅持母親的教誨，「勇敢而善良地活下去」。因此她不向絕望投降，也不仇恨虐待她的人。有一天，艾拉在樹林裡遇見了瀟灑迷人的陌生人基特，她以為他是王宮的隨從，完全不知他是竟是王子。隨著王宮向全國少女發出舞會邀請，艾拉也希望自己能藉機在遇見基特。但當然的是，後母不允許她參加舞會，還親手撕碎了母親留下的禮服。可就如美好的童話故事一樣，神仙教母翩然而至，借用一只南瓜和一群小老鼠，讓灰姑娘奔向那改變她一生的舞會…";
        youtubeHiddenField.Value = "6fu6vG3QNI0";//Cinderella youtubeId
    }
    protected void CinferellaImageButton_Click(object sender, ImageClickEventArgs e)
    {
        CHLabel.Text = "仙履奇緣";
        ENLabel.Text = "Cinderella";
        ContentLabel.Text = "母親離世後，艾拉的父親再娶了一位後母，為了支持深愛的父親，艾拉熱情的歡迎後母和她的兩位女兒進入自己的家庭，然而當父親意外去世後，艾拉被後母一家當作女僕對待，還被戲稱為「灰姑娘」。儘管遭受不合理的對待，艾拉還是決心堅持母親的教誨，「勇敢而善良地活下去」。因此她不向絕望投降，也不仇恨虐待她的人。有一天，艾拉在樹林裡遇見了瀟灑迷人的陌生人基特，她以為他是王宮的隨從，完全不知他是竟是王子。隨著王宮向全國少女發出舞會邀請，艾拉也希望自己能藉機在遇見基特。但當然的是，後母不允許她參加舞會，還親手撕碎了母親留下的禮服。可就如美好的童話故事一樣，神仙教母翩然而至，借用一只南瓜和一群小老鼠，讓灰姑娘奔向那改變她一生的舞會…";
        youtubeHiddenField.Value = "6fu6vG3QNI0";
    }
    protected void KingsmanServiceImageButton_Click(object sender, ImageClickEventArgs e)
    {
        CHLabel.Text = "金牌特務";
        ENLabel.Text = "Kingsman：The Secret Service";
        ContentLabel.Text = "片中描述一個英國的國際秘密情報組織，為培訓出頂尖的情報特務員，四處找尋潛力新血加入組織，並鎖定了一位成天遊手好閒卻又有潛力十足的年輕小子加入組織。上層逐步安排一連串的嚴苛且具挑戰性的培訓計畫，將他訓練成為超級特務，以協助對抗正在迅速擴散的高科技犯罪組織。";
        youtubeHiddenField.Value = "RSrIMIP8gJs";
    }
    protected void RunAllNightImageButton_Click(object sender, ImageClickEventArgs e)
    {
        CHLabel.Text = "一夜狂奔";
        ENLabel.Text = "RUN ALL NIGHT";
        ContentLabel.Text = "吉米康隆現年55歲，是布魯克林區的黑道和致命殺手，「挖墓者」是黑白兩道給他的稱號，黑幫老大薛恩麥奎爾是他的長年好友。吉米想要改邪歸正，但是頑固的警探盯著他30年仍然緊追不捨，同時，過去犯下的各種罪狀縈繞在他心頭，唯一能慰藉他的只有酒精。然而，當吉米疏離的兒子麥克成為黑幫老大薛恩的頭號目標時，他的唯一的選擇就是保護兒子與他的家人，黑幫老大也動員手下所有人馬，要在這個晚上將吉米與麥可一起送上黃泉路。如今，吉米已無處可逃，他只有一個晚上的時間挽救不利的局勢。";
        youtubeHiddenField.Value = "XriV5I12lFw";
    }


    protected void ChooseButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Ticket.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("CreditCard.html");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("ContectUs.html");

    }

}