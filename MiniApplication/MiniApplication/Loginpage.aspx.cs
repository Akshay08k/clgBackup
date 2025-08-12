using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiniApplication
{
    public partial class Loginpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void redirectTodash(object sender,EventArgs e)
        {
            Session["username"] = name.Text;
            Response.Redirect("Dashboard.aspx");
        }
    }
}