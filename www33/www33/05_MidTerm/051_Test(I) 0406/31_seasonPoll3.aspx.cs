﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _05_MidTerm_051_Test_I__0406_31_seasonPoll3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            seasonRadioButtonList.SelectedIndex = 0;
            imageFormView.PageIndex = 0;
            DateTime dt = DateTime.Now;
            dateLabel.Text = dt.ToString();
            //daysTextBox.Text = "5";
            //tripCalendar.SelectedDate = DateTime.Now;
        }
    }
    protected void seasonRadioButtonList_SelectedIndexChanged(object sender, EventArgs e)
    {
        imageFormView.PageIndex = seasonRadioButtonList.SelectedIndex;
        
    }
    protected void imageFormView_DataBound(object sender, EventArgs e)
    {

    }

    protected void chooseButton_Click(object sender, EventArgs e)
    {
        pollSqlDataSource.Insert();
        DateTime dt = DateTime.Now;
        Session["time"] = dt;
        Response.Redirect("32_pollGrid2.aspx");
    }
}