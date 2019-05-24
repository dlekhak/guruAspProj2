using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            //if (Session["isLogin"] != null)
            //{
            //    if ((bool)Session["isLogin"])
            //    {
            //        Label1.Visible = false;
            //        Label2.Visible = true;
            //        LinkButton1.Visible = true;
            //        Label2.Text = "Welcome[( " + Session["username"].ToString() + " )]";
            //    }
            //    else
            //    {
            //        Label1.Visible = true;
            //        Label2.Visible = false;
            //        LinkButton1.Visible = false;
            //    }
            //}
            //else
            //    Response.Redirect("~/Login.aspx");

        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["isLogin"] = false;
        Session["username"] = "";
        Session.Abandon();
        Response.Redirect("~/Login.aspx");
    }
}
