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
    public class updateProductDAO
    {
        public List<updateProduct> SelectAll()
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
            List<updateProduct> upList = new List<updateProduct>();
            int rec_cnt = ds.Tables[0].Rows.Count;
            for (int i = 0; i < rec_cnt; i++)
            {
                DataRow row = ds.Tables[0].Rows[i];  // Sql command returns only one record
                string idStr = row["ID"].ToString();
                int id = Convert.ToInt32(idStr);
                string name = row["NAME"].ToString();
                string desc = row["DESCRIPTION"].ToString();
                string priceStr = row["PRICE"].ToString();
                double price = Convert.ToDouble(priceStr);

                updateProduct obj = new updateProduct(id, name, desc, price);
                upList.Add(obj);
            }

            return upList;
        }

        public updateProduct SelectById(int id)
        {
            //Step 1 -  Define a connection to the database by getting
            //          the connection string from web.config
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            //Step 2 -  Create a DataAdapter to retrieve data from the database table
            string sqlStmt = "Select * from Products where ID = @paraID";
            SqlDataAdapter da = new SqlDataAdapter(sqlStmt, myConn);

            da.SelectCommand.Parameters.AddWithValue("@paraID", id);

            //Step 3 -  Create a DataSet to store the data to be retrieved
            DataSet ds = new DataSet();

            //Step 4 -  Use the DataAdapter to fill the DataSet with data retrieved
            da.Fill(ds);

            //Step 5 -  Read data from DataSet.
            updateProduct up = null;
            int rec_cnt = ds.Tables[0].Rows.Count;
            if (rec_cnt == 1)
            {
                DataRow row = ds.Tables[0].Rows[0];  // Sql command returns only one record
                string name = row["NAME"].ToString();
                string desc = row["DESCRIPTION"].ToString();
                string priceStr = row["PRICE"].ToString();
                double price = Convert.ToDouble(priceStr);
                up = new updateProduct(id, name, desc, price);
            }
            else
            {
                up = null;
            }

            return up;
        }

        public int Update(updateProduct up)
        {
            int result = 0;
            SqlCommand sqlCmd = new SqlCommand();

            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            // Step 2 - Instantiate SqlCommand instance to add record 
            //          with INSERT statement
            string sqlStmt = "UPDATE Products SET NAME = @paraName, DESCRIPTION = @paraDesc, " +
                "PRICE = @paraPrice where ID = @paraID ";

            sqlCmd = new SqlCommand(sqlStmt, myConn);

            // Step 3 : Add each parameterised variable with value
            sqlCmd.Parameters.AddWithValue("@paraID", up.ID);
            sqlCmd.Parameters.AddWithValue("@paraName", up.Name);
            sqlCmd.Parameters.AddWithValue("@paraDesc", up.Desc);
            sqlCmd.Parameters.AddWithValue("@paraPrice", up.Price);

            // Step 4 Open connection the execute NonQuery of sql command   
            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();

            // Step 5 :Close connection
            myConn.Close();

            return result;
        }

        public int Delete(updateProduct up)
        {
            int result = 0;
            SqlCommand sqlCmd = new SqlCommand();

            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            // Step 2 - Instantiate SqlCommand instance to add record 
            //          with INSERT statement
            string sqlStmt = "DELETE Products where ID = @paraID ";

            sqlCmd = new SqlCommand(sqlStmt, myConn);

            // Step 3 : Add each parameterised variable with value
            sqlCmd.Parameters.AddWithValue("@paraID", up.ID);
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