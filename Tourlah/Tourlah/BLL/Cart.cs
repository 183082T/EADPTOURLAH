using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication2.DAL;

namespace WebApplication2.BLL
{
    public class Cart
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Image { get; set; }
        public int Quantity { get; set; }
        public string Price { get; set; }
        public double Total { get; set; }
        public string Username { get; set; }

        public Cart()
        {

        }

        public Cart(string username, string name, string image, int quantity, string price, double total)
        {
            Username = username;
            Name = name;
            Image = image;
            Price = price;
            Quantity = quantity;
            Total = total;
        }

        public int AddCart()
        {
            CartDAO dao = new CartDAO();
            int result = dao.Insert(this);
            return result;
        }
    }
}