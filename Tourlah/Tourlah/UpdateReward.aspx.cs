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
    public partial class UpdateReward : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                tbrn.Text = (string)Session["Name"];
                tbqty.Text = (string)Session["Quantity"];
                tbra.Text = (string)Session["Amount"];
                hidimg.Text = (string)Session["Image"];
            }
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {

            Rewards rew = new Rewards( int.Parse(Session["id"].ToString()), tbrn.Text.ToString(), int.Parse(tbra.Text.ToString()), int.Parse(tbqty.Text.ToString()), hidimg.ToString());
            int result = rew.UpdateReward();
            if (result == 1)
            {
                LblMsg.Text = "Record updated";
                LblMsg.ForeColor = Color.Green;
            }
            else
            {
                LblMsg.Text = "Error";
                LblMsg.ForeColor = Color.Red;
            }

        }

    }
}
