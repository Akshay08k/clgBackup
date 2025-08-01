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
            int SSWMarks = int.Parse(SSW.Text);
            int CNMarks = int.Parse(CN.Text);
            int BISMarks = int.Parse(BIS.Text);
            int SSMarks = int.Parse(SS.Text);
            int ISMarks = int.Parse(IS.Text);

            float total = (SSWMarks + CNMarks + BISMarks + SSMarks + ISMarks);
            float per = total/5;
            String grade = "";
            if (per > 90)
            {
                grade = "A+";
            }else if(per > 80 &&  per < 90)
            {
                grade = "A";
            }else if(per > 70 && per < 80)
            {
                grade = "B";
            }else if(per > 60 && per < 70)
            {
                grade = "B+";
            }else
            {
                grade = "PASS";
            }

            Result.Text =   "<br/><br/>TOTAL =  " + total.ToString() +
                            "<br/>PERCENTAGE = " + per.ToString("F2") + 
                            "<br/>GRADE = " + grade.ToString();
        }

        protected void ResetValues(object sender,EventArgs e)
        {
            validationSum.Visible = false;

            rollno.Text = "";
            Name.Text = "";
            SSW.Text = "";
            CN.Text = "";
            BIS.Text = "";
            SS.Text = "";
            IS.Text = "";
            Result.Text = "";
        }
    }
}