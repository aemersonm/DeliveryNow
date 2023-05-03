using App_DeliveryNow.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace App_DeliveryNow.Views
{
    public partial class NikeShop : System.Web.UI.Page
    {

        string company_id = "NK101";
        Reference_DeliveryNow.WS_App refWS = new Reference_DeliveryNow.WS_App();
        Arrays productUnits = new Arrays();
        protected void Page_Load(object sender, EventArgs e)
        {
            show_btnLogOut();
        }

        public void show_btnLogOut()
        {
            if (Session["username"] != null)
            {
                btnLogOut.Visible = true;
            }
            else
            {
                btnLogOut.Visible = true;
                btnLogOut.Text = "Iniciar Sesión";
            }
        }

        protected void btnProd1_Click(object sender, EventArgs e)
        {
            string selectedValue = ddList_Prod1.SelectedValue;
            int quantity = int.Parse(selectedValue);
            string product_id = "1";
            int price = refWS.display_prices(product_id);

            productUnits.productUnitsList.Add(new ProductUnits(product_id, quantity));
            Carrito carrito = new Carrito();
            carrito.add_cart(product_id, quantity, price);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "AVISO", "window.alert('EL PRODUCTO SE HA AÑADIDO CORRECTAMENTE A SU CARRITO.')", true);
        }

        protected void btnProd2_Click(object sender, EventArgs e)
        {
            string selectedValue = ddList_Prod2.SelectedValue;
            int quantity = int.Parse(selectedValue);
            string product_id = "2";
            int price = refWS.display_prices(product_id);

            productUnits.productUnitsList.Add(new ProductUnits(product_id, quantity));
            Carrito carrito = new Carrito();
            carrito.add_cart(product_id, quantity, price);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "AVISO", "window.alert('EL PRODUCTO SE HA AÑADIDO CORRECTAMENTE A SU CARRITO.')", true);
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Session["username"] = null;
                Response.Redirect("MainPage.aspx");
            }
            else
            {
                Response.Redirect("MainPage.aspx");
            }
        }
    }
}