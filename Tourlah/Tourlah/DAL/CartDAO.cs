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
        private static CartDetails Read(SqlDataReader rd)
        {
            string idStr = rd["Id"].ToString();
            int id = Convert.ToInt32(idStr);

            string cusername = rd["Username"].ToString();

            string name = rd["NAME"].ToString();
            string image = rd["IMAGE"].ToString();

            string quantityStr = rd["QUANTITY"].ToString();
            int quantity = Convert.ToInt32(quantityStr);

            string priceStr = rd["PRICE"].ToString();
            double price = Convert.ToDouble(priceStr);

            string total = rd["TOTAL"].ToString();

            CartDetails cd = new CartDetails
            {
                Id = id,
                Name = name,
                Image = image,
                Quantity = quantity,
                Price = price,
                Total = total,
                Username = cusername
            };

            return cd;
        }

        public List<CartDetails> SelectAll(string username)
        {
            List<CartDetails> cdList = new List<CartDetails>();

            string connStr = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(connStr);

            string sqlStmt = "Select * from Cart where Username = @paraUsername";

            SqlCommand cmd = new SqlCommand(sqlStmt, myConn);
            cmd.Parameters.AddWithValue("@paraUsername", username);

            myConn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                CartDetails cd = Read(dr);
                cdList.Add(cd);
            }
            myConn.Close();

            return cdList;
        }

        public int Insert(BLL.Cart c)
        {
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlStmt = "INSERT INTO Cart (NAME, IMAGE, PRICE, QUANTITY,TOTAL,Username)" +
                             "VALUES (@paraName,@paraImage,@paraPrice,@paraQuantity,@paraTotal,@paraUsername)";

            int result = 0;    // Execute NonQuery return an integer value
            SqlCommand sqlCmd = new SqlCommand(sqlStmt, myConn);

            sqlCmd.Parameters.AddWithValue("@paraName", c.Name);
            sqlCmd.Parameters.AddWithValue("@paraImage", c.Image);
            sqlCmd.Parameters.AddWithValue("@paraPrice", c.Price);
            sqlCmd.Parameters.AddWithValue("@paraQuantity", c.Quantity);
            sqlCmd.Parameters.AddWithValue("@paraTotal", c.Total);
            sqlCmd.Parameters.AddWithValue("@paraUsername", c.Username);

            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();

            myConn.Close();

            return result;
        }

        public int Delete(CartDetails cd)
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
            sqlCmd.Parameters.AddWithValue("@paraID", cd.Id);
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

        public int Update(CartDetails cd)
        {
            int result = 0;
            SqlCommand sqlCmd = new SqlCommand();

            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            // Step 2 - Instantiate SqlCommand instance to add record 
            //          with INSERT statement
            string sqlStmt = "UPDATE Cart SET QUANTITY = @paraQuantity, TOTAL = @paraTotal where Id = @paraId ";

            sqlCmd = new SqlCommand(sqlStmt, myConn);

            // Step 3 : Add each parameterised variable with value
            sqlCmd.Parameters.AddWithValue("@paraQuantity", cd.Quantity);
            sqlCmd.Parameters.AddWithValue("@paraId", cd.Id);
            sqlCmd.Parameters.AddWithValue("@paraTotal", cd.Total);


            // Step 4 Open connection the execute NonQuery of sql command   
            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();

            // Step 5 :Close connection
            myConn.Close();

            return result;
        }
    }
}