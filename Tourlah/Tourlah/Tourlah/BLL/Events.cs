using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication2.DAL;

namespace WebApplication2.BLL   
{
    public class Events
    {
        public int Id { get; set;  }
        public string EventName { get; set; }
        public string EventDescription { get; set; }
        public DateTime EventDate { get; set; }
        public string MainType { get; set; }
        public string SecondType { get; set; }
        public string Location { get; set; }

        public Events()
        {

        }
        public Events(int eventId,string eventname,string eventdescription,DateTime eventdate,string maintype,string secondtype,string location)

        {
            Id = eventId;
            EventName = eventname;
            EventDescription = eventdescription;
            EventDate = eventdate;
            MainType = maintype;
            SecondType = secondtype;
            Location = location;

        }
        public int AddEvent()
        {
            EventsDAO dao = new EventsDAO();
            int result = dao.CreateEvents(this);
            return result;
        }
        public List<Events> Allevents()
        {
            EventsDAO dao = new EventsDAO();
            return dao.SelectAll();
        }
    }
    
}