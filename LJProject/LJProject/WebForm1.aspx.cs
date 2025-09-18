using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LJProject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void LoginBtn(object sender, EventArgs e)
        {
            if(NameInput.Text == "Admin" && PassInput.Text == "Password")
            {
                Errorlbl.Text = "";
                Session["Username"] = "Admin";
                LoginPanel.Visible = false;
                welcomeLbl.Text = "Welcome : " + Session["Username"].ToString();
                WelcomePanel.Visible = true;
            }
            else
            {
                Errorlbl.Text = "Wrong Name And Password Please Try Again";
            }
        }

        protected void CancelBtn(object sender, EventArgs e)
        {
            Errorlbl.Text = "";
            NameInput.Text = "";
            PassInput.Text = "";
        }

        protected void LogoutBtn(object sender,EventArgs e)
        {
            Session.Clear();
            CancelBtn(sender, e );
            WelcomePanel.Visible = false;
            LoginPanel.Visible = true;
        }
    }
}