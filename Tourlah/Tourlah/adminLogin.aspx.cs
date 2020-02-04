using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using WebApplication2.BLL;

namespace WebApplication2
{
    public partial class adminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAdminLogin_Click(object sender, EventArgs e)
        {

            Validation.Visible = true;
            if (String.IsNullOrEmpty(TbAdminName.Text.ToString()) & (String.IsNullOrEmpty(TbAdminPassword.Text.ToString())))
            {
                Lbl_Msg.Text = "Please do not leave formfields empty";
                Lbl_Msg.ForeColor = Color.Black;
                Validation.CssClass = "alert alert-dismissable alert-danger";
            }

            else
            {
                Admin ad = new Admin();

                ad = ad.GetAdminByUsername(TbAdminName.Text);
                if (ad != null)

                {
                    Validation.Visible = true;
                    if (TbAdminPassword.Text == ad.AdminPassword)
                    {
                        //ccorrect password, logged in to admin
                        Lbl_Msg.Text = TbAdminName.Text + " Admin Logged in.";
                        Lbl_Msg.ForeColor = Color.Green;
                        Validation.CssClass = "alert alert-dismissable alert-success";
                        Session["adminName"] = TbAdminName.Text;
                        Response.Redirect("adminHome.aspx");

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
                    Lbl_Msg.Text = "You do not have an admin account";
                    Validation.CssClass = "alert alert-dismissable alert-danger";
                    Lbl_Msg.ForeColor = Color.Red;
                    //error msg
                }
            }

        }
    }
}