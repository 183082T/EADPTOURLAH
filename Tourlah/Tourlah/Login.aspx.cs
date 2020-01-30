using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using WebApplication2.BLL;
using System.Drawing;

namespace WebApplication2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            Users use = new Users();
            Validation.Visible = true;
            bool loggedStatus;


            //if username has registered
            use = use.GetUsersByUsername(TbUsername.Text);
            if (use != null)

            {
                if (TbPassword.Text == use.Password)
                {
                    //ccorrect password, logged in
                    Lbl_Msg.Text = "Logged in";
                    Lbl_Msg.ForeColor = Color.Green;
                    Validation.CssClass = "alert alert-dismissable alert-success";
                    loggedStatus = true;
                    Session["userName"] = TbUsername.Text;
                    Session["Logged"] = loggedStatus;
                    Response.Redirect("Checkout.aspx");
                }
                else
                {
                    //wrong password
                    Lbl_Msg.Text = "Incorrect Password";
                    Lbl_Msg.ForeColor = Color.Red;
                    loggedStatus = false;
                    Session["Logged"] = loggedStatus;

                }
            }

            //if not registered, display user does not have account
            else
            {
                Lbl_Msg.Text = "User does not have a account";
                Lbl_Msg.ForeColor = Color.Red;
                //error msg
            }
        }
    }
}