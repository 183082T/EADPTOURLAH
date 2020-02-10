using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication2.DAL;

namespace WebApplication2.BLL
{
    public class Food
    {
        public int ID { get; set; }
        public string FoodName { get; set; }
        public string FoodInfo { get; set; }
        public string FoodPic { get; set; }
        public string PlaceName { get; set; }
        public string PlaceInfo { get; set; }
        public string PlaceAdd { get; set; }
        public string PlaceName2 { get; set; }
        public string PlaceInfo2 { get; set; }
        public string PlaceAdd2 { get; set; }
        public string PlaceName3 { get; set; }
        public string PlaceInfo3 { get; set; }
        public string PlaceAdd3 { get; set; }

        public Food()
        {

        }

        public Food(string foodName, string foodInfo, string foodPic, string placeName, string placeInfo, string placeAdd, string placeName2, string placeInfo2, string placeAdd2, string placeName3, string placeInfo3, string placeAdd3)
        {
            this.FoodName = foodName;
            this.FoodInfo = foodInfo;
            this.FoodPic = foodPic;
            this.PlaceName = placeName;
            this.PlaceInfo = placeInfo;
            this.PlaceAdd = placeAdd;
            this.PlaceName2 = placeName2;
            this.PlaceInfo2 = placeInfo2;
            this.PlaceAdd2 = placeAdd2;
            this.PlaceName3 = placeName3;
            this.PlaceInfo3 = placeInfo3;
            this.PlaceAdd3 = placeAdd3;
        }

        public int AddFood()
        {
            FoodDAO dao = new FoodDAO();
            int result = dao.Insert(this);
            return result;
        }

        public int UpdateFood()
        {
            FoodDAO dao = new FoodDAO();
            int result = dao.Update(this);
            return result;
        }

        public List<Food> GetAllFood()
        {
            FoodDAO dao = new FoodDAO();
            return dao.SelectAll();
        }
        public Food GetProductById(string FoodName)
        {
            FoodDAO dao = new FoodDAO();
            return dao.SelectById(FoodName);
        }
    }
}