using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _05_MidTerm_052_Test_II__0412_22_movieGrade2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            movieRadioButtonList.SelectedIndex = 0;
            DropDownList2.SelectedIndex = 0;
            FormView1.PageIndex = 0;
        }
    }
    protected void movieRadioButtonList_SelectedIndexChanged(object sender, EventArgs e)
    {
        FormView1.PageIndex = movieRadioButtonList.SelectedIndex;
    }
    protected void voteButton_Click(object sender, EventArgs e)
    {
        Session["grade"] = DropDownList2.SelectedValue;
        Session["movieId"] = movieRadioButtonList.SelectedValue;
        SqlDataSource2.Insert();
        Response.Redirect("23_gradeGrid1");
    }

}