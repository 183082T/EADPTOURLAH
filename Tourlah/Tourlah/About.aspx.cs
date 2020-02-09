using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userName"] != null)
            {
                Validation.Visible = true;
                LblWelcome.Text = "Welcome to our trave website " + Session["userName"].ToString();
                Lbl_Msg.Text = Session["loginsuccess"].ToString();
                Lbl_Msg.ForeColor = Color.Green;
            }

            else if (Session["UNAUTHOR"] != null)
            {
                Unaut.Visible = true;
                Lbl_Unaut.Text = Session["UNAUTHOR"].ToString();
                Lbl_Unaut.ForeColor = Color.Red;
            }

            else
            {
                LblWelcome.Text = "";
            }
        }
    }
}