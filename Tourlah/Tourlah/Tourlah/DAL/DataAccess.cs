using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace WebApplication2.DAL
{
    public class S
    {
        private static string myConnectionString;

        //static DataAccess()
        //{
        //    myConnectionString = WebConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
        //}

        public static DataTable selectQuery(string query)
        {
            DataTable dt = new DataTable();
            SqlConnection cnn = new SqlConnection(myConnectionString);
            cnn.Open();
            SqlCommand cmd = new SqlCommand(query, cnn);
            dt.Load(cmd.ExecuteReader());
            cnn.Close();
            return dt;
        }
    }
}