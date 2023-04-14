using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection;
using Microsoft.SqlServer.Server;
using System.Configuration;
using System.Xml.Linq;
using App_DeliveryNow.Class;
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
        }

        public void design_management()
        {
            btnStartRegister.BackColor = Design.ColorPalette.LightTeal;
            btnStartLogin.BackColor = Design.ColorPalette.LightTeal;
            pMain.BackColor = Design.ColorPalette.Water;
        }

        public void welcome_label(string name)
        {
            Reference_DeliveryNow.WS_App refWS = new Reference_DeliveryNow.WS_App();
            lblWelcome.Text = "¡Bienvenido, " + name + "!";
        }

        public string get_customer_name(string username)
        {
            string name = "";
            if (string.IsNullOrEmpty(username))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "AVISO", "window.alert('¡ERROR! HA SURGIDO UN ERROR INESPERADO.')", true);
            }
            else
            {
                Reference_DeliveryNow.WS_App refWS = new Reference_DeliveryNow.WS_App();
                name = refWS.show_customer_name(username);
            }
            return name;
        }

        public void change_login_page()
        {
            pBody.Visible = true;
            lblMain.Text = "INICIA SESIÓN EN TU CUENTA";
            lblMain.Visible = true;
            lblUsername.Visible = true;
            LblPassword.Visible = true;
            lblName.Visible = false;
            lblLastName.Visible = false;
            lblPhNumber.Visible = false;
            lblAddress.Visible = false;
            lblPay.Visible = false;
            cbTC.Visible = false;
            lblQuestion.Visible = false;
            txtUsername.Visible = true;
            txtPassword.Visible = true;
            txtName.Visible = false;
            txtLastName.Visible = false;
            txtPhNumber.Visible = false;
            txtAddress.Visible = false;
            lbPay.Visible = false;
            btnLogin.Visible = true;
            btnRegister.Visible = false;
            btnLoginOpt.Visible = false;
        }

        public void change_register_page()
        {
            pBody.Visible = true;
            lblMain.Text = "CREA TU CUENTA";
            lblMain.Visible = true;
            lblUsername.Visible = true;
            LblPassword.Visible = true;
            lblName.Visible = true;
            lblLastName.Visible = true;
            lblPhNumber.Visible = true;
            lblAddress.Visible = true;
            lblPay.Visible = true;
            cbTC.Visible = true;
            lblQuestion.Visible = true;
            txtUsername.Visible = true;
            txtPassword.Visible = true;
            txtName.Visible = true;
            txtLastName.Visible = true;
            txtPhNumber.Visible = true;
            txtAddress.Visible = true;
            lbPay.Visible = true;
            btnLogin.Visible = false;
            btnRegister.Visible = true;
        }

        protected void btnStartLogin_Click(object sender, EventArgs e)
        {
            change_login_page();
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
                string name = get_customer_name(txtUsername.Text);
                welcome_label(name);


            }
        }

        protected void btnStartRegister_Click(object sender, EventArgs e)
        {
            change_register_page();
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Reference_DeliveryNow.WS_App refWS = new Reference_DeliveryNow.WS_App();
            byte[] seed;
            string hashedPassword = refWS.hash_password(txtPassword.Text, out seed);
            if (!cbTC.Checked)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "ALERTA", "window.alert('¡ERROR! SI DESEA CONTINUAR, POR FAVOR ACEPTE NUESTROS TÉRMINOS Y CONDICIONES.')", true);
            }
            else if (!string.IsNullOrEmpty(txtUsername.Text) ||
                     !string.IsNullOrEmpty(txtName.Text) ||
                     !string.IsNullOrEmpty(txtLastName.Text) ||
                     !string.IsNullOrEmpty(txtPassword.Text) ||
                     !string.IsNullOrEmpty(txtPhNumber.Text))
            {
                refWS.insert_data(txtUsername.Text, txtName.Text, txtLastName.Text, hashedPassword, seed,
                                  txtPhNumber.Text, txtAddress.Text, lbPay.Text); ;
                txtUsername.Text = string.Empty;
                txtName.Text = string.Empty;
                txtLastName.Text = string.Empty;
                txtPassword.Text = string.Empty;
                txtPhNumber.Text = string.Empty;
                txtAddress.Text = string.Empty;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "AVISO", "window.alert('¡FELICITACIONES! SU CUENTA SE HA CREADO CORRECTAMENTE.')", true);
                refWS.is_logged_in(txtUsername.Text);

            }
        }

        protected void btnLoginOpt_Click(object sender, EventArgs e)
        {

        }


        //Este evento controla que el contenido de txtPassword se muestre en asteriscos. 
        protected void txtPassword_OnTextChanged(object sender, EventArgs e)
        {
            // Se obtiene el texto ingresado por el usuario.
            string password = txtPassword.Text;

            // Se reemplaza el texto con asteriscos.
            txtPassword.Text = new string('*', password.Length);
        }
    }
}