using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection;
/*
 *         SERVICIOS WEB - ULACIT
 * MainPage - Proyecto Final - GRUPO N.2
 * DESCRIPCIÓN: Sistema de Pedidos
 * AUTORES: Emerson Alvarado Mora 
 *          Esteban Paniagua Barrantes
 *          Andrés Garro Barrios
 *          Joseph Villalta Elizondo 
 * MainPage.aspx: Clase Web Forms donde se 
 * muestra la página principal del programa.
 */
namespace App_DeliveryNow.Views
{

    public partial class MainPage : System.Web.UI.Page
    {  
        public void Page_Load(object sender, EventArgs e)
        {
            design_management();
            hide_elements();
        }

        public void design_management()
        {
            btnIdentify.BackColor = Design.ColorPalette.LightTeal;
            btnLogin.BackColor = Design.ColorPalette.LightTeal;
            pMain.BackColor = Design.ColorPalette.Water;
        }

        public void hide_elements()
        {
            lblWelcome.Visible = false;
        }

        public void welcome_status(string name)
        {
            lblWelcome.Visible = true;
            lblWelcome.Text = "¡Bienvenido, " + name + "!";
        }

        public void change_login_page()
        {
            Response.Redirect("Login.aspx");
        }

        public void change_register_page()
        {
            Response.Redirect("Register.aspx");
        }

        protected void btnIdentify_Click(object sender, EventArgs e)
        {
            change_register_page();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            change_login_page();
        }
    }
}