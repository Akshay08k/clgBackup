using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClassProject
{
    public partial class homepage : System.Web.UI.Page
    {
        public class car
        {
            public string name;
            public string model;
            public string year;
            public double price;

            public car(string name,string model,string year,double price)
            {
                this.name = name;
                this.model = model;
                this.year = year;
                this.price = price;
            }

            public car()
            {
                this.name = "Lamborghini";
                this.model = "Hurracane";
                this.year = "2003";
                this.price = 20000000;
            }
            public string display()
            {
                return "Name : " + this.name + "<br/>model : " + this.model + "<br/>year : " + this.year + "<br/>price :" + this.price;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loadDetails(object sender, EventArgs e)
        {
            car c1 = new car(Name.Text,model.Text,year.Text,double.Parse(price.Text));
            car c2 = new car();
            result.Text = c1.display();
        }

        protected void LoadDetailsDBclick(object sender, EventArgs e)
        {
            car c2 = new car();
            result.Text = c2.display();
        }
    }
}