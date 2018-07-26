using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using AjaxControlToolkit;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            AccordionPane ap1 = new AccordionPane();
            ap1.HeaderContainer.Controls.Add(new LiteralControl("Codigo"));
            ap1.ContentContainer.Controls.Add(new LiteralControl("Para registrar codigos"));

            AccordionPane ap2 = new AccordionPane();
            ap2.HeaderContainer.Controls.Add(new LiteralControl("Telefono"));
            ap2.ContentContainer.Controls.Add(new LiteralControl("Para registrar telefonos"));

            Accordion1.Panes.Add(ap1);
            Accordion1.Panes.Add(ap2);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "Esta muerto";
    }
   
    protected void Button3_Click(object sender, EventArgs e)
    {
        Label1.Text = "Estas loco";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}