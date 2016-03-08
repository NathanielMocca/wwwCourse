using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _04_Database_store_order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)//一開始載入
    {
        userLabel.Text = Session["userName"].ToString();
        placeLabel.Text = Session["place"].ToString();
        youtubeHiddenField.Value =  Session["youtubeId"].ToString();
        priceLabel.Text = Session["price"].ToString();
        daysLabel.Text = Session["days"].ToString();

        totalHiddenField.Value = Session["totalHiddenField"].ToString();
        totalLabel.Text = Session["total"].ToString();
        tripDateLabel.Text = Session["tripDate"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        tripSqlDataSource.Insert();//writein DB
        Response.Redirect("tripList.aspx");

    }
}