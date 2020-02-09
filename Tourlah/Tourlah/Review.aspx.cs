using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication2.BLL;

namespace WebApplication2
{
    public partial class Review : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userName"] != null)
            {

                Purchase pr = new Purchase();
                List<Purchase> list = pr.SelectByUsername(Session["userName"].ToString());
                if (list.Count != 0)
                {
                    Lbl_Name.Text = Session["userName"].ToString();

                    string connStr = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
                    SqlConnection myConn = new SqlConnection(connStr);

                    string sqlstmt = "SELECT tourpackageName From PurchaseLog where userId ='" + Session["userName"].ToString() + "' ";

                    SqlDataAdapter adpt = new SqlDataAdapter(sqlstmt, myConn);
                    DataTable dt = new DataTable();
                    adpt.Fill(dt);
                    Ddl_Tp.DataSource = dt;
                    Ddl_Tp.DataBind();
                    Ddl_Tp.DataTextField = "tourpackageName";
                    Ddl_Tp.DataBind();

                    BindRatings();
                }

                else
                {
                    Response.Redirect("tourpackage.aspx"); //need to make purchases before making review
                }
                

            }
            else
            {
                Response.Redirect("tourpackage.aspx");
            }
        }



        protected void Btn_SubmitReview_Click(object sender, EventArgs e)
        {
            UserRating ur = new UserRating();
            ur = new UserRating();
            int result = ur.CreateReview(Lbl_Name.Text, Ddl_Tp.SelectedItem.Value, Tb_Feedback.Value, Rating1.CurrentRating.ToString());
            if (result == 1)
            {
                Lbl_Msg.Text = "Thank you for your feedback";
                Validation.CssClass = "alert alert-dismissable alert-success";
                Lbl_Msg.ForeColor = Color.Green;
            }
            else
            {
                Lbl_Msg.Text = "Error in adding record! Inform System Administrator!";
                Lbl_Msg.ForeColor = Color.Red;
            }
            // insert avg

            int Total = 0;
            string connStr = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(connStr);
            myConn.Open();

            SqlCommand cmd = new SqlCommand("SELECT rating FROM UserRating", myConn);

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            da.Fill(dt);

            if (dt.Rows.Count > 0)

            {

                for (int i = 0; i < dt.Rows.Count; i++)

                {

                    Total += Convert.ToInt32(dt.Rows[i][0].ToString());

                }

                int Average = Total / (dt.Rows.Count);
                TourPackage tp = new TourPackage();
                tp = new TourPackage();
                int avg = tp.AverageRating(Ddl_Tp.SelectedItem.Value, Average.ToString());
            }

        }

        public void BindRatings()

        {

            int Total = 0;
            string connStr = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(connStr);
            myConn.Open();

            SqlCommand cmd = new SqlCommand("SELECT rating FROM UserRating", myConn);

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            da.Fill(dt);

            if (dt.Rows.Count > 0)

            {

                for (int i = 0; i < dt.Rows.Count; i++)

                {

                    Total += Convert.ToInt32(dt.Rows[i][0].ToString());

                }

                int Average = Total / (dt.Rows.Count);
                Session["Average"] = Average.ToString();

                //Rating1.CurrentRating = Average;

                Label1.Text = dt.Rows.Count + " " + "Users have rated this Product";

                Label2.Text = "Average rating for this Product is" + " " + Convert.ToString(Average);


            }

        }
    }
}