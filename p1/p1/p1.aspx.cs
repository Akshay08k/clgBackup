using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace p1
{
    public partial class p1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String name = TextBox1.Text;
            String Age = TextBox2.Text;
            String Email = TextBox3.Text;

            var person = Tuple.Create(name, Age, Email);
            Label4.Text = "Name : " + person.Item1 + "<br/>"+
                          "Age : " + person.Item2 + "<br/>"+
                          "Email : " + person.Item3 + "<br/>";
        }
    }
}