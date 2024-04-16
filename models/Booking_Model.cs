using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;

namespace BookingSubSystem.models
{
    public class service_addons
    {
        public string description { get; set; }
        public double price { get; set; }
        public int service_addon_id { get; set; }
    }

    public class Service
    {
        public string category { get; set; }
        public string description { get; set; }
        public double price { get; set; }
        public int service_id { get; set; }
    }

    public class BookingData
    {
        public double additional_charge { get; set; }
        public DateTime booking_date { get; set; }
        public int booking_id { get; set; }
        public int customer_address { get; set; }
        public int customer_id { get; set; }
        public string customer_name { get; set; }
        public string customer_phone { get; set; }
        public object employee_id { get; set; } // Assuming it can be null
        public string property_size { get; set; }
        public Service Service { get; set; }
        public List<service_addons> service_addons { get; set; }
        public string status { get; set; }
        public DateTime time_arrival { get; set; }
        public double total_price { get; set; }
    }

    public class Success
    {
        public List<BookingData> booking_data { get; set; }
    }

    public class ServiceResponse
    {
        public Service service_data { get; set; }
    }


    public class RootObject
    {
        public Success Success { get; set; }
        public List<Service> services_data { get; set; }
        public Service service_data { get; set; }

    }

}