using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace App_DeliveryNow.Views
{
    public partial class Tienda : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnStore1_Click(object sender, EventArgs e)
        {
            Response.Redirect("NikeShop.aspx");
        }
    }

}