using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2.BLL;

namespace WebApplication2
{
    public partial class Eventpage : System.Web.UI.Page
    {
        public string Username;
        public string EventId;
        protected void Page_Load(object sender, EventArgs e)
        {
            Eventlbl.Text = (string)Session["Event Name"];
            DescriptionLbl.Text = (string)Session["Event Description"];
            EventDatelbl.Text = (string)Session["Event Dates"];
            EventLocationlbl.Text = (string)Session["Event Location"];
            Maintypelbl.Text = (string)Session["Event MainType"];
            Secondtypelbl.Text = (string)Session["Event SecondType"];
            Username = (string)Session["userName"];
            EventId = (string)Session["Event Id"];
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SavedEvents Seve = new SavedEvents();

            Seve = new SavedEvents(Username, EventId);
            int result = Seve.FavouriteEvent();
        }
    }
}