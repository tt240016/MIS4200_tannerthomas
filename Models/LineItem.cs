using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MIS4200_tt240016.Models
{
    public class LineItem
    {
        public int lineItemID { get; set; }
        public int qtyOrdered { get; set; }
        public decimal price { get; set; }
        public int productID { get; set; }
        public virtual Product product { get; set; }
        public int orderID { get; set; }
        public virtual Orders orders { get; set; }


    }
}