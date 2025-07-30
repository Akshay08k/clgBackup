using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


//    .+  for expecting group of character
//@ expecting for @
//\. for groupofcharacter and than "."

//akshay@gmail.com
//
//.+@.+\..+

//www.google.com

//for website.+\..+\..+
namespace ValidationResultForm
{
    public partial class Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
        protected void calculate(object sender, EventArgs e)
        {
            //Pe
            //int total = SSW.Text
            //Result.Text = ""

        }
    }
}