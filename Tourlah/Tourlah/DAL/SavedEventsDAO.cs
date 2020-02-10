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
    public class SavedEventsDAO
    {
        public int FavEvent(SavedEvents Seve)
        {
            // Execute NonQuery return an integer value
            int result = 0;
            SqlCommand sqlCmd = new SqlCommand();
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);
            string sqlStmt = "INSERT INTO SavedEvents ( username, eventsid,eventname,eventdescription,eventdate,location,maintype,secondtype) " +
                "VALUES (@parausername,@paraeventsid,@paraeventName,@paraeventDesc,@paraeventdate,@paraeventlocation,@paramaintype,@parasecondtype)";
            sqlCmd = new SqlCommand(sqlStmt, myConn);
            sqlCmd.Parameters.AddWithValue("@parausername", Seve.Username);
            sqlCmd.Parameters.AddWithValue("@paraeventsid", Seve.EventsId);
            sqlCmd.Parameters.AddWithValue("@paraeventname", Seve.eventName);
            sqlCmd.Parameters.AddWithValue("@paraeventDesc", Seve.eventDescription);
            sqlCmd.Parameters.AddWithValue("@paraeventdate", Seve.eventDate);
            sqlCmd.Parameters.AddWithValue("@paraeventlocation", Seve.Location);
            sqlCmd.Parameters.AddWithValue("@paramaintype", Seve.MainType);
            sqlCmd.Parameters.AddWithValue("@parasecondtype", Seve.SecondType);



            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();
            myConn.Close();
            return result;
        }
        
        public List<SavedEvents> selectfavorties(string username)
        {
            
            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlStmt = "Select * from SavedEvents where username = @parausername";
            SqlDataAdapter da = new SqlDataAdapter(sqlStmt, myConn);
            da.SelectCommand.Parameters.AddWithValue("@parausername", username);

            DataSet ds = new DataSet();

            da.Fill(ds);

            List<SavedEvents> favouritelist = new List<SavedEvents>();
            int rec_cnt = ds.Tables[0].Rows.Count;
            for (int i = 0; i < rec_cnt; i++)
            {
                DataRow row = ds.Tables[0].Rows[i];  // Sql command returns only one record
                string Username=row["username"].ToString();
                string eventsid =row["eventsid"].ToString();
                string eventname = row["eventname"].ToString();
                string eventdescription = row["eventdescription"].ToString();
                DateTime eventdate = Convert.ToDateTime(row["eventdate"]);
                string maintype = row["maintype"].ToString();
                string secondtype = row["secondtype"].ToString();
                string location = row["location"].ToString(); ;
                SavedEvents obj = new SavedEvents(username,eventsid,eventname,eventdescription,eventdate,location,maintype,secondtype);
                favouritelist.Add(obj);
            }

            return favouritelist;
        }
    }
}