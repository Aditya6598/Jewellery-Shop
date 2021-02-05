using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class RegisterUser : System.Web.UI.Page
{
    clsFunctions lobj = new clsFunctions();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string lstrUserDtls = "";
        string[] lstrarrUsrDtls;
        string lstrRes = "";
        lstrUserDtls = txtUserName.Text.ToString() + "#" + txtPassWord.Text.ToString() + "#" + txtAdress1.Text.ToString() + "#" + txtAdress2.Text.ToString() + "#" +  txtFirstName.Text.ToString() + "#" + txtLastName.Text.ToString() + "#" + TxtCity.Text.ToString() + "#" + txtState.Text.ToString() + "#" + txtCountry.Text.ToString() + "#" + txtEmail.Text.ToString() + "#" + txtWebsite.Text.ToString() + "#" + txtPhNo.Text.ToString();
        lstrarrUsrDtls = lstrUserDtls.Split("#".ToCharArray());

        if (lobj.InsertUserDetails(lstrarrUsrDtls, out lstrRes) == true)
        {
            Response.Redirect("RegUserThanx.aspx?result=S", true);
        }
        else
        {
            if (lstrRes == "10")
            {
                Response.Redirect("RegUserThanx.aspx?result=U", true);
            }
            else
            {
                Response.Redirect("RegUserThanx.aspx?result=E", true);
            }
        }
       

    }
}
