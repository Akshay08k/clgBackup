using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NavigationIntro
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }
        protected void linkBtn1(object sender, EventArgs e)
        {
            Session["username"] = name.Text;
            Session["password"] = pass.Text;
            Response.Redirect("WebForm2.aspx");
        }
    }
}