using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _05_MidTerm_052_Test_II__0412_31_movieGrade3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            RadioButtonList1.SelectedIndex = 0;
            FormView1.PageIndex = 0;
            DateTime dt = DateTime.Now;
            dateLabel.Text = dt.ToString();
            //daysTextBox.Text = "5";
            //tripCalendar.SelectedDate = DateTime.Now;
        }
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        FormView1.PageIndex = RadioButtonList1.SelectedIndex;
        DateTime dt = DateTime.Now;
        dateLabel.Text = dt.ToString();
    }

    protected void voteButton_Click(object sender, EventArgs e)
    {
        Session["grade"] = DropDownList1.SelectedValue;
        Session["movieId"] = RadioButtonList1.SelectedValue;
        DateTime dt = DateTime.Now;
        Session["time"] = dt;
        SqlDataSource2.Insert();
        Response.Redirect("32_gradeGrid2");
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DateTime dt = DateTime.Now;
        dateLabel.Text = dt.ToString();
    }
}