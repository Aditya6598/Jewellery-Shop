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

public partial class LoginPage : System.Web.UI.Page
{
    clsFunctions lobj = new clsFunctions();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string lstrUserName = TextBox1.Text.ToString();
        string lstrPassWord = TextBox2.Text.ToString();
        string lstrres = "";

        if (lobj.AuthenticateUser(lstrUserName, lstrPassWord, out lstrres) == true)
        {
            if (lstrres == "0")
            {
                Session["UserName"] = TextBox1.Text;
                Response.Redirect("HomeafterLogin.aspx", true);
            }
            else
            {
                Label1.Text = "Please enter valid user name and password";
            }
        }
        else
        {
            Label1.Text = "Internal server error.";
        }
    }
}
