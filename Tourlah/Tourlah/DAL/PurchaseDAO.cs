using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using WebApplication2.BLL;

namespace WebApplication2.DAL
{
    public class PurchaseDAO
    {
        public int InsertPurchaseDetails(string id, string packname, string packsize, string packdatefrom, string packdateto, string packtype, string packtotalcost)
        {
            int result = 0;
            SqlCommand sqlCmd = new SqlCommand();
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlStmt = "INSERT INTO PurchaseLog ( userId, tourpackageName, tourpackageSize ,tourpackageDateFrom , tourpackageDateTo, tourpackageType, tourpackageTotalCost ) " +
                "VALUES (@paraid,@parapackname ,@parapacksize,@parapackdatefrom, @parapackdateto,@parapacktype,@parapacktotalcost)";
            sqlCmd = new SqlCommand(sqlStmt, myConn);
            sqlCmd.Parameters.AddWithValue("@paraid", id);
            sqlCmd.Parameters.AddWithValue("@parapackname", packname);
            sqlCmd.Parameters.AddWithValue("@parapacksize", packsize);
            sqlCmd.Parameters.AddWithValue("@parapackdatefrom", packdatefrom);
            sqlCmd.Parameters.AddWithValue("@parapackdateto", packdateto);
            sqlCmd.Parameters.AddWithValue("@parapacktype", packtype);
            sqlCmd.Parameters.AddWithValue("@parapacktotalcost", packtotalcost);

            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();
            // Step 5 :Close connection
            myConn.Close();

            return result;
        }

        public static Purchase Read(SqlDataReader rd)
        {
            string username = rd["userId"].ToString();
            string packname = rd["tourpackageName"].ToString();
            string packsize = rd["tourpackageSize"].ToString();
            string packdatefrom = rd["tourpackageDateFrom"].ToString();
            string packdateto = rd["tourpackageDateTo"].ToString();
            string packtype = rd["tourpackageType"].ToString();
            string packtotalcost = rd["tourpackageTotalCost"].ToString();


            Purchase pr = new Purchase
            {
                UserName = username,
                PackageName = packname,
                PackageSize = packsize,
                PackageDateFrom = packdatefrom,
                PackageDateTo = packdateto,
                PackageType = packtype,
                PackageTotalCost = packtotalcost
            };
            return pr;
        }

        public List<Purchase> SelectByUsername(string username)
        {
            List<Purchase> tdList = new List<Purchase>();

            string connStr = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(connStr);

            string sqlstmt = @"SELECT * From PurchaseLog where userId = @paraname";

            SqlCommand cmd = new SqlCommand(sqlstmt, myConn);
            cmd.Parameters.AddWithValue("@paraname", username);

            myConn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Purchase pr = Read(dr);
                tdList.Add(pr);
            }
            myConn.Close();

            return tdList;
        }
    }
}