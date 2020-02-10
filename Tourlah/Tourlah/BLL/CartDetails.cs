using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication2.DAL;

namespace WebApplication2.BLL
{
    public class CartDetails
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public double Price { get; set; }
        public double Quantity { get; set; }
        public string Image { get; set; }
        public string Total { get; set; }
        public string Username { get; set; }
        public CartDetails()
        {

        }

        public CartDetails(string cusername, int id, string name, double price, double quantity, string image, string total)
        {
            Username = cusername;
            Id = id;
            Name = name;
            Price = price;
            Quantity = quantity;
            Image = image;
            Total = total;
        }
        public int UpdateCartQuantity()
        {
            CartDAO dao = new CartDAO();
            int result = dao.Update(this);
            return result;
        }
        public int DeleteItem()
        {
            CartDAO dao = new CartDAO();
            int result = dao.Delete(this);
            return result;
        }
        public List<CartDetails> GetAllCartP(string username)
        {
            CartDAO dao = new CartDAO();
            return dao.SelectAll(username);
        }
    }
}