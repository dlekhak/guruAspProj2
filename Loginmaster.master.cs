using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Loginmaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["isLogin"] != null)
            {
               if ((bool)Session["isLogin"])
                    Response.Redirect("~/Home.aspx");
            }
           


        }
    }
}
