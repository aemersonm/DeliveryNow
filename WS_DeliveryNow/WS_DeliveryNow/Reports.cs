//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WS_DeliveryNow
{
    using System;
    using System.Collections.Generic;
    
    public partial class Reports
    {
        public string report_id { get; set; }
        public string order_id { get; set; }
        public string customer_username { get; set; }
        public string company_id { get; set; }
        public string report_subject { get; set; }
        public string report_description { get; set; }
    
        public virtual Companies Companies { get; set; }
        public virtual Customers Customers { get; set; }
        public virtual Orders Orders { get; set; }
    }
}
