using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AbstractionBankExample
{
    public partial class homepage : System.Web.UI.Page
    {
        public abstract class BankAccount
        {
            public string name;
            public int accountNumber;
            public double balance;

            public BankAccount()
            {
                this.name = "Ramulal";
                this.accountNumber = 123753;
                this.balance = 40000;
            }
            

            public BankAccount(string name, int accountNumber, double balance)
            {
                this.name=name;
                this.accountNumber = accountNumber;
                this.balance = balance;
            }
            public abstract string Withdraw(double amount);

        }

        public class SavingAccount : BankAccount
        {
            public SavingAccount() : base("Ramukaka",123123,14000)
            {
                
            }

            public SavingAccount(string name, int accountNumber, double balance) : base(name, accountNumber, balance)
            {
                
            }

            public override string Withdraw(double amount)
            {

                String msg = "";
                if ((this.balance - amount) > 5000)
                {
                    this.balance = this.balance - amount;

                }
                else
                {
                    msg = "<br/>Insufficient Balance(Current Account)";
                }
                return msg.Length > 0 ? msg : "<br/>Balance After withdraw(Saving Account) : " + this.balance;
            }
        }

        public class CurrentAccount : BankAccount
        {
            public CurrentAccount() : base("Ramukaka", 123123, 14000)
            {

            }

            public CurrentAccount(string name, int accountNumber, double balance) : base(name, accountNumber, balance)
            {
                
            }
            public override string Withdraw(double amount)
            {
                String msg = "";
                if (this.balance < amount) {
                    msg= "<br/>Insufficient Balance(Current Account)";
                }
                else
                {
                    this.balance = this.balance - amount;
                }
                return msg.Length > 0 ? msg : "<br/>Balance After withdraw(Current Account) : " + this.balance;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void currentAccountWithDraw(object sender, EventArgs e)
        {
            CurrentAccount cr = new CurrentAccount(name.Text, int.Parse(AccountNumber.Text), double.Parse(Balance.Text));
            Result.Text += cr.Withdraw(double.Parse(WithdrawAmount.Text));

        }

        public void SavingAccountWithdraw(object sender, EventArgs e)
        {
            SavingAccount sv = new SavingAccount(name.Text, int.Parse(AccountNumber.Text), double.Parse(Balance.Text));
            Result.Text += sv.Withdraw(double.Parse(WithdrawAmount.Text));
        }
    }
}