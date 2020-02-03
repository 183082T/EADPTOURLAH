using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Drawing;
using System.Web.UI.WebControls;
using WebApplication2.BLL;

namespace WebApplication2
{
    public partial class ProductViewForm : System.Web.UI.Page
    {
        List<updateProduct> upList;

        protected void Page_Load(object sender, EventArgs e)
        {
            RefreshGridView();
        }

        private void RefreshGridView()
        {
            updateProduct up = new updateProduct();
            upList = up.GetAllProducts();

            GvProducts.Visible = true;
            GvProducts.DataSource = upList;
            GvProducts.DataBind();
        }

        protected void GvProducts_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GvProducts.SelectedRow;
            Session["SSId"] = row.Cells[0].Text;
            Session["SSName"] = row.Cells[1].Text;
            Session["SSDesc"] = row.Cells[2].Text;
            Session["SSPrice"] = row.Cells[3].Text;
            Response.Redirect("ProductUpdateForm.aspx");
        }

    }
}