using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2.BLL;

namespace WebApplication2
{
    public partial class purchase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userName"] != null) //if logged in, display all necessary infomation
            {
                var id = Request.QueryString["purchaseId"]; //which row
                LblUsername.Text = Session["userName"].ToString();

                TourPackage tp = new TourPackage();
                tp = tp.GetPackageById(id);
                string originalcost = "";
                string discountedcost = "";
                if (tp != null)
                {
                    LblPackagename.Text = tp.TourPackageName;
                    //updateImageLink.Text = tp.ImageFile;
                    LblDuration.Text = tp.Duration;
                    originalcost = tp.OriginalPrice;
                    discountedcost = tp.DiscountPrice;
                }

            }


            else
            {
                Session["errormsg"] = "Please log in to make purchases";
                Response.Redirect("tourpackage.aspx");

            }
        }

        protected void TbDatefrom_TextChanged(object sender, EventArgs e)
        {
            DateTime test = Convert.ToDateTime(TbDatefrom.Text);
            if (test < DateTime.Today)
            {
                Validation.Visible = true;
                Lbl_Msg.Text = "You must choose a date after today";

            }
            else
            {
                Validation.Visible = false;
                string days = LblDuration.Text.ToString();
                string substr = days.Substring(0, 1);
                int intdays = Convert.ToInt16(substr);
                LblDateto.Text = test.AddDays(intdays).ToString("dd/MM/yyyy");
            }
        }
        protected void BtnCalculate_Click(object sender, EventArgs e)
        {
            DateTime datefrom = Convert.ToDateTime(TbDatefrom.Text);
            string datefromstring = datefrom.ToString("dd/MM/yyyy");


            Purchase pur = new Purchase();
            int result = pur.InsertPurchaseDetails(Session["userName"].ToString(), LblPackagename.Text, DdlPeople.SelectedItem.Value, datefromstring, LblDateto.Text, DdlTraveltype.SelectedItem.Value, LblTotalcost.Text);

            var id = Request.QueryString["purchaseId"];

            TourPackage rd = new TourPackage();
            rd = rd.GetPackageById(id); //get id of the package clicked
            if (rd != null)
            {
                int update = rd.updatecounter(id, rd.PurchaseCount);
                Validation.Visible = true;
                Lbl_Msg.Text = "Successfully Purchased Tour Package";
            }



        }

        protected void DdlPeople_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                int costperperson = Convert.ToInt16(Session["costperperson"].ToString());
                for (int i = 1; i < 12; i++)
                {
                    if (DdlPeople.SelectedIndex == i)
                    {
                        LblTotalcost.Text = (costperperson * i).ToString();
                    }

                    else
                    {
                        Lbl_Msg.Text = "dUNNO";
                    }
                }
            }
            catch
            {

            }

        }

        protected void DdlTraveltype_SelectedIndexChanged(object sender, EventArgs e)
        {
            int costperperson;

            DdlPeople.SelectedIndex = 0;
            LblTotalcost.Text = "";

            if (DdlTraveltype.SelectedIndex == 1)
            {
                costperperson = 1200;
                Session["costperperson"] = costperperson.ToString();
            }

            else if (DdlTraveltype.SelectedIndex == 2)
            {
                costperperson = 1500;
                Session["costperperson"] = costperperson.ToString();
            }
            else
            {
                Validation.Visible = true;
                Lbl_Msg.Text = "Please select your travel type";
            }


        }
    }
}