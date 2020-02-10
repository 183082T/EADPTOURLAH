using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication2.DAL;

namespace WebApplication2.BLL
{
    public class TourPackage
    {
        public string TourPackageId { get; set; }
        public string TourPackageName { get; set; }
        public string ImageFile { get; set; }
        public string Description { get; set; }
        public string Duration { get; set; }
        public string Location { get; set; }
        public string OriginalPrice { get; set; }
        public string DiscountPrice { get; set; }
        public string PurchaseCount { get; set; }
        public string TourRating { get; set; }

        public TourPackage()
        {

        }
        public TourPackage(string tourid, string tourname, string image, string tourdescription, string tourduration, string tourlocation, string touroriginalprice, string tourdiscountprice, string purchasecount, string tourrating)
        {
            TourPackageId = tourid;
            TourPackageName = tourname;
            ImageFile = image;
            Description = tourdescription;
            Duration = tourduration;
            Location = tourlocation;
            OriginalPrice = touroriginalprice;
            DiscountPrice = tourdiscountprice;
            PurchaseCount = purchasecount;
            TourRating = tourrating;
        }

        public int CreateTourPackage(string tourname, string image, string tourdescription, string tourduration, string tourlocation, string touroriginalprice, string tourdiscountprice)
        {
            TourPackageDAO dao = new TourPackageDAO();
            int result = dao.CreateTourPackage(tourname, image, tourdescription, tourduration, tourlocation, touroriginalprice, tourdiscountprice);
            return result;
        }

        //public List<TourPackage> ViewAllTourPackage()
        //{
        //    TourPackageDAO dao = new TourPackageDAO();
        //    return dao.SelectAll();
        //}

        public TourPackage GetPackageById(string tourid)
        {
            return TourPackageDAO.SelectById(tourid);
        }

        public int UpdateTourPackage(string tourid, string tourname, string image, string tourdescription, string tourduration, string tourlocation, string touroriginalprice, string tourdiscountprice)
        {
            return TourPackageDAO.UpdateTourPackage(tourid, tourname, image, tourdescription, tourduration, tourlocation, touroriginalprice, tourdiscountprice);

        }

        public int updatecounter(string userid, string purchasecounter)
        {
            return TourPackageDAO.UpdateCounter(userid, purchasecounter);
        }

        public int AverageRating(string tourname, string tourrating)
        {
            return TourPackageDAO.UpdateAverageRating(tourname, tourrating);
        }
    }
}