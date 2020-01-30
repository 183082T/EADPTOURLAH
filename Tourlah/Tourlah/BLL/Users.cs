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


        public Users()
        {

        }

        public Users(string name, string password)
        {
            Username = name;
            Password = password;
        }

        public int Create()
        {
            UsersDAO dao = new UsersDAO();
            int result = dao.CreateUser(this);
            return result;
        }

        public Users GetUsersByUsername(string name)
        {
            UsersDAO dao = new UsersDAO();
            return dao.SelectUsersByUsername(name);
        }



    }
}
