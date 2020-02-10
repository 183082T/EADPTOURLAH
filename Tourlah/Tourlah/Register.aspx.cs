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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            Users use = new Users();
            Validation.Visible = true;
            if (use.GetUsersByUsername(registerUsername.Text) != null)
            {

                Lbl_errorMsg.Text = registerUsername.Text + " Already has an account";
                Lbl_errorMsg.ForeColor = Color.Red;

            }

            else
            {

                use = new Users();
                int result = use.Create(registerUsername.Text, registerPassword.Text);
                if (result == 1)
                {
                    Lbl_errorMsg.Text = "Account Successfully Created";
                    Validation.CssClass = "alert alert-dismissable alert-success";
                    Lbl_errorMsg.ForeColor = Color.Green;

                    Response.Redirect("Login.aspx");
                }
                else
                {
                    Lbl_errorMsg.Text = "Error in adding record! Inform System Administrator!";
                    Lbl_errorMsg.ForeColor = Color.Red;
                }

            }
        }
    }
}