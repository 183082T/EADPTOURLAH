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


        }

        protected void DdlSort_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DdlSort.SelectedIndex == 1)
            {
                SqlDataSource1.SelectCommand = "Select * from TourPackages order by tourDiscountPrice asc";
            }

            if (DdlSort.SelectedIndex == 4)
            {
                SqlDataSource1.SelectCommand = "select * from TourPackages order by SUBSTRING(tourDuration,0,20)";
            }

            if (DdlSort.SelectedIndex == 5)
            {
                SqlDataSource1.SelectCommand = "select * from TourPackages order by ( CAST(tourOriginalPrice as int) - CAST(tourDiscountPrice as int)) desc";
            }

        }
    }
}