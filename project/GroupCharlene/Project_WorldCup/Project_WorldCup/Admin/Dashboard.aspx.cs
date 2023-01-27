﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_WorldCup.Admin
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("frmlogin.aspx");
            }
            else if (Session["UserRole"].Equals("user"))
            {
                Response.Redirect("../User/frmnews.aspx");
            }
        }
    }
}