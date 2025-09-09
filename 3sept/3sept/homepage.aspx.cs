using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3sept
{
    public partial class homepage : System.Web.UI.Page
    {

        private List<Tuple<string, string, string, string, string, string>> feedbacks
        {
            get
            {
                if (ViewState["feedbacks"] ==  null) 
                    ViewState["feedbacks"] = new List<Tuple<string, string, string, string, string, string>>();
                 return (List<Tuple<string, string, string, string, string, string>>)ViewState["feedbacks"];
            }
            set
            {
                ViewState["feedbacks"] = value;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnClick(object sender, EventArgs e)
        {
            var feedbackTuple = Tuple.Create(name.Text,email.Text,rating.Text,course.Text,subject.Text,feedback.Text);
            feedbacks.Add(feedbackTuple);

            
            foreach(var p in feedbacks)
            {
                if (int.Parse(p.Item3) > 3)
                {
                    Result.Text += "<br/>Name : " + p.Item1 + "email : " + p.Item2 + "rating : " + p.Item3 + "course : " + p.Item4
                        + "subject : " + p.Item5 + "feedback : " + p.Item6; 
                }
            }

        }
        
        
    }
}