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
    public partial class CartUpdateForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LblId.Text = (string)Session["pId"];
                LblName.Text = (string)Session["pName"];
                LblPrice.Text = (string)Session["pPrice"];
                TbQuantity.Text = (string)Session["pQuantity"];

            }
        }

        protected void BtnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            if (ValidateInput())
            {
                int id = Convert.ToInt32(LblId.Text);
                int quantity = Convert.ToInt32(TbQuantity.Text);
                double price = Convert.ToDouble(LblPrice.Text);

                double NewTotal;
                NewTotal = ComputeNewTotal(price, quantity);
                CartDetails cd = new CartDetails("", id, LblName.Text, price, quantity, "", NewTotal.ToString());

                int result = cd.UpdateCartQuantity();
                if (result == 1)
                {
                    LblMsg.Text = "Quantity updated successfully";
                    LblMsg.ForeColor = Color.Green;
                }
                else
                {
                    LblMsg.Text = "Error in changing Quantity! Inform System Administrator!";
                    LblMsg.ForeColor = Color.Red;
                }

                Response.Redirect("Cart.aspx");
            }
        }

        private bool ValidateInput()
        {
            bool result;
            LblMsg.Text = String.Empty;

            double quantity;
            result = double.TryParse(TbQuantity.Text, out quantity);
            if (!result)
            {
                LblMsg.Text += "Quantity is invalid!" + "<br/>";
                LblMsg.ForeColor = Color.Red;
            }
            if (String.IsNullOrEmpty(LblMsg.Text))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            int quantity = Convert.ToInt32(TbQuantity.Text);
            int id = Convert.ToInt32(LblId.Text);
            double price = Convert.ToDouble(LblPrice.Text);
            BLL.CartDetails c = new CartDetails("", id, LblName.Text, price, quantity, "","");
            int result = c.DeleteItem();
            if (result == 1)
            {
                LblMsg.Text = "Item deleted from cart successfully!";
                LblMsg.ForeColor = Color.Green;
            }
            else
            {
                LblMsg.Text = "Error in deleting item! Inform System Administrator!";
                LblMsg.ForeColor = Color.Red;
            }

            Response.Redirect("Cart.aspx");
        }

        public double ComputeNewTotal(double price, int quantity)
        {
            double fmPrice = Convert.ToDouble(price);
            double fmTotal = fmPrice * quantity;
            return fmTotal;
        }
    }
}