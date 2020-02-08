using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication2.DAL;

namespace WebApplication2.BLL
{
    public class Product
    {
        public string Name { get; set; }
        public string Image { get; set; }
        public double Price { get; set; }
        public string Description { get; set; }
        public string Category { get; set; }

        public Product()
        {

        }


        public Product(string name, string image, double price, string description,
            string category)
        {
            Name = name;
            Image = image;
            Price = price;
            Description = description;
            Category = category;
        }

        public int AddProduct()
        {
            ProductDAO dao = new ProductDAO();
            int result = dao.Insert(this);
            return result;
        }
    }
}