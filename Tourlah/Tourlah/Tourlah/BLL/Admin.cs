using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication2.DAL;

namespace WebApplication2.BLL
{
    public class Admin
    {
        public string AdminName { get; set; }
        public string AdminPassword { get; set; }


        public Admin()
        {

        }

        public Admin(string adminname, string adminpassword)
        {
            AdminName = adminname;
            AdminPassword = adminpassword;
        }

        public Admin GetAdminByUsername(string adminname)
        {
            AdminDAO dao = new AdminDAO();
            return dao.SelectByAdminUsername(adminname);
        }
    }
}