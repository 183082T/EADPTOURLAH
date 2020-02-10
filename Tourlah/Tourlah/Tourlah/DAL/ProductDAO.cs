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
    public class ProductDAO
    {
        public List<Product> SelectAll()
        {
            //Step 1 -  Define a connection to the database by getting
            //          the connection string from web.config
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            //Step 2 -  Create a DataAdapter to retrieve data from the database table
            string sqlStmt = "Select * from Products";
            SqlDataAdapter da = new SqlDataAdapter(sqlStmt, myConn);

            //Step 3 -  Create a DataSet to store the data to be retrieved
            DataSet ds = new DataSet();

            //Step 4 -  Use the DataAdapter to fill the DataSet with data retrieved
            da.Fill(ds);

            //Step 5 -  Read data from DataSet to List
            List<Product> ProductList = new List<Product>();
            int rec_cnt = ds.Tables[0].Rows.Count;
            for (int i = 0; i < rec_cnt; i++)
            {
                DataRow row = ds.Tables[0].Rows[i];  // Sql command returns only one record
                string name = row["NAME"].ToString();
                string image = row["IMAGE"].ToString();
                string priceStr = row["PRICE"].ToString();
                double price = Convert.ToDouble(priceStr);
                string description = row["DESCRIPTION"].ToString();
                string category = row["IDCAT"].ToString();
                Product obj = new Product(name, image, price, description, category);
                ProductList.Add(obj);
            }

            return ProductList;
        }


        public int Insert(Product p)
        {
            // Execute NonQuery return an integer value
            int result = 0;
            SqlCommand sqlCmd = new SqlCommand();

            //Step 1 -  Define a connection to the database by getting
            //          the connection string from web.config
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            // Step 2 - Instantiate SqlCommand instance to add record 
            //          with INSERT statement
            string sqlStmt = "INSERT INTO Products (NAME,IMAGE,PRICE,DESCRIPTION,IDCAT) " +
                "VALUES (@paraName, @paraImage, @paraPrice, @paraDescription, @paraCategory)";
            sqlCmd = new SqlCommand(sqlStmt, myConn);

            // Step 3 : Add each parameterised variable with value
            sqlCmd.Parameters.AddWithValue("@paraName", p.Name);
            sqlCmd.Parameters.AddWithValue("@paraImage", p.Image);
            sqlCmd.Parameters.AddWithValue("@paraPrice", p.Price);
            sqlCmd.Parameters.AddWithValue("@paraDescription", p.Description);
            sqlCmd.Parameters.AddWithValue("@paraCategory", p.Category);

            // Step 4 Open connection the execute NonQuery of sql command   
            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();

            // Step 5 :Close connection
            myConn.Close();

            return result;
        }
    }
}