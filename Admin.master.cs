using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Role"].ToString() == "Admin")
            {
                Menu1.Visible = true;
            }
            else
            {
                Menu1.Visible = false;
            }
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
