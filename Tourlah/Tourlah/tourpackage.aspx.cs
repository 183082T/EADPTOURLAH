using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class tourpackage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["errormsg"] != null)
                {
                    Validation.Visible = true;
                    Lbl_Msg.Text = Session["errormsg"].ToString();
                    Session["errormsg"] = null;
                }
                else
                {
                    Validation.Visible = false;

                }
            }
        }


        protected void Btn_Sort_Click(object sender, EventArgs e)
        {
            if (DdlOrder.SelectedIndex == 0)
            {

                if (DdlSort.SelectedIndex == 1) //price
                {
                    SqlDataSource1.SelectCommand = "Select * from TourPackages order by tourDiscountPrice asc";
                }

                else if (DdlSort.SelectedIndex == 5) //duration
                {
                    SqlDataSource1.SelectCommand = "select * from TourPackages order by SUBSTRING(tourDuration,0,20) asc";
                }

                else if (DdlSort.SelectedIndex == 2) //mostdiscounted
                {
                    SqlDataSource1.SelectCommand = "select * from TourPackages order by ( CAST(tourOriginalPrice as int) - CAST(tourDiscountPrice as int)) asc";
                }

                else if (DdlSort.SelectedIndex == 0) //recent
                {
                    SqlDataSource1.SelectCommand = "select * from TourPackages order by tourpackageId asc";
                }

                else if (DdlSort.SelectedIndex == 4) //pop
                {
                    SqlDataSource1.SelectCommand = "select * from TourPackages order by tourPurchaseCount asc";
                }
                else
                {
                    Lbl_Msg.Text = "Error in sorting";
                }
            }

            else
            {
                if (DdlSort.SelectedIndex == 1) //price
                {
                    SqlDataSource1.SelectCommand = "Select * from TourPackages order by tourDiscountPrice desc";
                }

                else if (DdlSort.SelectedIndex == 5) //duration
                {
                    SqlDataSource1.SelectCommand = "select * from TourPackages order by SUBSTRING(tourDuration,0,20) desc";
                }

                else if (DdlSort.SelectedIndex == 2) //mostdiscounted
                {
                    SqlDataSource1.SelectCommand = "select * from TourPackages order by ( CAST(tourOriginalPrice as int) - CAST(tourDiscountPrice as int)) desc";
                }

                else if (DdlSort.SelectedIndex == 0) //recent
                {
                    SqlDataSource1.SelectCommand = "select * from TourPackages order by tourpackageId desc";
                }

                else if (DdlSort.SelectedIndex == 4) //pop
                {
                    SqlDataSource1.SelectCommand = "select * from TourPackages order by tourPurchaseCount desc";
                }
                else
                {
                    Lbl_Msg.Text = "Error in sorting";
                }

            }
        }
    }
}