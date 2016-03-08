using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _03_ASP_08_08_MyMovie_Tickets : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        
        MovieName.Text=Session["MovieName"].ToString();
        priceLabel.Text = Session["price"].ToString();

        if (!IsPostBack) {

            tripCalendar.SelectedDate = DateTime.Now;
            countTextBox.Text = "1";
            totalLabel.Text = string.Format("{0:N0}", (Convert.ToInt32(priceLabel.Text) * Convert.ToInt32(countTextBox.Text)));
        }
    }
    protected void goButton_Click(object sender, EventArgs e)
    {
        Session["MovieName"] = MovieName.Text;
        Session["price"] = priceLabel.Text;
        Session["count"] = countTextBox.Text;
        Session["tripCalendar"] = tripCalendar.SelectedDate.ToShortDateString();
        Session["total"] = totalLabel.Text;
        Response.Redirect("Order.aspx");
    }

    protected void placeRadioButtonList_SelectedIndexChanged(object sender, EventArgs e)
    {

        totalLabel.Text = string.Format("{0:N0}", (Convert.ToInt32(priceLabel.Text) * Convert.ToInt32(countTextBox.Text)));
    }
    protected void daysTextBox_TextChanged(object sender, EventArgs e)
    {
        totalLabel.Text = string.Format("{0:N0}", (Convert.ToInt32(priceLabel.Text) * Convert.ToInt32(countTextBox.Text)));
    
    }
}