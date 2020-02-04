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
    public partial class ProductUpdateForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TbID.Text = (string)Session["SSId"];
                TbName.Text = (string)Session["SSName"];
                TbDesc.Text = (string)Session["SSDesc"];
                TbPrice.Text = (string)Session["SSPrice"];
            }

        }
        protected void BtnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProductViewForm.aspx");
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            if (ValidateInput())
            {
                double Price = Convert.ToDouble(TbPrice.Text);
                int ID = Convert.ToInt32(TbID.Text);
                updateProduct up = new updateProduct(ID, TbName.Text, TbDesc.Text, Price);
                int result = up.UpdateProduct();
                if (result == 1)
                {
                    LblMsg.Text = "Product updated successfully!";
                    LblMsg.ForeColor = Color.Green;
                }
                else
                {
                    LblMsg.Text = "Error in updating product! Inform System Administrator!";
                    LblMsg.ForeColor = Color.Red;
                }
            }
        }

        private bool ValidateInput()
        {
            bool result;
            LblMsg.Text = String.Empty;

            if (String.IsNullOrEmpty(TbName.Text))
            {
                LblMsg.Text += "Name is required!" + "<br/>";
            }

            double price;
            result = double.TryParse(TbPrice.Text, out price);
            if (!result)
            {
                LblMsg.Text += "Price is invalid!" + "<br/>";
            }

            if (String.IsNullOrEmpty(TbDesc.Text))
            {
                LblMsg.Text += "Description is required!" + "<br/>";
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
            double Price = Convert.ToDouble(TbPrice.Text);
            int ID = Convert.ToInt32(TbID.Text);
            updateProduct up = new updateProduct(ID, TbName.Text, TbDesc.Text, Price);

            int result = up.DeleteProduct();
            if (result == 1)
            {
                LblMsg.Text = "Product deleted successfully!";
                LblMsg.ForeColor = Color.Green;
            }
            else
            {
                LblMsg.Text = "Error in deleting product! Inform System Administrator!";
                LblMsg.ForeColor = Color.Red;
            }
        }
    }
}