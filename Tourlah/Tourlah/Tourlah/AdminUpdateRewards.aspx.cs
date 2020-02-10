using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class AdminUpdateRewards : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void editReward_serverClick(object sender, EventArgs e)
        {
            HtmlButton btn = (HtmlButton)sender;
            string name = btn.Attributes["Name"];
            string quantity = btn.Attributes["Quantity"];
            string amt = btn.Attributes["Amount"];
            string img = btn.Attributes["Image"];
            int id = int.Parse(btn.Attributes["idd"]);
            string type = btn.Attributes["Type"];

            Session["Id"] = id;
            Session["Name"] = name;
            Session["Quantity"] = quantity;
            Session["Amount"] = amt;
            Session["Image"] = img;
            Session["Type"] = type;

            Response.Redirect("UpdateReward.aspx");

        }
    }
}