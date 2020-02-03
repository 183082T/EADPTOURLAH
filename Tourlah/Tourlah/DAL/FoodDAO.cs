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
    public class FoodDAO
    {
        public List<Food> SelectAll()
        {
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlStmt = "Select * from Food";
            SqlDataAdapter da = new SqlDataAdapter(sqlStmt, myConn);

            DataSet ds = new DataSet();

            da.Fill(ds);

            List<Food> empList = new List<Food>();
            int rec_cnt = ds.Tables[0].Rows.Count;
            for (int i=0; i<rec_cnt; i++)
            {
                DataRow row = ds.Tables[0].Rows[i];

                string namefood = row["foodName"].ToString();
                string infofood = row["foodInfo"].ToString();
                string picfood = row["foodPic"].ToString();

                string nameplace = row["placeName"].ToString();
                string infoplace = row["placeInfo"].ToString();
                string address = row["placeAdd"].ToString();

                string nameplace2 = row["placeName2"].ToString();
                string infoplace2 = row["placeInfo2"].ToString();
                string address2 = row["placeAdd2"].ToString();

                string nameplace3 = row["placeName3"].ToString();
                string infoplace3 = row["placeInfo3"].ToString();
                string address3 = row["placeAdd3"].ToString();


                Food obj = new Food(namefood, infofood, picfood, nameplace, infoplace, address, nameplace2, infoplace2, address2, nameplace3, infoplace3, address3);
                empList.Add(obj);
            }

            return empList;
        }

        public int Insert(Food emp)
        {
            int result = 0;
            SqlCommand sqlCmd = new SqlCommand();

            string DBConnect = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlStmt = "INSERT INTO TDFood (foodName, foodInfo, foodPic, placeName, placeInfo, placeAdd, placeName2, placeInfo2, placeAdd2, placeName3, placeinfo3, placeAdd3)" +
                "VALUES (@paraFoodName, @paraFoodInfo, @paraFoodPic, @paraPlaceName, @paraPlaceInfo, @paraPlaceAdd, @paraPlaceName2, @paraPlaceInfo2, @paraPlaceAdd2, @paraPlaceName3, @paraPlaceInfo3, @paraPlaceAdd3)";

            sqlCmd = new SqlCommand(sqlStmt, myConn);
            sqlCmd.Parameters.AddWithValue("@paraFoodName", emp.FoodName);
            sqlCmd.Parameters.AddWithValue("@paraFoodInfo", emp.FoodInfo);
            sqlCmd.Parameters.AddWithValue("@paraFoodPic", emp.FoodPic);

            sqlCmd.Parameters.AddWithValue("@paraPlaceName", emp.PlaceName);
            sqlCmd.Parameters.AddWithValue("@paraPlaceInfo", emp.PlaceInfo);
            sqlCmd.Parameters.AddWithValue("@paraPlaceAdd", emp.PlaceAdd);

            sqlCmd.Parameters.AddWithValue("@paraPlaceName2", emp.PlaceName2);
            sqlCmd.Parameters.AddWithValue("@paraPlaceInfo2", emp.PlaceInfo2);
            sqlCmd.Parameters.AddWithValue("@paraPlaceAdd2", emp.PlaceAdd2);

            sqlCmd.Parameters.AddWithValue("@paraPlaceName3", emp.PlaceName3);
            sqlCmd.Parameters.AddWithValue("@paraPlaceInfo3", emp.PlaceInfo3);
            sqlCmd.Parameters.AddWithValue("@paraPlaceAdd3", emp.PlaceAdd3);

            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();
            myConn.Close();

            return result;
        }

        public int Update(Food emp)
        {
            int result = 0;
            SqlCommand sqlCmd = new SqlCommand();

            string DBConnect = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlStmt = "UPDATE TDFood SET " +
                "foodInfo = @paraFoodInfo, foodPic = @paraFoodPic, " +
                "placeName = @paraPlaceName, placeInfo = @paraPlaceInfo, placeAdd = @paraPlaceAdd, " +
                "placeName2 = @paraPlaceName2, placeInfo2 = @paraPlaceInfo2, placeAdd2 = @paraPlaceAdd2, " +
                "placeName3 = @paraPlaceName3, placeInfo3 = @paraPlaceInfo3, placeAdd3 = @paraPlaceAdd3 WHERE foodName = @paraFoodName";

            sqlCmd = new SqlCommand(sqlStmt, myConn);

            sqlCmd.Parameters.AddWithValue("@paraFoodName", emp.FoodName);
            sqlCmd.Parameters.AddWithValue("@paraFoodInfo", emp.FoodInfo);
            sqlCmd.Parameters.AddWithValue("@paraFoodPic", emp.FoodPic);

            sqlCmd.Parameters.AddWithValue("@paraPlaceName", emp.PlaceName);
            sqlCmd.Parameters.AddWithValue("@paraPlaceInfo", emp.PlaceInfo);
            sqlCmd.Parameters.AddWithValue("@paraPlaceAdd", emp.PlaceAdd);

            sqlCmd.Parameters.AddWithValue("@paraPlaceName2", emp.PlaceName2);
            sqlCmd.Parameters.AddWithValue("@paraPlaceInfo2", emp.PlaceInfo2);
            sqlCmd.Parameters.AddWithValue("@paraPlaceAdd2", emp.PlaceAdd2);

            sqlCmd.Parameters.AddWithValue("@paraPlaceName3", emp.PlaceName3);
            sqlCmd.Parameters.AddWithValue("@paraPlaceInfo3", emp.PlaceInfo3);
            sqlCmd.Parameters.AddWithValue("@paraPlaceAdd3", emp.PlaceAdd3);

            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();
            myConn.Close();

            return result;
        }
    }
}