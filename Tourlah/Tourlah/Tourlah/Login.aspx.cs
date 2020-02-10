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
            Validation.Visible = true;
            if (String.IsNullOrEmpty(TbUsername.Text.ToString()) & (String.IsNullOrEmpty(TbPassword.Text.ToString())))
            {
                Lbl_Msg.Text = "Please do not leave formfields empty";
                Validation.CssClass = "alert alert-dismissable alert-danger";
                Lbl_Msg.ForeColor = Color.Red;
            }

            else  //if no empty fields, check db
            {

                Users use = new Users();


                use = use.GetUsersByUsername(TbUsername.Text);
                if (use != null)//if username has registered in db

                {
                    if (TbPassword.Text == use.Password)
                    {
                        //ccorrect password, logged in

                        Lbl_Msg.ForeColor = Color.Green;
                        Session["isUserLoggedIn"] = true;
                        Session["userName"] = TbUsername.Text;
                        Session["loginsuccess"] = TbUsername.Text + " is logged in";
                        Response.Redirect("About.aspx");
                    }
                    else
                    {
                        //wrong password
                        Lbl_Msg.Text = "Incorrect Password";
                        Validation.CssClass = "alert alert-dismissable alert-danger";
                        Lbl_Msg.ForeColor = Color.Red;

                    }
                }
                //if not registered, display user does not have account
                else
                {
                    Lbl_Msg.Text = "User does not have a account";
                    Validation.CssClass = "alert alert-dismissable alert-warning";
                    Lbl_Msg.ForeColor = Color.Red;
                    //error msg
                }
            }
        }
    }
}