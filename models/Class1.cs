using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BookingSubSystem.models
{
    public class ServiceAddon
    {
        public string Description { get; set; }
        public double Price { get; set; }
        public int ServiceAddonId { get; set; }
    }

    public class Service
    {
        public string Category { get; set; }
        public string Description { get; set; }
        public double Price { get; set; }
        public int ServiceId { get; set; }
    }

    public class BookingData
    {
        public double AdditionalCharge { get; set; }
        public DateTime BookingDate { get; set; }
        public int BookingId { get; set; }
        public int CustomerAddress { get; set; }
        public int CustomerId { get; set; }
        public string CustomerName { get; set; }
        public string CustomerPhone { get; set; }
        public object EmployeeId { get; set; } // Assuming it can be null
        public string PropertySize { get; set; }
        public Service Service { get; set; }
        public List<ServiceAddon> ServiceAddons { get; set; }
        public string Status { get; set; }
        public DateTime TimeArrival { get; set; }
        public double TotalPrice { get; set; }
    }

    public class Success
    {
        public List<BookingData> BookingData { get; set; }
    }

    public class RootObject
    {
        public Success Success { get; set; }
    }

}