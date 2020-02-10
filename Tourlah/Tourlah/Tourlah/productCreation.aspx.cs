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
    public partial class productCreation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnAdd_Click(object sender, EventArgs e)
        {

            Product p = new Product();
            double pricing = Convert.ToDouble(TbPrice.Text);

            p = new Product(TbName.Text, TbImage.Text, pricing, TbDesc.Text, TbCategory.Text);
            int result = p.AddProduct();
            if (result == 1)
            {
                LblMsg.Text = "Product added successfully!";
                LblMsg.ForeColor = Color.Green;
            }
            else
            {
                LblMsg.Text = "Error in adding product! Inform System Administrator!";
                LblMsg.ForeColor = Color.Red;
            }



        }

        protected void BtnToUpdate_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProductViewForm.aspx");
        }
    }
}