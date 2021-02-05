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

public partial class SearchCompDtls : System.Web.UI.Page
{
    clsFunctions lobjfnc = new clsFunctions();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("Home.aspx", false);
        }
        //check if the page is loaded for the first time
        DataSet lds;
        if (!IsPostBack)
        {
            lds = lobjfnc.GetInitialData();

            if (lds == null)
            {
                Response.Redirect("InsertCompDtlsThanks.aspx?result=E", false);
            }

            if (lds.Tables[0].Rows.Count == 0)
            {
                Response.Redirect("InsertCompDtlsThanks.aspx?result=C", false);
            }
            else if (lds.Tables[1].Rows.Count == 0)
            {
                Response.Redirect("InsertCompDtlsThanks.aspx?result=L", false);
            }
            else if (lds.Tables[2].Rows.Count == 0)
            {
                Response.Redirect("InsertCompDtlsThanks.aspx?result=O", false);
            }
            /*else if (lds.Tables[3].Rows.Count == 0)
            {
                Response.Redirect("InsertCompDtlsThanks.aspx?result=Dm", false);
            }*/
            DdlCatg.DataSource = lds.Tables[0].DefaultView;
            DdlCatg.DataTextField = lds.Tables[0].Columns[1].ColumnName;
            DdlCatg.DataValueField = lds.Tables[0].Columns[0].ColumnName;
            DdlCatg.DataBind();
            DdlCatg.Items.Insert(0, new ListItem("..select a category..", "0"));

            DdlLanguage.DataSource = lds.Tables[1].DefaultView;
            DdlLanguage.DataTextField = lds.Tables[1].Columns[1].ColumnName;
            DdlLanguage.DataValueField = lds.Tables[1].Columns[0].ColumnName;
            DdlLanguage.DataBind();
            DdlLanguage.Items.Insert(0, new ListItem("..select a Language..", "0"));

            DdlOS.DataSource = lds.Tables[2].DefaultView;
            DdlOS.DataTextField = lds.Tables[2].Columns[1].ColumnName;
            DdlOS.DataValueField = lds.Tables[2].Columns[0].ColumnName;
            DdlOS.DataBind();
            DdlOS.Items.Insert(0, new ListItem("..select a OS..", "0"));

           /* DdlDomain.DataSource = lds.Tables[3].DefaultView;
            DdlDomain.DataTextField = lds.Tables[3].Columns[1].ColumnName;
            DdlDomain.DataValueField = lds.Tables[3].Columns[0].ColumnName;
            DdlDomain.DataBind();
            DdlDomain.Items.Insert(0, new ListItem("..select a Domain..", "0"));*/
        }
    }

    protected void BtnSubmit_Click(object sender, EventArgs e)
    {

        clsFunctions.gsrtSearchDtls = TxtKeyWord.Text.ToString() + "#" + TxtOutPut.Text.ToString() + "#" + TxtInput.Text.ToString() + "#" + DdlCatg.SelectedValue.ToString() + "#" + DdlLanguage.SelectedValue.ToString() + "#" + DdlOS.SelectedValue.ToString() ;


        Response.Redirect("PostSearch.aspx", false);

    }
    
}
