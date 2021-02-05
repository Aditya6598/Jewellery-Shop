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
using System.IO;
using System.Net;

public partial class PostSearch : System.Web.UI.Page
{
    clsFunctions lobj = new clsFunctions();
    protected void Page_Load(object sender, EventArgs e)
    {
        BindData();
    }
   
    public void BindData()
    {
        String[] lstrarrDtls;
        string lstrDtls = "";
        lstrDtls = clsFunctions.gsrtSearchDtls;
        lstrarrDtls = lstrDtls.Split("#".ToCharArray());
        DataSet lds;
        try
        {
            lds = lobj.SearchComponent(lstrarrDtls);

            if (lds == null)
            {
                Label1.Text = "Internal Server Error.";
            }
            else if (lds.Tables[0].Rows.Count == 0)
            {
                Label1.Text = "No Components in the DB with the Speccified search Category";

            }
            else
            {
                Label1.Text = "";
                GridView1.DataSource = lds;
                GridView1.DataBind();
            }

        }
        catch (Exception ex)
        {


        }
    }

    public void DownLoadCompoNent(object sender, System.Web.UI.WebControls.CommandEventArgs e)
    {
       string path = e.CommandArgument.ToString();
       int index = 0;
       string LocalPath = ConfigurationManager.AppSettings["LocalFilePath"];
       index = path.LastIndexOf(@"\");
       string Filename = path.Substring(index + 1 , path.Length - index - 1);
       Response.ContentType = "application/txt";
       Response.AddHeader("Content-disposition", "attachment; filename=" + Filename);
       FileStream fs = new FileStream(path, FileMode.Open);
       long filesize = fs.Length;
       byte[] buffer = new byte[(int)filesize];
       fs.Read(buffer, 0, (int)filesize);
       fs.Close();
       Response.BinaryWrite(buffer);
      
    }
}
