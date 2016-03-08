using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _03_ASP_01_simple_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)//一開始載入
    {
        userLabel.Text = Session["user"].ToString();
        placeLabel.Text = Session["place"].ToString();
        string videoURL = String.Format("../../Video/{0}.wmv", Session["video"].ToString());
        tripMediaPlayer.Attributes["src"] = videoURL;
    }
}