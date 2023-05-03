using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace App_DeliveryNow.Views
{
    public partial class NewBalanceShop : System.Web.UI.Page
    {
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