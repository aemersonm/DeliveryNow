using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection;
using System.Threading;
using System.Xml.Linq;
using System.Collections.Concurrent;
/*
*         SERVICIOS WEB - ULACIT
* Login - Proyecto Final - GRUPO N.2
* DESCRIPCIÓN: Sistema de Pedidos
* AUTORES: Emerson Alvarado Mora 
*          Esteban Paniagua Barrantes
*          Andrés Garro Barrios
*          Joseph Villalta Elizondo 
* Login.aspx: Clase Web Forms donde se 
* muestra la página de inicio de sesión 
* del programa.
*/

namespace App_DeliveryNow.Views
{

    public partial class Login : System.Web.UI.Page
    {
        public void Page_Load(object sender, EventArgs e)
        {
            design_management();
        }

        public void design_management()
        {
            pMain.BackColor = Design.ColorPalette.Water;
            pBody.BackColor = Design.ColorPalette.LightTeal;
            btnLogin.BackColor = Design.ColorPalette.Water;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtUsername.Text) ||
                string.IsNullOrEmpty(txtPassword.Text))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "ALERTA", "window.alert('¡ERROR! POR FAVOR INGRESE LOS DATOS SOLICITADOS.')", true);
            }
            else
            {
                Reference_DeliveryNow.WS_App refWS = new Reference_DeliveryNow.WS_App();
                int controller = refWS.login_verify(txtUsername.Text, txtPassword.Text);
                if (controller == 1)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "AVISO", "window.alert('SESIÓN INICIADA CORRECTAMENTE.')", true);

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "AVISO", "window.alert('SE HA PRESENTADO UN ERROR DURANTE EL INICIO DE SESIÓN.')", true);
                }
               // Thread.Sleep(3000);
                Response.Redirect("MainPage.aspx");
            }
        }



        protected void txtPassword_TextChanged(object sender, EventArgs e)
        {
            // Se obtiene el texto ingresado por el usuario.
            string password = txtPassword.Text;

            // Se reemplaza el texto con asteriscos.
            txtPassword.Text = new string('*', password.Length);
        }

        protected void btnAboutUs_Click(object sender, EventArgs e)
        {

        }
    }
}