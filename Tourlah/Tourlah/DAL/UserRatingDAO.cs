using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using WebApplication2.BLL;

namespace WebApplication2.DAL
{
    public class UserRatingDAO
    {
        public int InsertReview(string name, string tp, string feedback, string rating)
        {
            int result = 0;
            SqlCommand sqlCmd = new SqlCommand();
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlStmt = "INSERT INTO UserRating ( username, tourpackage,feedback, rating) " +
                "VALUES (@paraname, @parapackage,@parafeedback, @pararating )";
            sqlCmd = new SqlCommand(sqlStmt, myConn);
            sqlCmd.Parameters.AddWithValue("@paraname", name);
            sqlCmd.Parameters.AddWithValue("@parapackage", tp);
            sqlCmd.Parameters.AddWithValue("@parafeedback", feedback);
            sqlCmd.Parameters.AddWithValue("@pararating", rating);

            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();
            myConn.Close();

            return result;
        }



        public static UserRating Read(SqlDataReader rd)
        {
            // Step 5 :Close connection
            string id = rd["Id"].ToString();
            string name = rd["username"].ToString();
            string tp = rd["tourpackage"].ToString();
            string fb = rd["feedback"].ToString();
            string rating = rd["rating"].ToString();

            UserRating ur = new UserRating
            {
                Id = id,
                Username = name,
                Tp = tp,
                Feedback = fb,
                Rating = rating
            };
            return ur;

        }
    }
}