using System;
using System.Collections.Generic;
using System.EnterpriseServices;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Customer
{
    public partial class homepage : System.Web.UI.Page
    {

        static List<Bank> customers = new List<Bank>();
        public class Bank
        {
            public String id, CustomerName, Acctype;
            public Double balance;
            public Bank(String id,String CustomerName,String Acctype,Double balance)
            {
                this.id = id;
                this.CustomerName = CustomerName;
                this.Acctype = Acctype;
                this.balance = balance;
            }
            public Bank()
            {
                this.id = "idd1";
                this.CustomerName = "Name";
                this.Acctype = "Saving";
                this.balance = 0;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void AddCustomer(object sender, EventArgs e)
        {
            Bank b1 = new Bank(accID.Text, CName.Text, AccType.Text, Double.Parse(Balance.Text));
            customers.Add(b1);
            NotifyText.Text = "<br/>Customer Added<br/>";
        }
        protected void Above5Click(object sender, EventArgs e)
        {
            NotifyText.Text = " ";
            String text = " ";

            foreach (var item in customers)
            {
                if (item.balance > 5000.0)
                {
                    text += ("id: " + item.id +
                                    " | Name: " + item.CustomerName +
                                    " | Account type: " + item.Acctype +
                                    " | Balance: ₹" + item.balance);
                }
            }

            NotifyText.Text = customers.Count.ToString();
            Result.Text = text.ToString();
        }

    }
}
