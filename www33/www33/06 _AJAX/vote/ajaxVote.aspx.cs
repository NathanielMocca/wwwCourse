using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _06__AJAX_vote_ajaxVote : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            RadioButtonList1.SelectedIndex = 0;
            RadioButtonList2.SelectedIndex = 0;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource3.Insert();
        DataList1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlDataSource6.Insert();
        DataList2.DataBind();
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        FormView1.PageIndex = RadioButtonList1.SelectedIndex;
        Session["seasonName"] = RadioButtonList1.SelectedItem.Text;
    }
    protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        FormView2.PageIndex = RadioButtonList2.SelectedIndex;
    }
    
    protected void FormView2_DataBound(object sender, EventArgs e)
    {
        HiddenField youtube = (HiddenField)FormView2.FindControl("youtubeHiddenField");
        youtubeIDHiddenField.Value = youtube.Value;
    }
    protected void UpdatePanel2_Load(object sender, EventArgs e)
    {

    }
}