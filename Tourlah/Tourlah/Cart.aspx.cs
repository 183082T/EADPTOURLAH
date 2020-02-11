using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2.BLL;

namespace WebApplication2
{
    public partial class Cart : System.Web.UI.Page
    {
        List<BLL.CartDetails> cList;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userName"] != null)
            {

                RefreshGridView();
                Validation.Visible = false;
                Purchase pr = new Purchase();
                calculateSum();

                if (pr != null)
                {
                    List<Purchase> list = pr.SelectByUsername(Session["userName"].ToString());
                    GvPurchase.DataSource = list;

                    GvPurchase.DataBind();
                }
                else
                {
                    TPP.Visible = false;
                    Validation.Visible = true;
                    Lbl_Msg.Text = "You have not made any Purchases";
                }
            }
            else
            {
                Response.Redirect("Login.aspx");

            }

        }

        private void RefreshGridView()
        {
            CartDetails c = new CartDetails();
            cList = c.GetAllCartP(Session["userName"].ToString());

            GvCart.Visible = true;
            GvCart.DataSource = cList;
            GvCart.DataBind();
        }
        


        protected void GvCart_SelectedIndexChanged(object sender, EventArgs e)
        {

            GridViewRow row = GvCart.SelectedRow;
            Session["pId"] = row.Cells[1].Text;
            Session["pName"] = row.Cells[2].Text;
            Session["pQuantity"] = row.Cells[4].Text;
            Session["pPrice"] = row.Cells[5].Text;
            Session["pTotal"] = row.Cells[6].Text;
            Response.Redirect("CartUpdateForm.aspx");

        }

        private void calculateSum()
        {
            double grandtotal = 0;
            foreach (GridViewRow row in GvCart.Rows)
            {
                grandtotal = grandtotal + Convert.ToDouble(row.Cells[6].Text);

            }


            double tour = 0;
            foreach (GridViewRow row in GvPurchase.Rows)
            {
                tour = tour + Convert.ToDouble(row.Cells[6].Text);

            }

            var total = grandtotal + tour; //total amt

            Lbl_GrandTotal.Text = "Grand Total:  $" + total;
            Users use = new Users();
            int res = use.updateGT(Session["userName"].ToString(), total.ToString());
            total = 0;
        }
        protected void GvCart_DataBound(object sender, EventArgs e)
        {
            calculateSum();
        }
    }
}