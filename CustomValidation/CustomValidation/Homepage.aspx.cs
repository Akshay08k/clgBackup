using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CustomValidation
{
    public partial class Homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
        protected void customValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
           if(args.Value == "admin")
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;   
            }
        }
    }
}