using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

        }
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {

    }
    public static byte[] GetHash(string inputString)
    {
        HashAlgorithm algorithm = SHA256.Create();  //or use SHA256.Create();
        return algorithm.ComputeHash(System.Text.Encoding.UTF8.GetBytes(inputString));
    }
    protected void btnLogin_Click1(object sender, EventArgs e)
    {
        /* if (txtUserName.Text == txtUserName.Text && txtPassword.Text == txtPassword.Text)
         {
             Session["isLogin"] = true;
             Session["username"] = txtUserName.Text;
             Response.Redirect("~/Default.aspx");
         }
         */
        txtPassword.Text = BitConverter.ToString(GetHash(txtPassword.Text));
        DataView dView = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        if (dView.Count > 0)
        {
            string role = (string)dView[0]["Role_Name"];
            Session["Role"] = role;
            Session["id"] = dView[0]["id"].ToString();
            int index = dView[0]["Email"].ToString().IndexOf('@', 0);
            Session["Email"] = dView[0]["Email"].ToString().Substring(0, index);
            if (role == "Admin")
                Response.Redirect("~/admin.aspx");
            else
                Response.Redirect("~/Home.aspx");

        }
        else
        {
            errorLabel.Text = "User not found!!";
        }

    }


    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {

    }

    protected void chkLoginRemember_CheckedChanged(object sender, EventArgs e)
    {

    }
}