using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tryParsefunc
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void doIt(object sender,EventArgs e)
        {
            String inputVal = inputNumber.Text;
            int number = 0;
            if (int.TryParse(inputVal, out number)) {
                Result.Text = "You Entered Number : " + number;
            }
            else
            {
                Result.Text = "It is String";
            }
        }

    }
}