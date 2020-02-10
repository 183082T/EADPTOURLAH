using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2.BLL;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        List<Events> eList;

        protected void Page_Load(object sender, EventArgs e)
        {
            RefreshGridView();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = EventGV.SelectedRow;
            Session["Event Id"] = row.Cells[0].Text;
            Session["Event Name"] = row.Cells[1].Text;
            Session["Event Description"] = row.Cells[2].Text;
            Session["Event Dates"] = row.Cells[3].Text;
            Session["Event MainType"] = row.Cells[4].Text;
            Session["Event SecondType"] = row.Cells[5].Text;
            Session["Event Location"] = row.Cells[6].Text;
            Response.Redirect("Eventpage.aspx");

        }
        private void RefreshGridView()
        {
            Events Eve = new Events();
            eList = Eve.Allevents();

            EventGV.Visible = true;
            EventGV.DataSource = eList;
            EventGV.DataBind();

        }
    }
}