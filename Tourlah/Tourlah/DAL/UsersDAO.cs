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
        public int CreateUser(Users use)
        {

            int result = 0;
            SqlCommand sqlCmd = new SqlCommand();


            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);


            string sqlStmt = "INSERT INTO Users ( name, password) " +
                "VALUES (@pararegisterUsername,@pararegisterPassword)";
            sqlCmd = new SqlCommand(sqlStmt, myConn);


            sqlCmd.Parameters.AddWithValue("@pararegisterUsername", use.Username);
            sqlCmd.Parameters.AddWithValue("@pararegisterPassword", use.Password);



            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();

            // Step 5 :Close connection
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
                Password = password
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


    }
}
