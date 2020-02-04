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
    public partial class AddFood : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
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
                        int result = emp.AddFood();
                        if (result == 1)
                        {
                            LabelSuccessMsg.Text = "Food Added Successfully!";
                            LabelSuccessMsg.ForeColor = Color.Green;
                        }
                        else
                        {
                            LabelSuccessMsg.Text = "Error in adding food!";
                            LabelSuccessMsg.ForeColor = Color.Red;
                        }
                    }
                    else
                    {
                        LabelSuccessMsg.Text = "Please choose an image!";
                        LabelSuccessMsg.ForeColor = Color.Red;
                    }
                }
            }
        }

        private bool ValidateInput()
        {
            LabelNameError.Text = String.Empty;
            LabelInfoError.Text = String.Empty;

            if (String.IsNullOrEmpty(TBFoodName.Text))
            {
                LabelNameError.Text = "Please enter a name!";
                LabelNameError.ForeColor = Color.Red;
            }
            if (String.IsNullOrEmpty(TBFoodDesc.Text))
            {
                LabelInfoError.Text = "Please enter information for the food!";
                LabelInfoError.ForeColor = Color.Red;
            }

            if (String.IsNullOrEmpty(LabelNameError.Text) && String.IsNullOrEmpty(LabelInfoError.Text))
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