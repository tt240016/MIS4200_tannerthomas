using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MIS4200_tt240016.Models
{
    public class Customer
    {
        // accessor methods
        public int customerID { get; set; }

        // shortcut for above: "prop" then hit tab twice
        // public int MyProperty { get; set; }

        public string firstName { get; set; }
        public string lastName { get; set; }
        public string email { get; set; }
        public string phone { get; set; }
        public DateTime customerSince { get; set; }
        public string fullName
        {
            get
            {
                return lastName + ", " + firstName;
            }
        }
        // bunch of properties of some kind; can be used for foreign relationships
        // connection that gives us the "many" side
        public ICollection<Orders> orders { get; set; }
    }
}