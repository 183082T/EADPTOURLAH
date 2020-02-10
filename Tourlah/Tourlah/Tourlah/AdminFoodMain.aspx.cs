using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class AdminFoodMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddFood.aspx");
        }

        protected void ButtonInfo_Click(object sender, EventArgs e)
        {
            HtmlButton btn = (HtmlButton)sender;
            Session["ID"] = btn.Attributes["FoodID"];

            Response.Redirect("AdminFoodInfo.aspx");
        }
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "viewdetails")
            {
                Response.Redirect("AdminFoodInfo.aspx?id=" + e.CommandArgument.ToString());
            }
        }
    }
}