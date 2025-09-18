using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        [Serializable]
        public class student
        {
            public String Name { get; set; }
            public int Age { get; set; }

            public student()
            {

            }

            public student(String Name, int Age)
            {
                this.Name = Name;
                this.Age = Age;

            }


        }
        private List<student> studList {
            get
            {
                if (ViewState["studList"] == null)
                    ViewState["studList"] = new List<student>();
                return (List<student>)ViewState["studList"];
            }
        
        }


        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Add(object sender,EventArgs e)
        {
            studList.Add(new student { Name = NameInput.Text, Age = int.Parse(AgeInput.Text) });
            NameInput.Text = "";
            AgeInput.Text = "";
            result.Text = "Student Added Successfully";
        }
        protected void Display(object sender, EventArgs e)
        {
            var v1 = studList.Select(x => x.Name);
            result.Text += "Data : " + string.Join(", ",v1);
        }

        protected void CustomStart(object sender, EventArgs e)
        {
            var v2 = studList
                .Where(s => s.Name.ToLower().StartsWith("s"))
                .Select(s => s.Name);

            result.Text += "<br/>Students Name Starts With (S) : " + string.Join(", ", v2);
        }

        protected void Aggregate(object sender,EventArgs e) {
            int cnt = studList.Count();
            int sum1 = studList.Sum(s => s.Age);
            double avg1 = studList.Average(s => s.Age);
            int max1 = studList.Max(s => s.Age);
            int min1 = studList.Min(s => s.Age);

            result.Text += "<br/> Count : " + cnt + "<br/>Sum : " + sum1 + "<br/>avg : " + avg1 + "<br/>Max : " + max1 + "<br/>Min : " + min1;
        }

        protected void FirstStudent(object sender, EventArgs e)
        {
            
            firstLbl.Text = studList.First().Name;
        }
        protected void LastStudent(object sender, EventArgs e)
        {
            lastLbl.Text = studList.Last().Name;
        }
    }
}