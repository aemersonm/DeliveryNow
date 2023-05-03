using App_DeliveryNow.Reference_DeliveryNow;
using System;
using System.Collections.Generic;
using System.Drawing;
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
        Reference_DeliveryNow.WS_App refWS = new Reference_DeliveryNow.WS_App();
        protected void Page_Load(object sender, EventArgs e)
        {
            load_elements();
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
        public void load_elements()
        {
            // NIKE
            byte[] imageNike = refWS.get_nike_image();
            if (imageNike != null)
            {
                string base64String = Convert.ToBase64String(imageNike);
                string imageUrl = "data:image/png;base64," + base64String;
                nike_image.ImageUrl = imageUrl;
            }

            nike_name.Text = refWS.get_nike_name();
            nike_description.Text = refWS.get_nike_description();

            // NEW BALANCE
            byte[] imageNB = refWS.get_NB_image();
            if (imageNB != null)
            {
                string base64String = Convert.ToBase64String(imageNB);
                string imageUrl = "data:image/png;base64," + base64String;
                NB_image.ImageUrl = imageUrl;
            }
            NB_name.Text = refWS.get_NB_name();
            NB_description.Text = refWS.get_NB_description();

            // XIAOMI
            byte[] imageXiaomi = refWS.get_xiaomi_image();
            if (imageXiaomi != null)
            {
                string base64String = Convert.ToBase64String(imageXiaomi);
                string imageUrl = "data:image/png;base64," + base64String;
                xiaomi_image.ImageUrl = imageUrl;
            }
            xiaomi_name.Text = refWS.get_xiaomi_name();
            xiaomi_description.Text = refWS.get_xiaomi_description();

            // EXTREME TECH
            byte[] imageET = refWS.get_ET_image();
            if (imageET != null)
            {
                string base64String = Convert.ToBase64String(imageET);
                string imageUrl = "data:image/png;base64," + base64String;
                ET_image.ImageUrl = imageUrl;
            }
            ET_name.Text = refWS.get_ET_name();
            ET_description.Text = refWS.get_ET_description();

            // AUTO MERCADO
            byte[] imageAM = refWS.get_AM_image();
            if (imageAM != null)
            {
                string base64String = Convert.ToBase64String(imageAM);
                string imageUrl = "data:image/png;base64," + base64String;
                AM_image.ImageUrl = imageUrl;
            }
            AM_name.Text = refWS.get_AM_name();
            AM_description.Text = refWS.get_AM_description();

            // WALMART
            byte[] imageWalmart = refWS.get_walmart_image();
            if (imageWalmart != null)
            {
                string base64String = Convert.ToBase64String(imageWalmart);
                string imageUrl = "data:image/png;base64," + base64String;
                walmart_image.ImageUrl = imageUrl;
            }
            walmart_name.Text = refWS.get_walmart_name();
            walmart_description.Text = refWS.get_walmart_description();
        }

        protected void btnNike_Click(object sender, EventArgs e)
        {
            Response.Redirect("NikeShop.aspx");
        }
        protected void btnNB_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewBalanceShop.aspx");
        }
        protected void btnXiaomi_Click(object sender, EventArgs e)
        {
            Response.Redirect("XiaomiShop.aspx");
        }
        protected void btnET_Click(object sender, EventArgs e)
        {
            Response.Redirect("ExtremetechShop.aspx");
        }
        protected void btnAM_Click(object sender, EventArgs e)
        {
            Response.Redirect("AutomercadoShop.aspx");
        }
        protected void btnWalmart_Click(object sender, EventArgs e)
        {
            Response.Redirect("WalmartShop.aspx");
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