using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication2.DAL;

namespace WebApplication2.BLL
{
    public class updateProduct
    {

        public int ID { get; set; }
        public string Name { get; set; }
        public string Desc { get; set; }
        public double Price { get; set; }

        public updateProduct()
        {

        }

        public updateProduct(int id, string name, string desc, double price)
        {
            ID = id;
            Name = name;
            Desc = desc;
            Price = price;

        }

        public int UpdateProduct()
        {
            updateProductDAO dao = new updateProductDAO();
            int result = dao.Update(this);
            return result;
        }

        public int DeleteProduct()
        {
            updateProductDAO dao = new updateProductDAO();
            int result = dao.Delete(this);
            return result;
        }

        public List<updateProduct> GetAllProducts()
        {
            updateProductDAO dao = new updateProductDAO();
            return dao.SelectAll();
        }


        public updateProduct GetProductById(int id)
        {
            updateProductDAO dao = new updateProductDAO();
            return dao.SelectById(id);
        }
    }
}