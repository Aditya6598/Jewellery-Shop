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

public partial class RegUserThanx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string lstrResult = "";
        lstrResult = Request.QueryString["result"];

        Label1.Text = ConfigurationManager.AppSettings[lstrResult];
    }
}
