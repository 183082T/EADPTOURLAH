using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2.BLL;

namespace WebApplication2
{
    public partial class ViewPurchases : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userName"] != null)
            {
                Validation.Visible = false;
                Purchase pr = new Purchase();

                if (pr != null)
                {
                    List<Purchase> list = pr.SelectByUsername(Session["userName"].ToString());
                    GvPurchase.DataSource = list;
                    GvPurchase.DataBind();
                }
                else
                {
                    Validation.Visible = true;
                    Lbl_Msg.Text = "You have not made any Purchases";
                }
            }
            else
            {
                Response.Redirect("Login.aspx");

            }
        }
    }
}