using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace App_DeliveryNow.Class
{
    public class ProductUnits
    {
        public string product_ID { get; set; }
        public int productUnits { get; set; }

        public ProductUnits(string productID, int ProductUnits)
        {
            product_ID = productID;
            productUnits = ProductUnits;
        }

    }
}