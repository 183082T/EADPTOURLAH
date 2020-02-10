using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class AdminFoodInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadProducts(Request.QueryString["FoodName"]);
        }

        private void LoadProducts(string FoodName)
        {
            BLL.Food prodObj = new BLL.Food();
            FoodName = (string)Session["FoodName"];
            prodObj = prodObj.GetProductById(FoodName);

            LabelFoodName.Text = prodObj.FoodName;
            LabelFoodDesc.Text = prodObj.FoodInfo;
            ImageFood.ImageUrl = "~/Images/" + prodObj.FoodPic;

            LabelPlace.Text = prodObj.PlaceName;
            LabelPlaceDesc.Text = prodObj.PlaceInfo;
            LabelAdd.Text = prodObj.PlaceAdd;

            LabelPlace2.Text = prodObj.PlaceName2;
            LabelPlaceDesc2.Text = prodObj.PlaceInfo2;
            LabelAdd2.Text = prodObj.PlaceAdd2;

            LabelPlace3.Text = prodObj.PlaceName3;
            LabelPlaceDesc3.Text = prodObj.PlaceInfo3;
            LabelAdd3.Text = prodObj.PlaceAdd3;
        }

        protected void ButtonEdit_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditFood.aspx");
        }

        protected void ButtonBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminFoodMain.aspx");
        }
    }
}