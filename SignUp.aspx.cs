using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;


public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            DetailsView1.DefaultMode = DetailsViewMode.Insert;
        }
    }


    public static byte[] GetHash(string inputString)
    {
        HashAlgorithm algorithm = SHA256.Create();  //or use SHA256.Create();
        return algorithm.ComputeHash(System.Text.Encoding.UTF8.GetBytes(inputString));
    }

    /*public static string GetHashString(string inputString)
    {
        StringBuilder sb = new StringBuilder();
        foreach (byte b in GetHash(inputString))
            sb.Append(b.ToString("X2"));

        return sb.ToString();
    }
    */

    protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
    {
        //string password = e.Values[;
        try
        {
            e.Values["Password"] = BitConverter.ToString(GetHash(e.Values["Password"].ToString()));
        }
        catch (Exception ex)
        {
            lblError.Text = ex.ToString();
        }


    }

    protected void DetailsView1_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
    {

    }

    protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        if (e.Exception != null)
        {
            lblError.Text = e.Exception.Message;
            e.ExceptionHandled = true;
        }
        else
        {
            lblError.Text = "You have signed up successfully";
        }
    }
}