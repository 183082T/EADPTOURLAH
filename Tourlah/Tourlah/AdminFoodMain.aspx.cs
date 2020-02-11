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

        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            Session["FoodName"] = TBSearch.Text;

            Response.Redirect("AdminFoodInfo.aspx");
        }

        protected void ButtonMoreInfo(object source, DataListCommandEventArgs e)
        {
            DataList1.SelectedIndex = e.Item.ItemIndex;
            Session["FoodName"] = ((Label)DataList1.SelectedItem.FindControl("LabelName")).Text;

            Response.Redirect("AdminFoodInfo.aspx");
        }
    }
}