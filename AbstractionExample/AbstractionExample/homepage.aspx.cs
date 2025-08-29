using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AbstractionExample
{
    public partial class homepage : System.Web.UI.Page
    {
        public abstract class car
        {
            public car()
            {
                
            }
            public abstract string Sound();
            public string display()
            {
                return "Display method of Class car";
            }

        }
        public class tata : car
        {
            public override string Sound()
            {
                return "<br/>Sound TATA";
            }

            public string Show()
            {
                return "<br/>Display method of TATA car";
            }
        }
        public class toyota : car
        {
            public override string Sound()
            {
                return "<br/>Sound TOYOTA";

            }
            public string Show()
            {
                return "<br/>Display method of ToYoTa car";
            }
        }

        public abstract class A
        {
            public int x;
            public int y;

            public A()
            {

            }
            public A(int x, int y)
            {
                this.x = x;

            }
            public abstract string show();
        }

        public class B : A
        {
            int z;
            public B() { }

            public B(int x, int y,int z) : base(x, y) {
                this.z = z;
            }

            public override string show()
            {
                return x.ToString() + y.ToString();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnClick(object sender,EventArgs e)
        {
            tata t1 = new tata();
            Result.Text += t1.Sound();
            Result.Text += t1.Show();
            toyota t2 = new toyota();
            Result.Text += t2.Sound();
            Result.Text += t2.Show();
        }
    }
}