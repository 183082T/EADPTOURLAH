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
    public partial class adminCreateTourPackage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnCreateTour_Click(object sender, EventArgs e)
        {
            TourPackage tp = new TourPackage();


            tp = new TourPackage();
            int result = tp.CreateTourPackage(adminPackage.Text, adminImageLink.Text, adminDescription.Text, adminDuration.Text, adminLocation.Text, adminOriginal.Text, adminDiscounted.Text);
            Validation.Visible = true;
            if (result == 1)
            {
                Lbl_Msg.Text = "Tour Package is created";
                Validation.CssClass = "alert alert-dismissable alert-success";
                Lbl_Msg.ForeColor = Color.Green;
            }
            else
            {
                Lbl_Msg.Text = "Error in adding record! Inform System Administrator!";
                Lbl_Msg.ForeColor = Color.Red;
            }
        }

        protected void UploadFile(object sender, EventArgs e)
        {
            //string folderPath = Server.MapPath("~/Files/");


            //if (!Directory.Exists(folderPath))
            //{
            //    Directory.CreateDirectory(folderPath);
            //}

            //try
            //{
            //    FileUploadTourImage.SaveAs(folderPath + Path.GetFileName(FileUploadTourImage.FileName));
            //    ImageDisplay.ImageUrl = "~/Files/" + Path.GetFileName(FileUploadTourImage.FileName);
            //    Session["iii"] = ImageDisplay.ImageUrl;

            //    Validation.Visible = false;
            //}
            //catch ( DirectoryNotFoundException)
            //{
            //    Validation.Visible = true;
            //    Lbl_Msg.Text = "Please Select an Image";
            //    Lbl_Msg.ForeColor = Color.Red;
            //}
            ImageDisplay.ImageUrl = adminImageLink.Text.ToString();

        }
    }
}