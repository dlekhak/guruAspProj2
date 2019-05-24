using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DetailsView1.DefaultMode = DetailsViewMode.Insert;
        }
    }

    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        lblError.Text = "";
        if (e.Exception != null)
        {
            lblError.Text = "A database error has occured...";
            e.ExceptionHandled = true;
        }
        else
        {
            if (e.AffectedRows == 0)
            {
                lblError.Text = "Someone might have already deleted the item...";
            }
        }
        GridView1.DataBind();
    }

    protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        lblError.Text = "";
        if (e.Exception != null)
        {
            lblError.Text = "A database error has occured...";
            e.ExceptionHandled = true;
        }
        else
        {
            if (e.AffectedRows == 0)
            {
                lblError.Text = "Someone might have already updated the item...";
            }
        }
        GridView1.DataBind();
    }

    protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        lblError.Text = "";
        if (e.Exception != null)
        {
            lblError.Text = "A database error has occured...";
            e.ExceptionHandled = true;
        }
        else
        {
            if (e.AffectedRows == 0)
            {
                lblError.Text = "Someone might have already updated the item...";
            }
        }
        GridView1.DataBind();
    }
}