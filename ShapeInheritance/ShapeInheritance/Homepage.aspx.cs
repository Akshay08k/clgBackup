using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShapeInheritance
{
    public partial class Homepage : System.Web.UI.Page
    {
        public class Shape
        {
            public String name;
            
            public Shape()
            {
                this.name = "Circle";
            }
            public Shape(String name)
            {
                this.name = name;
            }
            public String display()
            {
                return name;
            }
        }
        public class Rectangle : Shape
        {
            public int Length, breadth;

            public Rectangle()
            {
                this.Length = 10;
                this.breadth = 10;
            }

            public Rectangle(int length, int breadth)
            {
                this.Length = length;
                this.breadth = breadth;
            }
            
            public double PeriMeter(int length)
            {
                2 * length;
            }
        }
        protected void Page_Lo ad(object sender, EventArgs e)
        {

        }
    }
}