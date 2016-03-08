using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _03_ASP_06_calendar_calendarTrip : System.Web.UI.Page
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
        }
    }
    protected void goButton_Click(object sender, EventArgs e)
    {
        Session["userName"] = userTextBox.Text;
        Session["youtubeId"] = youtubeHiddenField.Value;
        Session["place"] = placeRadioButtonList.SelectedItem.Text;
        Session["tripCalendar"] = tripCalendar.SelectedDate.ToShortDateString();
        Response.Redirect("calendarOrder.aspx");
    }

    protected void placeRadioButtonList_SelectedIndexChanged(object sender, EventArgs e)
    {
        string photoID = "";
        string youtubeID = "";
        switch (placeRadioButtonList.SelectedValue){
            case "1":
                photoID = "bdo4su9";
                youtubeID = "1i1bZvbN0FQ";
                break;
            case "2":
                photoID = "CPeQ62P";
                youtubeID = "WHVPk1oS4ME";
                break;
            case "3":
                photoID = "IIPSoWT";
                youtubeID = "TZM3bMkHrI0";
                break;
            case "4":
                photoID = "etpVFSH";
                youtubeID = "VVI5OvldHkA";
                break;
        }
        photoImage.ImageUrl = "http://imgur.com/" + photoID + ".jpg";
        youtubeHiddenField.Value = youtubeID;
    }
}