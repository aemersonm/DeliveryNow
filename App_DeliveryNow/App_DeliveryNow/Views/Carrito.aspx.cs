using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Caching;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace App_DeliveryNow.Views
{
    public partial class Carrito : System.Web.UI.Page
    {
        Reference_DeliveryNow.WS_App refWS = new Reference_DeliveryNow.WS_App();

        protected void Page_Load(object sender, EventArgs e)
        {
            String productID = "1";
            String productID2 = "2";
            int price1 = 0;
            int price2 = 0;
            

            GdProducts.DataSource = refWS.displayProd(productID, productID2);
            GdProducts.DataBind();

            price1 = refWS.displayPrice(productID);
            price2 = refWS.displayPrice2(productID2);

            int total = price1 + price2;
            lblTotal.Text = "$"+total.ToString();
        }

        protected void btnValidateUsr_Click(object sender, EventArgs e)
        {
            

            string addr = refWS.getUserAdd(usertxt.Text);
            direcciontxt.Text = addr;

            string payment = refWS.getUserPM(usertxt.Text);
            paymentTxt.Text = payment;
            if ((payment != "Efectivo") && (payment != "PayPal"))
            {
                tarjetaTxt.Enabled = true; 
                vencimientoTxt.Enabled = true;
                cvvTxt.Enabled = true;

            }


        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            Response.Redirect("Tienda.aspx");
        }
    }
}