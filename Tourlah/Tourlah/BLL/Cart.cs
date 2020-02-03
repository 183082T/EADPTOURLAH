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

        public Cart()
        {

        }

        public Cart(string name, string image, int quantity, string price)
        {

            Name = name;
            Image = image;
            Price = price;
            Quantity = quantity;

        }

        public int AddCart()
        {
            CartDAO dao = new CartDAO();
            int result = dao.Insert(this);
            return result;
        }

        public List<Cart> GetAllCartP()
        {
            CartDAO dao = new CartDAO();
            return dao.SelectAll();
        }

        public int DeleteItem()
        {
            CartDAO dao = new CartDAO();
            int result = dao.Delete(this);
            return result;
        }
    }
}