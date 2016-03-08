using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _03_ASP_06_price_priceOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)//一開始載入
    {
        userLabel.Text = Session["user"].ToString();
        placeLabel.Text = Session["place"].ToString();
        String youtubeId = Session["youtubeId"].ToString();
        youtubeHiddenField.Value = youtubeId;

        priceLabel.Text = string.Format("{0:N0}", (Convert.ToInt32(Session["price"])));
        totalLabel.Text = Session["total"].ToString();
        daysLabel.Text = Session["days"].ToString();
        tripDateLabel.Text = Session["tripDate"].ToString();
    }
}