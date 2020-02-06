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
    public class RewardsDAO
    {
        public List<Rewards> SelectAll()
        {
            string DBConnect = ConfigurationManager.ConnectionStrings["Connstr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlStmt = "Select * from reward";
            SqlDataAdapter da = new SqlDataAdapter(sqlStmt, myConn);

            DataSet ds = new DataSet();

            da.Fill(ds);

            List<Rewards> rewList = new List<Rewards>();
            int rec_cnt = ds.Tables[0].Rows.Count;
            for (int i = 0; i < rec_cnt; i++)
            {
                DataRow row = ds.Tables[0].Rows[i];
                int id = int.Parse(row["id"].ToString());
                string name = row["reward_name"].ToString();
                int amount = int.Parse(row["reward_amt"].ToString());
                int quantity = int.Parse(row["reward_qty"].ToString());
                string image = row["reward_image"].ToString();
                Rewards obj = new Rewards(id, name, amount, quantity, image);
                rewList.Add(obj);
            }
            return rewList;
        }
        public List<Rewards> SelectOne(string id)
        {

            string DBConnect = ConfigurationManager.ConnectionStrings["Connstr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlstmt = "Select * from reward where id = @paraid";
            SqlDataAdapter da = new SqlDataAdapter(sqlstmt, myConn);
            da.SelectCommand.Parameters.AddWithValue("@paraid", id);

            DataSet ds = new DataSet();
            da.Fill(ds);
            int rec_cnt = ds.Tables[0].Rows.Count;

            List<Rewards> rewList = new List<Rewards>();
            for (int i = 0; i < rec_cnt; i++)
            {
                DataRow row = ds.Tables[0].Rows[i];
                int idd = int.Parse(row["id"].ToString());
                string name = row["reward_name"].ToString();
                int amount = int.Parse(row["reward_amt"].ToString());
                int quantity = int.Parse(row["reward_qty"].ToString());
                string image = row["reward_image"].ToString();
                Rewards obj = new Rewards(idd, name, amount, quantity, image);
                rewList.Add(obj);
            }
            return rewList;
        }

        public static Rewards Read(SqlDataReader rd)
        {
            int id = int.Parse(rd["id"].ToString());
            string name = rd["reward_name"].ToString();
            int amount = int.Parse(rd["reward_amt"].ToString());
            int quantity = int.Parse(rd["reward_qty"].ToString());
            string image = rd["reward_image"].ToString();


            Rewards rw = new Rewards
            {
                idd = id,
                reward_name = name,
                reward_amt = amount,
                reward_qty = quantity,
                reward_image = image
            };
            return rw;

        }

        public Rewards ChooseOne(string id)
        {
            Rewards rw = null;
            string DBConnect = ConfigurationManager.ConnectionStrings["Connstr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlstmt = "Select * from reward where id = @paraid";
            SqlCommand cmd = new SqlCommand(sqlstmt, myConn);
            cmd.Parameters.AddWithValue("@paraid", id);

            myConn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                rw = Read(dr);
            }
            myConn.Close();

            return rw;
        }

        public int Insert(Rewards rew)
        {
            int result = 0;
            SqlCommand sqlCmd = new SqlCommand();

            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlStmt = "INSERT INTO reward (reward_name, reward_amt, reward_qty, reward_image)" +
                "VALUES (@paraRewardName, @paraRewardAmount, @paraRewardQuantity, @paraRewardImage)";

            sqlCmd = new SqlCommand(sqlStmt, myConn);
            sqlCmd.Parameters.AddWithValue("@paraRewardName", rew.reward_name);
            sqlCmd.Parameters.AddWithValue("@paraRewardAmount", rew.reward_amt);
            sqlCmd.Parameters.AddWithValue("@paraRewardQuantity", rew.reward_qty);
            sqlCmd.Parameters.AddWithValue("@paraRewardImage", rew.reward_image);

            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();

            myConn.Close();

            return result;
            
        }

        public int UpdateReward(Rewards rew)
        {
            int result = 0;
            SqlCommand sqlCmd = new SqlCommand();

            string DBConnect = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(DBConnect);

            string sqlStmt = "UPDATE reward SET reward_name = @paraRewardName, reward_amt = @paraRewardAmount, reward_qty = @paraRewardQuantity WHERE id = @paraid";

            sqlCmd = new SqlCommand(sqlStmt, myConn);
            sqlCmd.Parameters.AddWithValue("@paraid", rew.idd);
            sqlCmd.Parameters.AddWithValue("@paraRewardName", rew.reward_name);
            sqlCmd.Parameters.AddWithValue("@paraRewardAmount", rew.reward_amt);
            sqlCmd.Parameters.AddWithValue("@paraRewardQuantity", rew.reward_qty);

            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();

            myConn.Close();
            return result;
        }

        public static int updatedecreasequantity( string userid,string rewardqty)
        {
            string connStr = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;
            SqlConnection myConn = new SqlConnection(connStr);

            string sqlStmt = @"UPDATE reward SET reward_qty = @paraqty - 1 where id = @paraid";

            int result = 0;    // Execute NonQuery return an integer value
            SqlCommand sqlCmd = new SqlCommand(sqlStmt, myConn);
            sqlCmd.Parameters.AddWithValue("@paraqty", rewardqty);
            sqlCmd.Parameters.AddWithValue("@paraid", userid);
            myConn.Open();
            result = sqlCmd.ExecuteNonQuery();
            myConn.Close();

            return result;
        }
    }
}