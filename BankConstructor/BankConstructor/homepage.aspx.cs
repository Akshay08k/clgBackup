using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BankConstructor
{
    public partial class homepage : System.Web.UI.Page
    {   public class BankClass
        {
            private string id, name,account_type;
            private double balance;

            public BankClass(string id,string name,string account_type,double balance)
            {
               this.id = id;
               this.name = name;
               this.account_type = account_type;
               this.balance = balance;
            }

            public BankClass()
            {
                this.id = "241245";
                this.name = "ramesh";
                this.account_type = "Saving";
                this.balance = 3456.46;
            }

            public static string showDetails(List<BankClass> sd)
            {
                string str = "";
                foreach (var item in sd)
                {
                    if(item.balance > 1000)
                    {
                        str = "\nId : " + item.id + "\nName : " + item.name + "\nAcType : " + item.account_type + "\nBalance : " + item.balance;
                    }
                }
                return str;

            }



        }
        List<BankClass> list = new List<BankClass>();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void newObj(object sender, EventArgs e)
        {
            BankClass b1 = new BankClass(id.Text, name.Text, Actype.SelectedItem.Text, Double.Parse(balance.Text));
            //    Result.Text = b1.showDetails();
            list.Add(b1);
            Result.Text = BankClass.showDetails(list);
           
        }

    }
}