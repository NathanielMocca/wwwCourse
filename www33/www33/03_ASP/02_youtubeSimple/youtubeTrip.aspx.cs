using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _03_ASP_02_youtubeSimple_youtubeTrip : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["user"] = userTextBox.Text;
        Session["youtubeID"] = placeRadioButtonList.SelectedValue;
        Session["place"] = placeRadioButtonList.SelectedItem.Text;

        Response.Redirect("youtubeOrder.aspx"); //重新導向網頁
    }
}