using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication2.DAL;

namespace WebApplication2.BLL
{
    public class Users
    {
        public string Username { get; set; }
        public string Password { get; set; }
        public int Points { get; set; }
        public double GrandTotal { get; set; }


        public Users()
        {

        }

        public Users(string name, string password,int points,double gt)
        {
            Username = name;
            Password = password;
            Points = points;
            GrandTotal = gt;
        }

        public int Create(string name, string password)
        {
            UsersDAO dao = new UsersDAO();
            int result = dao.CreateUser(name,password);
            return result;
        }

        public Users GetUsersByUsername(string name)
        {
            UsersDAO dao = new UsersDAO();
            return dao.SelectUsersByUsername(name);
        }

        public int updateGT(string name, string gt)
        {
            return UsersDAO.updateGT(name, gt);
        }


    }
}
