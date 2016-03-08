using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _03_ASP_04_image_imageOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        userLabel.Text = Session["userName"].ToString();
        placeLabel.Text = Session["place"].ToString();
        string youtubeId = Session["youtubeId"].ToString();
        youtubeHiddenField.Value = youtubeId;
    }
}