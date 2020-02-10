using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication2.DAL;

namespace WebApplication2.BLL
{
    public class UserRating
    {
        public string Id { get; set; }
        public string Username { get; set; }
        public string Tp { get; set; }
        public string Feedback { get; set; }
        public string Rating { get; set; }

        public UserRating()
        {

        }

        public UserRating(string id, string name, string tp, string feedback, string rating)
        {
            Id = id;
            Username = name;
            Tp = tp;
            Rating = rating;
            Feedback = feedback;
        }

        public int CreateReview(string name, string tp, string feedback, string rating)
        {
            UserRatingDAO dao = new UserRatingDAO();
            int result = dao.InsertReview(name, tp, feedback, rating);
            return result;
        }
    }
}