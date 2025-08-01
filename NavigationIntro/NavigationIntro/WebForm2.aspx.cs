using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NavigationIntro
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            username.Text = "Username : " +  Session["username"].ToString();
            pass.Text = "Password : " + Session["password"].ToString();
        }
        protected void back(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
    }
}