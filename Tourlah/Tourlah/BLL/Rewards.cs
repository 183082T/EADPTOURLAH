using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication2.DAL;

namespace WebApplication2.BLL
{
    public class Rewards
    {
        public int idd { get; set; }
        public string reward_name { get; set; }
        public int reward_amt { get; set; }
        public int reward_qty { get; set; }
        public string reward_image { get; set; }
        public string reward_type { get; set; }
        public int reward_points { get; set; }

        public Rewards()
        {

        }

        public Rewards(int id, string rewardName, int rewardAmt, int rewardQty, string rewardImg, string rewardType)
        {
            this.idd = id;
            this.reward_name = rewardName;
            this.reward_amt = rewardAmt;
            this.reward_qty = rewardQty;
            this.reward_image = rewardImg;
            this.reward_type = rewardType;
            this.reward_points = ComputePoints();
        }

        public Rewards(string rewardName, int rewardAmt, int rewardQty, string rewardImg, string rewardType)
        {
            this.reward_name = rewardName;
            this.reward_amt = rewardAmt;
            this.reward_qty = rewardQty;
            this.reward_image = rewardImg;
            this.reward_type = rewardType;
        }

        public int ComputePoints()
        {
            TourPackageDAO
        }

        public List<Rewards> GetAllRewards()
        {
            RewardsDAO dao = new RewardsDAO();
            return dao.SelectAll();
        }

        public List<Rewards> GetOneReward(string id)
        {
            RewardsDAO dao = new RewardsDAO();
            return dao.SelectOne(id);
        }

        public Rewards Choose(string id)
        {
            RewardsDAO dao = new RewardsDAO();
            return dao.ChooseOne(id);
        }

        public int CreateReward()
        {
            RewardsDAO dao = new RewardsDAO();
            int result = dao.Insert(this);
            return result;
        }

        public int UpdateReward()
        {
            RewardsDAO dao = new RewardsDAO();
            int result = dao.UpdateReward(this);
            return result;
        }

        public int decreasequantity(string userid,string rewardqty )
        {
            return RewardsDAO.updatedecreasequantity(userid,rewardqty );
        }
    }
}
