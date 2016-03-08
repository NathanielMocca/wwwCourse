using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _03_ASP_04_image_imageTrip : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) {
            placeRadioButtonList.SelectedIndex = 0;
            string photoID = "Tokyo";
            string youtubeID = "1i1bZvbN0FQ";

            photoImage.ImageUrl = "../../Image/" + photoID + ".jpg";
            youtubeHiddenField.Value = youtubeID;
        }
    }
    protected void goButton_Click(object sender, EventArgs e)
    {
        Session["userName"] = userTextBox.Text;
        Session["youtubeId"] = youtubeHiddenField.Value;
        Session["place"] = placeRadioButtonList.SelectedItem.Text;

        Response.Redirect("imageOrder.aspx");
    }

    protected void placeRadioButtonList_SelectedIndexChanged(object sender, EventArgs e)
    {
        string photoID = "";
        string youtubeID = "";
        switch (placeRadioButtonList.SelectedValue){
            case "1":
                photoID = "Tokyo";
                youtubeID = "1i1bZvbN0FQ";
                break;
            case "2":
                photoID = "NewYork";
                youtubeID = "WHVPk1oS4ME";
                break;
            case "3":
                photoID = "London";
                youtubeID = "TZM3bMkHrI0";
                break;
            case "4":
                photoID = "Egypt";
                youtubeID = "VVI5OvldHkA";
                break;
        }
        photoImage.ImageUrl = "../../Image/" + photoID + ".jpg";
        youtubeHiddenField.Value = youtubeID;
    }
}