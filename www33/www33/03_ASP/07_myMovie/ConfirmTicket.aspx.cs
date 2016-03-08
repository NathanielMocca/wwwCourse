using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _03_ASP_07_myMovie_ConfirmTicket : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MovieLabel.Text = Session["Movie"].ToString();
        DateLabel.Text = Session["Date"].ToString();
        TimeLabel.Text = Session["TicketTime"].ToString();
        NumberLabel.Text = Session["Number"].ToString();
        TheaterLabel.Text = Session["Theater"].ToString();
    }
}