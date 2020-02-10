using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2.BLL;

namespace WebApplication2
{
    public partial class adminUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var id = Request.QueryString["id"]; //which row
                TourPackage tp = new TourPackage();
                tp = tp.GetPackageById(id);
                if (tp != null)
                {
                    updateTourName.Text = tp.TourPackageName;
                    updateDescription.Text = tp.Description;
                    updateImageLink.Text = tp.ImageFile;
                    ImageDisplay.ImageUrl = tp.ImageFile;
                    updateLocation.Text = tp.Location;
                    updateDuration.Text = tp.Duration;
                    updateOriginalPrice.Text = tp.OriginalPrice;
                    updateDiscountPrice.Text = tp.DiscountPrice;
                }
            }

        }

        protected void UploadFile(object sender, EventArgs e)
        {
            ImageDisplay.ImageUrl = updateImageLink.Text;
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            var id = Request.QueryString["id"]; //which row
            TourPackage td = new TourPackage();
            int upd = td.UpdateTourPackage(id, updateTourName.Text, updateImageLink.Text, updateDescription.Text, updateLocation.Text, updateDuration.Text, updateOriginalPrice.Text, updateDiscountPrice.Text);

            if (upd == 1)
            {
                GotoTourpackage.Visible = true;
                Validation.Visible = true;
                Lbl_Msg.Text = "Tour Package Sucessfully Updated !";
                Lbl_Msg.ForeColor = Color.Green;
            }
            else
            {
                Validation.Visible = true;
                Lbl_Msg.Text = "Error in updating";
                Lbl_Msg.ForeColor = Color.Red;
            }
        }

        protected void GotoTourpackage_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminViewTourPackage.aspx");
        }
    }
}