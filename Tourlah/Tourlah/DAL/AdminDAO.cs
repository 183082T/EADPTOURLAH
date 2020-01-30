using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using WebApplication2.BLL;

namespace WebApplication2.DAL
{
    public class AdminDAO
    {
        public static Admin Read(SqlDataReader rd)
        {
            string adminname = rd["adminName"].ToString();
            string adminpassword = rd["adminPassword"].ToString();

            Admin ad = new Admin
            {
                AdminName = adminname,
                AdminPassword = adminpassword
            };
            return ad;

        }

        public Admin SelectByAdminUsername(string adminname)
        {
            Admin ad = null;

            string connStr = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(connStr);


            string sqlstmt = @"Select * from Administrators where adminName = @paraAdminName";

            SqlCommand cmd = new SqlCommand(sqlstmt, myConn);

            cmd.Parameters.AddWithValue("@paraAdminName", adminname);

            myConn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                ad = Read(dr);
            }
            myConn.Close();

            return ad;

        }
    }
}