using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _05_Midterm_053_Exam_I__0419_12_imageBuy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            productDropDownList1.SelectedIndex = 0;

            priceRadioButtonList.SelectedIndex = 0;
            productFormView.PageIndex = 0;
            HiddenField priceHiddenFieId = (HiddenField)productFormView.FindControl("priceHiddenField");
            totalLabel.Text = string.Format("{0:N0}", (Convert.ToInt32(priceRadioButtonList.SelectedValue)) * (Convert.ToInt32(priceHiddenFieId.Value)));

        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        productFormView.PageIndex = productDropDownList1.SelectedIndex;
        HiddenField priceHiddenFieId = (HiddenField)productFormView.FindControl("priceHiddenField");
        totalLabel.Text = string.Format("{0:N0}", (Convert.ToInt32(priceRadioButtonList.SelectedValue)) * (Convert.ToInt32(priceHiddenFieId.Value)));
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        HiddenField priceHiddenFieId = (HiddenField)productFormView.FindControl("priceHiddenField");
        totalLabel.Text = string.Format("{0:N0}", (Convert.ToInt32(priceRadioButtonList.SelectedValue)) * (Convert.ToInt32(priceHiddenFieId.Value)));
    }
    protected void productFormView_DataBound(object sender, EventArgs e)
    {
        HiddenField priceHiddenFieId = (HiddenField)productFormView.FindControl("priceHiddenField");
        totalLabel.Text = string.Format("{0:N0}", (Convert.ToInt32(priceRadioButtonList.SelectedValue)) * (Convert.ToInt32(priceHiddenFieId.Value)));
    }
    protected void goButton_Click(object sender, EventArgs e)
    {
        Session["productId"] = productDropDownList1.SelectedValue;
        Session["amount"] = priceRadioButtonList.SelectedValue;
        HiddenField priceHiddenFieId = (HiddenField)productFormView.FindControl("priceHiddenField");
        Session["total"] = (Convert.ToInt32(priceRadioButtonList.SelectedValue)) * (Convert.ToInt32(priceHiddenFieId.Value));

        salseSqlDataSource.Insert();
        Response.Redirect("13_salesGrid.aspx");
    }
}