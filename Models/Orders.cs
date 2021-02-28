using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MIS4200_tt240016.Models
{
    public class Orders
    {
        public int ordersID { get; set; }
        public string description { get; set; }
        public DateTime orderDate { get; set; }
        public int customerID { get; set; }

        // have to be able to go back the other way -> the "one" side
        public virtual Customer customer { get; set; }
        public ICollection<LineItem> lineItem { get; set; }



    }
}