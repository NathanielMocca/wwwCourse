﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _04_Database_admin_hotTours : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void hotToursDataList_ItemCommand(object source, DataListCommandEventArgs e)
    {
        placeFormView.PageIndex = e.Item.ItemIndex; //依據DataList選擇第幾頁變更FormView頁面
    }
}