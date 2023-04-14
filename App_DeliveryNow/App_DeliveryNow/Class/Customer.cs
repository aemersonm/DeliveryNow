using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace App_DeliveryNow.Class
{
    public class Customer
    {
        public string customer_name { get; set; }

        public Customer(string customerName)
        {
            customer_name = customerName;
        }
    }
}