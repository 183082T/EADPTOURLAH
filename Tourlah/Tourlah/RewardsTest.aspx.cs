using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using WebApplication2.BLL;

namespace WebApplication2
{
    public partial class RewardsTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Request.QueryString["rewardid"] != null)
                {
                    var abc = Request.QueryString["rewardid"];
                    Rewards rw = new Rewards();
                    rw = rw.Choose(abc);
                    if (rw !=null){
                        int decrease = rw.decreasequantity(abc, rw.reward_qty.ToString());
                        Response.Redirect("RewardsTest.aspx");
                    }
                }
            }
            catch { }
            
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("UpdateReward.aspx");
        //}
    }
}