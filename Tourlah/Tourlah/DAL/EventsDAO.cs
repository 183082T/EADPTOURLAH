using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using WebApplication2.BLL;

namespace WebApplication2.DAL
{
    public class EventsDAO
    {
        public List<Events> SelectAll()
        {
            //Step 1 -  Define a connection to the database by getting
            //          the connection string from web.config
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            //Step 2 -  Create a DataAdapter to retrieve data from the database table
            string sqlStmt = "Select * from Events";
            SqlDataAdapter da = new SqlDataAdapter(sqlStmt, myConn);

            //Step 3 -  Create a DataSet to store the data to be retrieved
            DataSet ds = new DataSet();

            //Step 4 -  Use the DataAdapter to fill the DataSet with data retrieved
            da.Fill(ds);

            //Step 5 -  Read data from DataSet to List
            List<Events> eventList = new List<Events>();
            int rec_cnt = ds.Tables[0].Rows.Count;
            for (int i = 0; i < rec_cnt; i++)
            {
                DataRow row = ds.Tables[0].Rows[i];  // Sql command returns only one record
                string eventname = row["eventname"].ToString();
                string eventdescription = row["eventdescription"].ToString();
                DateTime eventdate = Convert.ToDateTime(row["eventdate"].ToString());
                string maintype = row["maintype"].ToString();
                string secondtype = row["secondtype"].ToString();
                string location = row["location"].ToString(); ;
                Events obj = new Events(eventname,eventdescription,eventdate,maintype,secondtype,location);
                eventList.Add(obj);
            }

            return eventList;
        }
        public int CreateEvents(Events eve)
        {
            // Execute NonQuery return an integer value
            int result = 0;
            SqlCommand sqlCmd = new SqlCommand();

            //Step 1 -  Define a connection to the database by getting
            //          the connection string from web.config
            string DBConnect = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            // Step 2 - Instantiate SqlCommand instance to add record 
            //          with INSERT statement
            string sqlStmt = "INSERT INTO Events ( eventname, eventdescription,eventdate,  maintype, secondtype , location) " +
                "VALUES (@paraeventname,@paraeventdescription,@paraeventdate, @paramaintype, @parasecondtype, @paralocation)";
            sqlCmd = new SqlCommand(sqlStmt, myConn);

            // Step 3 : Add each parameterised variable with value
            sqlCmd.Parameters.AddWithValue("@paraeventname", eve.EventName);
            sqlCmd.Parameters.AddWithValue("@paraeventdescription", eve.EventDescription);
            sqlCmd.Parameters.AddWithValue("@paraeventdate", eve.EventDate);
            sqlCmd.Parameters.AddWithValue("@paramaintype", eve.MainType);
            sqlCmd.Parameters.AddWithValue("@parasecondtype", eve.SecondType);
            sqlCmd.Parameters.AddWithValue("@paralocation", eve.Location);

            // Step 4 Open connection the execute NonQuery of sql command   
            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();

            // Step 5 :Close connection
            myConn.Close();

            return result;
        }
    }
}