using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication2.DAL;

namespace WebApplication2.BLL
{
    public class productDetails
    {
        public string Id { get; set; }
        public string Image { get; set; }
        public string Name { get; set; }
        public string Desc { get; set; }
        public string Price { get; set; }


        public productDetails()
        {

        }

        public productDetails(string id, string image, string name, string desc, string price)
        {
            this.Id = id;
            this.Image = image;
            this.Name = name;
            this.Desc = desc;
            this.Price = price;
        }

        public productDetails GetProductById(string Id)
        {
            productDetailsDAO dao = new productDetailsDAO();
            return dao.SelectById(Id);
        }
    }
}