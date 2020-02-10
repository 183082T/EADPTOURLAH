using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2.BLL;

namespace WebApplication2
{
    public partial class productDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadProduct(Request.QueryString["ID"]);
        }
        private void LoadProduct(string Id)
        {
            BLL.productDetails prodObj = new BLL.productDetails();
            prodObj = prodObj.GetProductById(Id);

            Image1.ImageUrl = "~/Images/" + prodObj.Image;
            LblName.Text = prodObj.Name;
            LblDesc.Text = prodObj.Desc;
            LblPrice.Text = prodObj.Price;
        }

        protected void BtnCart_Click(object sender, EventArgs e)
        {
            if (Session["userName"] != null) //if logged in, display all necessary infomation
            {
                double Total;
                double price;
                int quantity;

                price = Convert.ToDouble(LblPrice.Text);
                quantity = 1;
                Total = ComputeTotal(price, quantity);

                string Username = Session["userName"].ToString();
                BLL.Cart c = new BLL.Cart();
                c = new BLL.Cart(Username, LblName.Text, Image1.ImageUrl, 1, LblPrice.Text, Total);
                int result = c.AddCart();
                if (result == 1)
                {
                    LblMessage.Text = "Product added to cart successfully!";
                    LblMessage.ForeColor = Color.Green;
                }
                else
                {
                    LblMessage.Text = "Error in adding product! Inform System Administrator!";
                    LblMessage.ForeColor = Color.Red;
                }
            }
            else
            {
                Validation.Visible = true;
                Lbl_Msg.Text = "Please log in to make transactions";
            }
            //Response.Redirect("Cart.aspx");
        }
        public double ComputeTotal(double price, int quantity)
        {
            double fmPrice = Convert.ToDouble(price);
            double fmTotal = fmPrice * quantity;
            return fmTotal;
        }

        protected void BtnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Category?IDCAT=1.aspx");
        }
    }
}