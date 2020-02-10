using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2.BLL;

namespace WebApplication2
{
    public partial class FavouriteEvents : System.Web.UI.Page
    {
        public string Username;
        List<SavedEvents> fList;
        protected void Page_Load(object sender, EventArgs e)
        {
            RefreshGridView();
            try
            {
                Username = (string)Session["userName"];
            }
            catch
            {

            }
        }

        protected void FavouriteGV_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        private void RefreshGridView()
        {
            if (Session["userName"]!= null) { 
            SavedEvents seve = new SavedEvents();
            fList = seve.AllFavourites(Session["userName"].ToString());

            FavouriteGV.Visible = true;
            FavouriteGV.DataSource = fList;
            FavouriteGV.DataBind();
        }
        else{
                ErrorLabel.Text = "Please log in to view your saved events.";

            }
        }
    }

}