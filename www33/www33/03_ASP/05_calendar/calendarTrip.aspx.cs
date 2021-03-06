﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class _03_ASP_05_calendar_calendarTrip : System.Web.UI.Page
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
                break;
            case "2":
                photoId = "7414/13054804873_72be81e8dd_o.jpg";
                youtubeId = "m_OBpeO8iMk";
                break;
            case "3":
                photoId = "7379/13054804823_c238094830_o.jpg";
                youtubeId = "tO2VoFcJ_4I";
                break;
        }

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

        Response.Redirect("calendarOrder.aspx"); //重新導向網頁
    }
}