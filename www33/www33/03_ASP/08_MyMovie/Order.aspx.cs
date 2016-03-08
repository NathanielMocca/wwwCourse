using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _03_ASP_08_MyMovie_Order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {



        MovieName.Text = Session["MovieName"].ToString();
        priceLabel.Text = Session["price"].ToString();
        countTextBox.Text = Session["count"].ToString();
        totalLabel.Text = Session["total"].ToString();
        tripDateLabel.Text = Session["tripCalendar"].ToString();


    }
}