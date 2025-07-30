using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FontFormatter
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void doIt(object sender, EventArgs e)
        {
            if (upper.Checked)
            {
                result.Text = (inputString.Text).ToUpper();
            }else if (lower.Checked)
            {
                result.Text = (inputString.Text).ToLower();
            }else if (left5.Checked)
            {
                result.Text = (inputString.Text).Substring(0,5);
            }else if (right5.Checked)
            {
                result.Text = (inputString.Text).Substring((inputString.Text).Length - 5);
            }
        }
    }
}