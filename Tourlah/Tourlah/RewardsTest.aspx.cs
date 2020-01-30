using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class RewardsTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateReward.aspx");
        }

        protected void editReward_serverClick(object sender, EventArgs e)
        {
            HtmlButton btn = (HtmlButton)sender;
            string name = btn.Attributes["Name"];
            string desc = btn.Attributes["Description"];
            string quantity = btn.Attributes["Quantity"];
            string amt = btn.Attributes["Amount"];
            string img = btn.Attributes["Image"];
            int id = int.Parse(btn.Attributes["idd"]);

            Session["Id"] = id;
            Session["Name"] = name;
            Session["Description"] = desc;
            Session["Quantity"] = quantity;
            Session["Amount"] = amt;
            Session["Image"] = img;

            Response.Redirect("UpdateReward.aspx");

        }
    }
}