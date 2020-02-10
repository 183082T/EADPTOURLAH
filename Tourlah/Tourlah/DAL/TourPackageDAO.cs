using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using WebApplication2.BLL;

namespace WebApplication2.DAL
{
    public class TourPackageDAO
    {
        public int CreateTourPackage(string tourname, string image, string tourdescription, string tourduration, string tourlocation, string touroriginalprice, string tourdiscountprice)
        {
            int result = 0;
            SqlCommand sqlCmd = new SqlCommand();
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlStmt = "INSERT INTO TourPackages ( tourName, imageFile, tourDescription,tourDuration, tourLocation, tourOriginalPrice, tourDiscountPrice) " +
                "VALUES (@paraadminPackage,@paraImage ,@paraadminDescription,@paraadminDuration, @paraadminLocation,@paraadminOriginal,@paraadminDiscount)";
            sqlCmd = new SqlCommand(sqlStmt, myConn);
            sqlCmd.Parameters.AddWithValue("@paraadminPackage", tourname);
            sqlCmd.Parameters.AddWithValue("@paraImage", image);
            sqlCmd.Parameters.AddWithValue("@paraadminDescription", tourdescription);
            sqlCmd.Parameters.AddWithValue("@paraadminDuration", tourduration);
            sqlCmd.Parameters.AddWithValue("@paraadminLocation", tourlocation);
            sqlCmd.Parameters.AddWithValue("@paraadminOriginal", touroriginalprice);
            sqlCmd.Parameters.AddWithValue("@paraadminDiscount", tourdiscountprice);

            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();
            // Step 5 :Close connection
            myConn.Close();

            return result;
        }



        public static TourPackage Read(SqlDataReader rd)
        {
            string tourid = rd["tourpackageId"].ToString();
            string tourname = rd["tourName"].ToString();
            string image = rd["imageFile"].ToString();
            string tourdescription = rd["tourDescription"].ToString();
            string tourduration = rd["tourDuration"].ToString();
            string tourlocation = rd["tourLocation"].ToString();
            string touroriginalprice = rd["tourOriginalPrice"].ToString();
            string tourdiscountprice = rd["tourDiscountPrice"].ToString();
            string purchasecount = rd["tourPurchaseCount"].ToString();


            TourPackage tp = new TourPackage
            {
                TourPackageId = tourid,
                TourPackageName = tourname,
                ImageFile = image,
                Description = tourdescription,
                Duration = tourduration,
                Location = tourlocation,
                OriginalPrice = touroriginalprice,
                DiscountPrice = tourdiscountprice,
                PurchaseCount = purchasecount

            };
            return tp;

        }
        public static TourPackage SelectById(string tourid)
        {
            TourPackage td = null;

            string connStr = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(connStr);

            string sqlstmt = @"SELECT * From TourPackages where tourpackageId = @paraid";

            SqlCommand cmd = new SqlCommand(sqlstmt, myConn);
            cmd.Parameters.AddWithValue("@paraid", tourid);

            myConn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                td = Read(dr);
            }
            myConn.Close();

            return td;
        }


        //public List<TourPackage> SelectAll()
        //{

        //    string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
        //    SqlConnection myConn = new SqlConnection(DBConnect);

        //    string sqlStmt = "Select * from TourPackages";
        //    SqlDataAdapter da = new SqlDataAdapter(sqlStmt, myConn);
        //    DataSet ds = new DataSet();
        //    da.Fill(ds);
        //    List<TourPackage> pack = new List<TourPackage>();
        //    int rec_cnt = ds.Tables[0].Rows.Count;
        //    for (int i = 0; i < rec_cnt; i++)
        //    {
        //        DataRow row = ds.Tables[0].Rows[i];  // Sql command returns only one record
        //        string tourid = row["tourpackageId"].ToString();
        //        string tourname = row["tourName"].ToString();
        //        string image = row["imageFile"].ToString();
        //        string tourdescription = row["tourDescription"].ToString();
        //        string tourduration = row["tourDuration"].ToString();
        //        string tourlocation = row["tourLocation"].ToString();
        //        string touroriginalprice = row["tourOriginalPrice"].ToString();
        //        string tourdiscountprice = row["tourDiscountPrice"].ToString();
        //        TourPackage obj = new TourPackage(tourid, tourname, image, tourdescription, tourduration, tourlocation, touroriginalprice, tourdiscountprice);
        //        pack.Add(obj);
        //    }

        //    return pack;
        //}

        public static int UpdateTourPackage(string tourid, string tourname, string image, string tourdescription, string tourlocation, string tourduration, string touroriginalprice, string tourdiscountprice)
        {
            string connStr = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(connStr);

            string sqlStmt = @"UPDATE TourPackages SET tourName = @paraadminPackage, imageFile= @paraImage, tourDescription = @paraadminDescription ,tourDuration = @paraadminDuration, tourLocation = @paraadminLocation , tourOriginalPrice = @paraadminOriginal,tourDiscountPrice = @paraadminDiscount   where tourpackageId =  @paraid";

            int result = 0;    // Execute NonQuery return an integer value
            SqlCommand sqlCmd = new SqlCommand(sqlStmt, myConn);
            sqlCmd.Parameters.AddWithValue("@paraid", tourid);
            sqlCmd.Parameters.AddWithValue("@paraadminPackage", tourname);
            sqlCmd.Parameters.AddWithValue("@paraImage", image);
            sqlCmd.Parameters.AddWithValue("@paraadminDescription", tourdescription);
            sqlCmd.Parameters.AddWithValue("@paraadminDuration", tourduration);
            sqlCmd.Parameters.AddWithValue("@paraadminLocation", tourlocation);
            sqlCmd.Parameters.AddWithValue("@paraadminOriginal", touroriginalprice);
            sqlCmd.Parameters.AddWithValue("@paraadminDiscount", tourdiscountprice);

            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();
            myConn.Close();

            return result;
        }


        public static int UpdateCounter(string tourid, string purchasecount)
        {
            string connStr = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(connStr);

            string sqlStmt = @"UPDATE TourPackages SET tourPurchaseCount = @paracounter + 1 where tourPackageId = @paraid";

            int result = 0;    // Execute NonQuery return an integer value
            SqlCommand sqlCmd = new SqlCommand(sqlStmt, myConn);
            sqlCmd.Parameters.AddWithValue("@paraid", tourid);
            sqlCmd.Parameters.AddWithValue("@paracounter", purchasecount);
            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();
            myConn.Close();

            return result;
        }
        public static int UpdateAverageRating(string tourname, string rating)
        {
            string connStr = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(connStr);

            string sqlStmt = @"UPDATE TourPackages SET tourRating = @paraAverage where tourName = @paraname";

            int result = 0;    // Execute NonQuery return an integer value
            SqlCommand sqlCmd = new SqlCommand(sqlStmt, myConn);
            sqlCmd.Parameters.AddWithValue("@paraname", tourname);
            sqlCmd.Parameters.AddWithValue("@paraAverage", rating);
            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();
            myConn.Close();

            return result;
        }
    }
}