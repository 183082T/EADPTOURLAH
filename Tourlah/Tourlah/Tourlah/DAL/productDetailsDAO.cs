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
    public class productDetailsDAO
    {
        public BLL.productDetails SelectById(string Id)
        {
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlstmt = "Select * from Products where ID = @paraId";
            SqlDataAdapter da = new SqlDataAdapter(sqlstmt, myConn);
            da.SelectCommand.Parameters.AddWithValue("@paraId", Id);

            DataSet ds = new DataSet();
            da.Fill(ds);
            //rec_cnt is to count the number of roles in the db for customer
            int rec_cnt = ds.Tables[0].Rows.Count;

            BLL.productDetails obj = null;
            if (rec_cnt > 0)
            {
                DataRow row = ds.Tables[0].Rows[0];
                string id = row["ID"].ToString();
                string image = row["IMAGE"].ToString();
                string name = row["NAME"].ToString();
                string desc = row["DESCRIPTION"].ToString();
                string price = row["PRICE"].ToString();

                obj = new BLL.productDetails(id, image, name, desc, price);
            }
            return obj;
        }
    }
}