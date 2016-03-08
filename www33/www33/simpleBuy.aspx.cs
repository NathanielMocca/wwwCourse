using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _05_mid_Exam_simpleBuy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            RadioButtonList1.SelectedIndex = 0;
            DropDownList1.SelectedIndex = 0;
            priceFormView.PageIndex = 0;
            Label priceLabel = (Label)priceFormView.FindControl("priceLabel");
            totalLabel.Text =string.Format("{0:N0}" ,Convert.ToInt32(priceLabel.Text) * Convert.ToInt32(RadioButtonList1.SelectedValue));
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int total = Convert.ToInt32(totalLabel.Text);
        Session["total"] = total;
        buyerSqlDataSource.Insert();
        Response.Redirect("saleGrid");
    }
    protected void priceLabel_DataBinding(object sender, EventArgs e)
    {
        Label priceLabel = (Label)priceFormView.FindControl("priceLabel");
        totalLabel.Text = string.Format("{0:N0}", Convert.ToInt32(priceLabel.Text) * Convert.ToInt32(RadioButtonList1.SelectedValue));
    }
    protected void RadioButtonList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Label priceLabel = (Label)priceFormView.FindControl("priceLabel");
        totalLabel.Text = string.Format("{0:N0}", Convert.ToInt32(priceLabel.Text) * Convert.ToInt32(RadioButtonList1.SelectedValue));
    }
    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Label priceLabel = (Label)priceFormView.FindControl("priceLabel");
        totalLabel.Text = string.Format("{0:N0}", Convert.ToInt32(priceLabel.Text) * Convert.ToInt32(RadioButtonList1.SelectedValue));
        priceFormView.PageIndex = DropDownList1.SelectedIndex;
    }
}