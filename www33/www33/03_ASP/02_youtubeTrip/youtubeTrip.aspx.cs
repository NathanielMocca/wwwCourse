using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _03_ASP_01_simpleTrip_simpleTrip : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void goButton_Click(object sender, EventArgs e)
    {
        Session["userName"] = userTextBox.Text;
        Session["youtubeId"] = placeRadioButtonList.SelectedValue;
        Session["place"] = placeRadioButtonList.SelectedItem.Text;

        Response.Redirect("youtubeOrder.aspx");
    }
}