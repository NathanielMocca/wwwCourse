﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _05_Midterm_053_Exam_I__0419_24_bestSales : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            salseRadioButtonList.SelectedIndex = 0;

        }
    }
    protected void salseRadioButtonList_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["categoryId"] = salseRadioButtonList.SelectedValue;
    }
}