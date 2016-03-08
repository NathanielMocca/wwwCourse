using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _03_ASP_07_price_priceTrip : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) {
            placeRadioButtonList.SelectedIndex = 0;
            string photoID = "bdo4su9";
            string youtubeID = "1i1bZvbN0FQ";

            photoImage.ImageUrl = "http://imgur.com/" + photoID + ".jpg";
            youtubeHiddenField.Value = youtubeID;
            tripCalendar.SelectedDate = DateTime.Now;
            priceHiddenField.Value = "1000";
            priceLabel.Text = "1000";
            daysTextBox.Text = "1";
            totalLabel.Text = string.Format("{0:N0}", (Convert.ToInt32(priceLabel.Text) * Convert.ToInt32(daysTextBox.Text)));
            priceLabel.Text = string.Format("{0:N0}", (Convert.ToInt32(priceLabel.Text)));
        }
    }
    protected void goButton_Click(object sender, EventArgs e)
    {
        Session["userName"] = userTextBox.Text;
        Session["youtubeId"] = youtubeHiddenField.Value;
        Session["place"] = placeRadioButtonList.SelectedItem.Text;
        Session["tripCalendar"] = tripCalendar.SelectedDate.ToShortDateString();
        Session["price"] = priceHiddenField.Value;
        Session["days"] = daysTextBox.Text;
        Session["total"] = totalLabel.Text;
        Response.Redirect("pricerOrder.aspx");
    }

    protected void placeRadioButtonList_SelectedIndexChanged(object sender, EventArgs e)
    {
        string photoID = "";
        string youtubeID = "";
        switch (placeRadioButtonList.SelectedValue){
            case "1":
                photoID = "bdo4su9";
                youtubeID = "1i1bZvbN0FQ";
                priceHiddenField.Value = "1000";
                break;
            case "2":
                photoID = "CPeQ62P";
                youtubeID = "WHVPk1oS4ME";
                priceHiddenField.Value = "3000";
                break;
            case "3":
                photoID = "IIPSoWT";
                youtubeID = "TZM3bMkHrI0";
                priceHiddenField.Value = "5000";
                break;
            case "4":
                photoID = "etpVFSH";
                youtubeID = "VVI5OvldHkA";
                priceHiddenField.Value = "10000";
                break;
        }
        photoImage.ImageUrl = "http://imgur.com/" + photoID + ".jpg";
        youtubeHiddenField.Value = youtubeID;
        totalLabel.Text = string.Format("{0:N0}", (Convert.ToInt32(priceHiddenField.Value)) * Convert.ToInt32(daysTextBox.Text));
        priceLabel.Text = string.Format("{0:N0}", (Convert.ToInt32(priceHiddenField.Value)));
    }   
    protected void daysTextBox_TextChanged(object sender, EventArgs e)
    {
        totalLabel.Text = string.Format("{0:N0}", (Convert.ToInt32(priceHiddenField.Value) * Convert.ToInt32(daysTextBox.Text)));
    
    }
}