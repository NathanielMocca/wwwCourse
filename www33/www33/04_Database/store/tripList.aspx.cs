﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _04_Database_store_tripList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        userLabel.Text = Session["username"].ToString();
    }
}