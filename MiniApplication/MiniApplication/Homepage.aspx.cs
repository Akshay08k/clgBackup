using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiniApplication
{
    public partial class Homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void navigateLogin(object sender,EventArgs e)
        {
            Response.Redirect("Loginpage.aspx");
        }

        protected void navigateRegi(object sender, EventArgs e)
        {
            Response.Redirect("Registerpage.aspx");
        }

    }
}