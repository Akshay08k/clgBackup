using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DateValidation
{
    public partial class homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnClick(object sender, EventArgs e)
        {
            result.Text = dateText.Text;
        }
    }
}