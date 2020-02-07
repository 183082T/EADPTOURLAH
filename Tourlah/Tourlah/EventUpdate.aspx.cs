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
    public partial class EventUpdate : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }



        protected void TbBirthdate0_TextChanged(object sender, EventArgs e)
        {

        }

        protected void BtnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminpage.aspx");
        }

        protected void BtnSubmit_Click1(object sender, EventArgs e)
        {
            Events eve = new Events();
            DateTime eventTime = Convert.ToDateTime(Tbdate.Text);
            eve = new Events(TbName.Text, Tbdescription.Text, eventTime, TbName.Text, TbSecondtype.Text, Tblocation.Text);
            int result = eve.AddEvent();
            if (result == 1)
            {
                LblMsg.Text = "Event has been added into list";
                LblMsg.ForeColor = Color.Blue;

            }
            else
            {
                LblMsg.Text = "Unable to add event at the moment";
                LblMsg.ForeColor = Color.Red;
            }
        }
    }
}