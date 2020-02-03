using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using WebApplication2.BLL;

namespace WebApplication2
{
    public partial class FoodMain : System.Web.UI.Page
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

            Response.Redirect("FoodInfo.aspx");
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "viewdetails")
            {
                Response.Redirect("FoodInfo.aspx?id=" + e.CommandArgument.ToString());
            }
        }
    }
}