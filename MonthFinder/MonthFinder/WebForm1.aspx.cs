using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MonthFinder
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private int input;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void reset(object sender, EventArgs e)
        {
            inputNumber.Text = "";
            result.Text = "";
        }
        protected void getMonth(object sender,EventArgs e)
        {
            if (inputNumber.Text == String.Empty) {
                result.Text = "It Cant be Empty";
            }
            else
            {
                input = int.Parse(inputNumber.Text);
            }
            if (input > 12 || input < 0)
            {
                result.Text = "Input Between 0 and 12";
            }
            else
            {
                switch (input)
                {
                    case 1:
                        result.Text = "January";
                        break;
                    case 2:
                        result.Text = "February";
                        break;
                    case 3:
                        result.Text = "March";
                        break;
                    case 4:
                        result.Text = "April";
                        break;
                    case 5:
                        result.Text = "May";
                        break;
                    case 6:
                        result.Text = "June";
                        break;
                    case 7:
                        result.Text = "July";
                        break;
                    case 8:
                        result.Text = "August";
                        break;
                    case 9:
                        result.Text = "September";
                        break;
                    case 10:
                        result.Text = "Octomber";
                        break;
                    case 11:
                        result.Text = "November";
                        break;
                    case 12:
                        result.Text = "December";
                        break;
                }
            }
        }
    }
}