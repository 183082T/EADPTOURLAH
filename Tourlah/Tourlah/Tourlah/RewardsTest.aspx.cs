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
                if (Session["userName"] != null)
                {
                    if (Request.QueryString["rewardid"] != null)
                    {
                        var abc = Request.QueryString["rewardid"];
                        Rewards rw = new Rewards();
                        rw = rw.Choose(abc);
                        if (rw != null)
                        {
                            int decrease = rw.decreasequantity(abc, rw.reward_qty.ToString());
                            Response.Redirect("RewardsTest.aspx");
                        }
                    }
                }
            }
            catch { }
        }

        protected void DdlSort_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(Order.SelectedIndex == 0)
            {
                if(Filter.SelectedIndex == 0)
                {
                    SqlDataSource1.SelectCommand = "select * from reward order by reward_amt asc";
                }
                if(Filter.SelectedIndex == 1)
                {
                    SqlDataSource1.SelectCommand = "select * from reward where reward_type='Cash' order by reward_amt asc";
                }
                else if(Filter.SelectedIndex == 2)
                {
                    SqlDataSource1.SelectCommand = "select * from reward where reward_type='Voucher' order by reward_amt asc";
                }
                else if(Filter.SelectedIndex == 3)
                {
                    SqlDataSource1.SelectCommand = "select * from reward where reward_type='Gift' order by reward_amt asc";
                }
            }
            else
            {
                if (Filter.SelectedIndex == 0)
                {
                    SqlDataSource1.SelectCommand = "select * from reward order by reward_amt desc";
                }
                if (Filter.SelectedIndex == 1)
                {
                    SqlDataSource1.SelectCommand = "select * from reward where reward_type='Cash' order by reward_amt desc";
                }
                else if (Filter.SelectedIndex == 2)
                {
                    SqlDataSource1.SelectCommand = "select * from reward where reward_type='Voucher' order by reward_amt desc";
                }
                else if (Filter.SelectedIndex == 3)
                {
                    SqlDataSource1.SelectCommand = "select * from reward where reward_type='Gift' order by reward_amt desc";
                }
            }
        }

        protected void DdlOrder_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Order.SelectedIndex == 0)
            {
                if (Filter.SelectedIndex == 0)
                {
                    SqlDataSource1.SelectCommand = "select * from reward order by reward_amt asc";
                }
                if (Filter.SelectedIndex == 1)
                {
                    SqlDataSource1.SelectCommand = "select * from reward where reward_type='Cash' order by reward_amt asc";
                }
                else if (Filter.SelectedIndex == 2)
                {
                    SqlDataSource1.SelectCommand = "select * from reward where reward_type='Voucher' order by reward_amt asc";
                }
                else if (Filter.SelectedIndex == 3)
                {
                    SqlDataSource1.SelectCommand = "select * from reward where reward_type='Gift' order by reward_amt asc";
                }
            }
            else
            {
                if (Filter.SelectedIndex == 0)
                {
                    SqlDataSource1.SelectCommand = "select * from reward order by reward_amt desc";
                }
                if (Filter.SelectedIndex == 1)
                {
                    SqlDataSource1.SelectCommand = "select * from reward where reward_type='Cash' order by reward_amt desc";
                }
                else if (Filter.SelectedIndex == 2)
                {
                    SqlDataSource1.SelectCommand = "select * from reward where reward_type='Voucher' order by reward_amt desc";
                }
                else if (Filter.SelectedIndex == 3)
                {
                    SqlDataSource1.SelectCommand = "select * from reward where reward_type='Gift' order by reward_amt desc";
                }
            }
        }
    }
}