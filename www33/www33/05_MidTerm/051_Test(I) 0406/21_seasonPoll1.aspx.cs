using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _05_MidTerm_051_Test_I__0406_21_seasonPoll1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            seasonRadioButtonList.SelectedIndex = 0;
            //imageFormView.PageIndex = 0;
            //daysTextBox.Text = "5";
            //tripCalendar.SelectedDate = DateTime.Now;
        }
    }

    protected void seasonRadioButtonList_SelectedIndexChanged(object sender, EventArgs e)
    {
     
    }

    protected void chooseButton_Click(object sender, EventArgs e)
    {
        pollSqlDataSource.Insert();
        Response.Redirect("23_pollGrid1.aspx");
    }
}