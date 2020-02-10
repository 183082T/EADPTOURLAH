using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using WebApplication2.BLL;

namespace WebApplication2.DAL
{
    public class CartDAO
    {
        public List<BLL.Cart> SelectAll()
        {
            //Step 1 -  Define a connection to the database by getting
            //          the connection string from web.config
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            //Step 2 -  Create a DataAdapter to retrieve data from the database table
            string sqlStmt = "Select * from Cart";
            SqlDataAdapter da = new SqlDataAdapter(sqlStmt, myConn);

            //Step 3 -  Create a DataSet to store the data to be retrieved
            DataSet ds = new DataSet();

            //Step 4 -  Use the DataAdapter to fill the DataSet with data retrieved
            da.Fill(ds);

            //Step 5 -  Read data from DataSet to List
            List<BLL.Cart> cList = new List<BLL.Cart>();
            int rec_cnt = ds.Tables[0].Rows.Count;
            for (int i = 0; i < rec_cnt; i++)
            {
                DataRow row = ds.Tables[0].Rows[i];  // Sql command returns only one record
                //string idStr = row["Id"].ToString();
                //int id = Convert.ToInt32(idStr);
                string name = row["NAME"].ToString();
                string image = row["IMAGE"].ToString();

                string quantityStr = row["QUANTITY"].ToString();
                int quantity = Convert.ToInt32(quantityStr);

                string price = row["PRICE"].ToString();
                //double price = Convert.ToDouble(priceStr);



                BLL.Cart obj = new BLL.Cart(name, image, quantity, price);
                cList.Add(obj);
            }

            return cList;
        }

        public int Insert(BLL.Cart c)
        {
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlStmt = "INSERT INTO Cart (NAME, IMAGE, PRICE, QUANTITY)" +
                             "VALUES (@paraName,@paraImage,@paraPrice,@paraQuantity)";

            int result = 0;    // Execute NonQuery return an integer value
            SqlCommand sqlCmd = new SqlCommand(sqlStmt, myConn);

            sqlCmd.Parameters.AddWithValue("@paraName", c.Name);
            sqlCmd.Parameters.AddWithValue("@paraImage", c.Image);
            sqlCmd.Parameters.AddWithValue("@paraPrice", c.Price);
            sqlCmd.Parameters.AddWithValue("@paraQuantity", c.Quantity);


            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();

            myConn.Close();

            return result;
        }

        public int Delete(BLL.Cart c)
        {
            int result = 0;
            SqlCommand sqlCmd = new SqlCommand();

            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            // Step 2 - Instantiate SqlCommand instance to add record 
            //          with INSERT statement
            string sqlStmt = "DELETE Cart where Id = @paraID ";

            sqlCmd = new SqlCommand(sqlStmt, myConn);

            // Step 3 : Add each parameterised variable with value
            sqlCmd.Parameters.AddWithValue("@paraID", c.Id);
            //sqlCmd.Parameters.AddWithValue("@paraName", up.Name);
            //sqlCmd.Parameters.AddWithValue("@paraDesc", up.Desc);
            //sqlCmd.Parameters.AddWithValue("@paraPrice", up.Price);

            // Step 4 Open connection the execute NonQuery of sql command   
            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();

            // Step 5 :Close connection
            myConn.Close();

            return result;
        }
    }
}