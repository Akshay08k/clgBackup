using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prg1
{
    public partial class p1 : System.Web.UI.Page
    {

        private List<Tuple<string, string, string>> people;
        {

            get
            {
                if(ViewState["people"] == null)
                {
                    ViewState["people"] = new List<Tuple<string, string, string>>();
                }
                return (List<Tuple<string, string, string>>)ViewState["people"];
            }

            set
            {
                ViewState["people"] = value;
            }
        }
        protected void Page_Load(object sender, EventArgs e) 
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            string age = TextBox2.Text;
            string email = TextBox3.Text;
            var person = Tuple.Create(name, age, email);
            people.Add(person);
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";

            Display();


        }
        public void Display()
        {
            String Result = "All Student data";
            foreach (var p in people)
            {
                Result += "Name" + p.Item1 + "Age" + p.Item2 + "Email" + p.Item3;
            }
            Label4.Text = Result;
        }
    }
}