using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication2.DAL;

namespace WebApplication2.BLL
{
    public class SavedEvents
    {
        public string Username { get; set; }
        public string EventsId { get; set; }
        public string eventName { get; set; }
        public string eventDescription { get; set; }
        public DateTime eventDate { get; set; }
        public string Location { get; set; }
        public string MainType { get; set; }
        public string SecondType { get; set; }



        public SavedEvents()
        {

        }
        public SavedEvents(string username,string eventsid,string eventname,string eventdescription,DateTime eventdate,string location,string Maintype,string Secondtype)
        {
            Username = username;
            EventsId = eventsid;
            eventName = eventname;
            eventDescription = eventdescription;
            eventDate = eventdate;
            Location = location;
            MainType = Maintype;
            SecondType = Secondtype;

        }
        public int FavouriteEvent()
        {
            SavedEventsDAO dao= new SavedEventsDAO();
            int result = dao.FavEvent(this);
            return result;
        }
        public List<SavedEvents> AllFavourites(string username)
        {
            SavedEventsDAO dao = new SavedEventsDAO();
            return dao.selectfavorties(username);
        }



    }
    
}