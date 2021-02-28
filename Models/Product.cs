using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MIS4200_tt240016.Models
{
    public class Product
    {
        // this will be primary key; spelling has to match but case does not
        public int productID { get; set; }
        public string description { get; set; }
        public decimal unitCost { get; set; }

        public ICollection<LineItem> lineItem { get; set; }


    }
}