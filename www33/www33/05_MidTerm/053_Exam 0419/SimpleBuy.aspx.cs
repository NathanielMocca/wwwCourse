using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _05_MidTerm_053_Exam_0419_SimpleBuy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            productsDropDownList.SelectedIndex = 0;
            priceFormView.PageIndex = 0;
            Label priceLabel = (Label)priceFormView.FindControl("priceLabel");
            totalLabel.Text = String.Format("{0:N0}", Convert.ToInt32(priceLabel.Text) * Convert.ToInt32(NumberRadioButtonList.SelectedValue));
        }
    }
    protected void priceFormView_DataBound(object sender, EventArgs e)
    {
        Label priceLabel = (Label)priceFormView.FindControl("priceLabel");
    }
    protected void productsDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {
        priceFormView.PageIndex = productsDropDownList.SelectedIndex;
        Label priceLabel = (Label)priceFormView.FindControl("priceLabel");
        totalLabel.Text = String.Format("{0:N0}", Convert.ToInt32(priceLabel.Text) * Convert.ToInt32(NumberRadioButtonList.SelectedValue));

    }

    protected void NumberRadioButtonList_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label priceLabel = (Label)priceFormView.FindControl("priceLabel");
        totalLabel.Text = String.Format("{0:N0}", Convert.ToInt32(priceLabel.Text) * Convert.ToInt32(NumberRadioButtonList.SelectedValue));
    }
    protected void buyButton_Click(object sender, EventArgs e)
    {
        Session["total"] = totalLabel.Text;
        salesSqlDataSource.Insert();
        Response.Redirect("salesGrid.aspx");
    }
}