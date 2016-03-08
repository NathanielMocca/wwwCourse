using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _05_MidTerm_052_Test_II__0412_41_gradeGrid3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FormView1.PageIndex = 0;
        Label movie = (Label)FormView1.FindControl("movieLabel");
        Session["movie"] = movie.Text;
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        DataList1.SelectedIndex = e.Item.ItemIndex;
        FormView1.PageIndex = DataList1.SelectedIndex;
        Label movie = (Label)FormView1.FindControl("movieLabel");
        Session["movie"] = movie.Text;
    }

}