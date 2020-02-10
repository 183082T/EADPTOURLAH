using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2.BLL;

namespace WebApplication2
{
    public partial class EditFood : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadProducts(Request.QueryString["FoodName"]);
            }
        }
        private void LoadProducts(string FoodName)
        {
            BLL.Food prodObj = new BLL.Food();
            FoodName = (string)Session["FoodName"];
            prodObj = prodObj.GetProductById(FoodName);

            TBFoodName.Text = prodObj.FoodName;
            TBFoodDesc.Text = prodObj.FoodInfo;

            TBPlaceName.Text = prodObj.PlaceName;
            TBPlaceInfo.Text = prodObj.PlaceInfo;
            TBAddress.Text = prodObj.PlaceAdd;
            TBPlaceName2.Text = prodObj.PlaceName2;
            TBPlaceInfo2.Text = prodObj.PlaceInfo2;
            TBAddress2.Text = prodObj.PlaceAdd2;
            TBPlaceName3.Text = prodObj.PlaceName3;
            TBPlaceInfo3.Text = prodObj.PlaceInfo3;
            TBAddress3.Text = prodObj.PlaceAdd3;


        }
        protected void ButtonEdit_Click(object sender, EventArgs e)
        {
            if (ValidateInput())
            {
                if (FUFoodPic.HasFile)
                {
                    string foodPic = Path.GetFileName(FUFoodPic.FileName);
                    string ext = System.IO.Path.GetExtension(FUFoodPic.FileName);
                    if (ext == ".jpg" || ext == ".png")
                    {
                        string path = Server.MapPath("~/Images/");
                        FUFoodPic.SaveAs(Server.MapPath("~/Images/" + FUFoodPic.FileName));

                        Food emp = new Food(TBFoodName.Text, TBFoodDesc.Text, foodPic, TBPlaceName.Text, TBPlaceInfo.Text, TBAddress.Text, TBPlaceName2.Text, TBPlaceInfo2.Text, TBAddress2.Text, TBPlaceName3.Text, TBPlaceInfo3.Text, TBAddress3.Text);
                        int result = emp.UpdateFood();
                        if (result == 1)
                        {
                            LabelSuccessMsg.Text = "Food item updates successfully!";
                            LabelSuccessMsg.ForeColor = Color.Green;
                        }
                        else
                        {
                            LabelSuccessMsg.Text = "Error in updating food item!";
                            LabelSuccessMsg.ForeColor = Color.Red;
                        }
                    }
                }
            }
        }

        private bool ValidateInput()
        {
            LabelInfoError.Text = String.Empty;

            if (String.IsNullOrEmpty(TBFoodDesc.Text))
            {
                LabelInfoError.Text = "Please enter information for the food!";
                LabelInfoError.ForeColor = Color.Red;
            }

            if (String.IsNullOrEmpty(LabelInfoError.Text))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        protected void ButtonBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminFoodMain.aspx");
        }
    }
}