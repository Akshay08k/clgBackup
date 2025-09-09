using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ljinstitute
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void redirect(object sender, EventArgs e)
        {
            Session["enroll"] = enroll.Text;
            Session["name"] = name.Text;
            Session["email"] = email.Text;
            Session["phone"] = phone.Text;

            Response.Redirect("WebForm2.aspx");
        }
    }
}