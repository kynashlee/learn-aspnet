﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WorldCupOnTheGo
{
    public partial class Default : System.Web.UI.Page
    {
        //read db instance and set as WCOTG_DB
        static DatabaseEntities WCOTG_DB = new DatabaseEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["email"] == null)
                {
                    lblDisplayEmail.Text = "";
                    btnGoToContentList.Visible = false;
                    btnGoToMatchList.Visible = false;
                    btnGoToTeamList.Visible = false;
                }
                else
                {
                    lblDisplayEmail.Text = "Hello " + Session["email"];
                    btnGoToContentList.Visible = true;
                    btnGoToMatchList.Visible = true;
                    btnGoToTeamList.Visible = true;
                }
                lvContent.DataSource = WCOTG_DB.tblPosts.ToList();
                lvContent.DataBind();
            }
                
        }

        protected void btnGoToContentList_Click(object sender, EventArgs e)
        {
            Response.Redirect("ContentList.aspx");
        }

        protected void btnGoToContentAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("ContentAdd.aspx");
        }

        protected void btnGoToTeamList_Click(object sender, EventArgs e)
        {
            Response.Redirect("TeamList.aspx");
        }

        protected void btnGoToMatchList_Click(object sender, EventArgs e)
        {
            Response.Redirect("MatchList.aspx");
        }
        protected void ManageContent_Click(object sender, EventArgs e)
        {
            LinkButton lnkbtn = (LinkButton)sender;
            switch (lnkbtn.CommandName)
            {
                case "EditLink":
                    Response.Redirect("ContentEdit.aspx?id=" + lnkbtn.CommandArgument.ToString());
                    break;
                case "ViewLink":
                    Response.Redirect("ContentView.aspx?id=" + lnkbtn.CommandArgument.ToString());
                    break;
            }
        }
    }
}