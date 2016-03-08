using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class _03_ASP_06_price_priceTrip : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            placeRadioButtonList.SelectedIndex = 0;
            string photoId = "2035/13054988514_caa39974cc_o.jpg";
            string youtubeId = "O8aUP64bO7o";

            placeImage.ImageUrl = "http://farm9.staticflickr.com/" + photoId;
            youtubeHiddenField.Value = youtubeId;

            priceLabel.Text = "1000";
            daysTextBox.Text = "5";
            totalLabel.Text = string.Format("{0:N0}",//千分位
            (Convert.ToInt32(priceLabel.Text) * Convert.ToInt32(daysTextBox.Text)));//單價*天數
            priceLabel.Text = string.Format("{0:N0}", (Convert.ToInt32(priceLabel.Text)));

            tripCalendar.SelectedDate = DateTime.Now;
        }
    }

    protected void placeRadioButtonList_SelectedIndexChanged(object sender, EventArgs e)
    {
        string photoId = "";
        string youtubeId = "";

        switch(placeRadioButtonList.SelectedValue){
            case "1":
                photoId = "2035/13054988514_caa39974cc_o.jpg";
                youtubeId = "O8aUP64bO7o";
                priceHiddenField.Value = "1000";

                break;
            case "2":
                photoId = "7414/13054804873_72be81e8dd_o.jpg";
                youtubeId = "m_OBpeO8iMk";
                priceHiddenField.Value = "3000";

                break;
            case "3":
                photoId = "7379/13054804823_c238094830_o.jpg";
                youtubeId = "tO2VoFcJ_4I";
                priceHiddenField.Value = "5000";

                break;
        }

        totalLabel.Text = string.Format("{0:N0}",
            (Convert.ToInt32(priceHiddenField.Value) * Convert.ToInt32(daysTextBox.Text)));
        priceLabel.Text = string.Format("{0:N0}", (Convert.ToInt32(priceHiddenField.Value)));

        placeImage.ImageUrl = "http://farm9.staticflickr.com/" + photoId;
        youtubeHiddenField.Value = youtubeId;
    }
    protected void goButton_Click(object sender, EventArgs e)
    {
        Session["user"] = userTextBox.Text;
        Session["placeId"] = placeRadioButtonList.SelectedValue;
        Session["place"] = placeRadioButtonList.SelectedItem.Text;
        Session["youtubeId"] = youtubeHiddenField.Value;
        
        Session["tripDate"] = tripCalendar.SelectedDate.ToShortDateString();

        Session["price"] = priceHiddenField.Value;
        Session["days"] = daysTextBox.Text;
        Session["total"] = totalLabel.Text;
        
        Response.Redirect("priceOrder.aspx"); //重新導向網頁
    }
    protected void daysTextBox_TextChanged(object sender, EventArgs e) //天數改變
    {
        totalLabel.Text = string.Format("{0:N0}",
            (Convert.ToInt32(priceHiddenField.Value) * Convert.ToInt32(daysTextBox.Text)));

    }
}