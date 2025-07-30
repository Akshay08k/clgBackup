using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CheckBoxLabel
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void buttonClick(object sender, EventArgs e)
        {
            String result = "Selection : ";
            
            if (YES.Checked)
            {
                result += "YES ";
            }
            if (NO.Checked)
            {
                result += "NO ";
            }
            if (YES.Checked == false && NO.Checked == false)
            {
                result = "Select Any One Options";
            }
            resultLbl.Text = result;
        }
    }
}
