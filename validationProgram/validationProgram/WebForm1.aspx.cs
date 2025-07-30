using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace validationProgram
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
        protected void printDetails(object sender , EventArgs e)
        {
            result.Text = "<br/>Name = " + name.Text
                            + "<br/>Age = " + Age.Text
                            + "<br/>email = " + Email.Text
                            + "<br/>pass = " + Password.Text
                            + "<br/>confirm pass = " + confpassword.Text;

        }
    }

}