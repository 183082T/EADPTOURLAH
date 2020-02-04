using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["userName"] != null)
            {
                Login.Text = "Log out";

            }

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            if (Session["userName"] == null) //if user is not logged in
            {
                Response.Redirect("Login.aspx");
                Login.Text = "Login/Sign up";


            }
            else
            {
                Session["userName"] = null;
                Response.Redirect("Login.aspx");

            }
        }
    }
}