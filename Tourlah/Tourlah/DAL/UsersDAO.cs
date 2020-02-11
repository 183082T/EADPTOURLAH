using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using WebApplication2.BLL;

namespace WebApplication2.DAL
{
    public class UsersDAO
    {
        public int CreateUser(string name, string password)
        {

            int result = 0;
            SqlCommand sqlCmd = new SqlCommand();


            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);


            string sqlStmt = "INSERT INTO Users ( name, password, points) " +
                "VALUES (@pararegisterUsername,@pararegisterPassword, @pararegisterPoints)";
            sqlCmd = new SqlCommand(sqlStmt, myConn);


            sqlCmd.Parameters.AddWithValue("@pararegisterUsername", name);
            sqlCmd.Parameters.AddWithValue("@pararegisterPassword", password);
            



            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();

            myConn.Close();

            return result;
        }

        public static Users Read(SqlDataReader rd)
        {
            string name = rd["name"].ToString();
            string password = rd["password"].ToString();
            

            Users use = new Users
            {
                Username = name,
                Password = password,
                
            };
            return use;

        }

        public Users SelectUsersByUsername(string name)
        {
            Users use = null;

            string connStr = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(connStr);


            string sqlstmt = @"Select * from Users where name = @pararegisterUsername";

            SqlCommand cmd = new SqlCommand(sqlstmt, myConn);

            cmd.Parameters.AddWithValue("@pararegisterUsername", name);

            myConn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                use = Read(dr);
            }
            myConn.Close();

            return use;

        }

        public static int updateGT(string name, string gt)
        {
            string connStr = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(connStr);

            string sqlStmt = @"UPDATE Users SET grandTotal = @paragt where name = @paraname";

            int result = 0;    // Execute NonQuery return an integer value
            SqlCommand sqlCmd = new SqlCommand(sqlStmt, myConn);
            sqlCmd.Parameters.AddWithValue("@paraname", name);
            sqlCmd.Parameters.AddWithValue("@paragt", gt);
            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();
            myConn.Close();

            return result;
        }

    }
}
