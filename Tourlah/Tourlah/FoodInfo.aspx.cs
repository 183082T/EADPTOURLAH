using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class FoodInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonEdit_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditFood.aspx");
        }

        protected void ButtonBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("FoodMain.aspx");
        }
    }
}