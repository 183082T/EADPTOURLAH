using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using WebApplication2.BLL;
using System.IO;
using System.Drawing;

namespace WebApplication2
{
    public partial class adminpage : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void b1_Click(object sender, EventArgs e)
        {
            if (ri.HasFile)
            {
                string filename = Path.GetFileName(ri.FileName);
                string ext = System.IO.Path.GetExtension(ri.FileName);
                if (ext == ".jpg" || ext == ".png")
                {
                    string path = Server.MapPath("~/Images/");
                    ri.SaveAs(Server.MapPath("~/Images/" + ri.FileName));

                    Rewards rew = new Rewards(rn.Text.ToString(), rd.Text.ToString(), int.Parse(ra.Text.ToString()), int.Parse(rq.Text.ToString()), filename);
                    int result = rew.CreateReward();
                    if (result == 1)
                    {
                        Response.Redirect("RewardsTest.aspx");
                    }
                }
                else
                {
                    LabelError.Text = "Please upload only png and jpg files";
                    LabelError.ForeColor = Color.Red;
                }
            }
            else
            {
                LabelError.Text = "Please choose an image";
                LabelError.ForeColor = Color.Red;
            }
        }
    }
}