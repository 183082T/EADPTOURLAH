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


        public SavedEvents()
        {

        }
        public SavedEvents(string username,string eventsid)
        {
            Username = username;
            EventsId = eventsid;
        }
        public int FavouriteEvent()
        {
            SavedEventsDAO dao= new SavedEventsDAO();
            int result = dao.FavEvent(this);
            return result;
        }




    }
    
}