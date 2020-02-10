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
        List<BLL.Cart> cList;

        protected void Page_Load(object sender, EventArgs e)
        {
            RefreshGridView();
        }

        private void RefreshGridView()
        {
            BLL.Cart c = new BLL.Cart();
            cList = c.GetAllCartP();

            GvCart.Visible = true;
            GvCart.DataSource = cList;
            GvCart.DataBind();
        }

        protected void GvCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            BLL.Cart c = new BLL.Cart();
            //c = new BLL.Cart(1, LblName.Text, "", 1, LblPrice.Text);
            int result = c.DeleteItem();
            if (result == 1)
            {
                LblMsg.Text = "Item deleted successfully!";
                LblMsg.ForeColor = Color.Green;
            }
            else
            {
                LblMsg.Text = "Error in deleting Item! Inform System Administrator!";
                LblMsg.ForeColor = Color.Red;
            }
        }
    }
}