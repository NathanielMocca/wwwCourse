using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _05_MidTerm_053_Exam_0419_ImageBuy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            productDropDownList.SelectedIndex = 0;
            productFormView.PageIndex = 0;
            Label priceLabel = (Label)productFormView.FindControl("priceLabel");
            totalLabel.Text = String.Format("{0:N0}", Convert.ToInt32(priceLabel.Text) * Convert.ToInt32(NumberRadioButtonList.SelectedValue));
        }
    }

    protected void productFormView_DataBound(object sender, EventArgs e)
    {
        Label priceLabel = (Label)productFormView.FindControl("priceLabel");
    }


    protected void NumberRadioButtonList_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label priceLabel = (Label)productFormView.FindControl("priceLabel");
        totalLabel.Text = String.Format("{0:N0}", Convert.ToInt32(priceLabel.Text) * Convert.ToInt32(NumberRadioButtonList.SelectedValue));
    }

    protected void productDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {
        productFormView.PageIndex = productDropDownList.SelectedIndex;
        Label priceLabel = (Label)productFormView.FindControl("priceLabel");
        totalLabel.Text = String.Format("{0:N0}", Convert.ToInt32(priceLabel.Text) * Convert.ToInt32(NumberRadioButtonList.SelectedValue));
    }
    protected void buyButton_Click(object sender, EventArgs e)
    {
        Session["total"] = totalLabel.Text;
        salesSqlDataSource.Insert();

        Response.Redirect("salesGrid.aspx");
    }
}