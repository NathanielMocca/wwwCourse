using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _03_ASP_07_myMovie_Ticket : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Calendar1.SelectedDate = DateTime.Now;
            NumberTextBox.Text = "1";
        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        switch (DropDownList1.SelectedValue)
        {
            case "0":
                TimeHiddenField.Value = "早上7點";
                break;
            case "1":
                TimeHiddenField.Value = "下午1點";
                break;
            case "2":
                TimeHiddenField.Value = "下午7點";
                break;
            case "3":
                TimeHiddenField.Value = "下午11點";
                break;
            

        }
    }

    protected void ListBox2_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        switch (ListBox2.SelectedValue)
        {
            case "0":
                MovieHiddenField.Value = "仙履奇緣";
                break;
            case "1":
                MovieHiddenField.Value = "金牌特務";
                break;
            case "2":
                MovieHiddenField.Value = "一夜狂奔";
                break;
        }
    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {

        switch (ListBox1.SelectedValue)
            {
                case "1":
                    TheaterHiddenField.Value = "台北信義影城";
                    break;
                case "2":
                    TheaterHiddenField.Value = "台南遠百影城";
                    break;
            }
    }
    protected void goButton_Click(object sender, EventArgs e)
    {
        Session["Date"] = Calendar1.SelectedDate.ToShortDateString();
        Session["TicketTime"] = TimeHiddenField.Value;
        Session["Movie"] = MovieHiddenField.Value;
        Session["Theater"] = TheaterHiddenField.Value;
        Session["Number"] = NumberTextBox.Text;

        Response.Redirect("ConfirmTicket.aspx");

    }
}

   