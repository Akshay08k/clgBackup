using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public class Student
        {
            public string Name { get; set; }
            public int Age {  get; set; }
        }

        List<Student> stud_list = new List<Student>
        {
            new Student {Name= "A",Age=18},
            new Student {Name= "B",Age=8},
            new Student {Name= "C",Age=20},
        };
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnClick(object sender, EventArgs e)
        {
            foreach (Student student in stud_list)
            {
                result.Text += "Name :" + student.Name;

                result.Text += "<br/>Age :" + student.Age;
                result.Text += "<br/>--------------------------------<br/>";


            }
        }
        }
}