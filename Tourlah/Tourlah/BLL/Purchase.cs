using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication2.DAL;

namespace WebApplication2.BLL
{
    public class Purchase
    {
        public string UserName { get; set; }
        public string PackageName { get; set; }
        public string PackageSize { get; set; }
        public string PackageDateFrom { get; set; }
        public string PackageDateTo { get; set; }
        public string PackageType { get; set; }
        public string PackageTotalCost { get; set; }

        public Purchase()
        {

        }
        public Purchase(string username, string packname, string packsize, string packdatefrom, string packdateto, string packtype, string packtotalcost)
        {
            UserName = username;
            PackageName = packname;
            PackageSize = packsize;
            PackageDateFrom = packdatefrom;
            PackageDateTo = packdateto;
            PackageType = packtype;
            PackageTotalCost = packtotalcost;
        }

        public int InsertPurchaseDetails(string id, string packname, string packsize, string packdatefrom, string packdateto, string packtype, string packtotalcost)
        {
            PurchaseDAO dao = new PurchaseDAO();
            int result = dao.InsertPurchaseDetails(id, packname, packsize, packdatefrom, packdateto, packtype, packtotalcost);
            return result;
        }

        public List<Purchase> SelectByUsername(string username)
        {
            PurchaseDAO dao = new PurchaseDAO();
            return dao.SelectByUsername(username);
        }

    }
}