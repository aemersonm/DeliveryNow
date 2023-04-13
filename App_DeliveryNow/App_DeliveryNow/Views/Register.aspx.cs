using App_DeliveryNow.Reference_DeliveryNow;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
/*
 *         SERVICIOS WEB - ULACIT
 * Register - Proyecto Final - GRUPO N.2
 * DESCRIPCIÓN: Sistema de Pedidos
 * AUTORES: Emerson Alvarado Mora 
 *          Esteban Paniagua Barrantes
 *          Andrés Garro Barrios
 *          Joseph Villalta Elizondo 
 * Register.aspx: Clase Web Forms donde se 
 * muestra la página de registro del programa.
 */
namespace App_DeliveryNow.Views
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            design_management();
            hide_elements();
        }
        public void design_management()
        {
            //btnLogin.BackColor = Design.ColorPalette.LightTeal;
            pMain.BackColor = Design.ColorPalette.Water;
            pBody.BackColor = Design.ColorPalette.LightTeal;
            btnRegister.BackColor = Design.ColorPalette.Water;
            btnLoginOpt.BackColor = Design.ColorPalette.LightTeal;
            
        }
        public void hide_elements()
        {
            lblName.Visible = false;
            lblLastName.Visible = false;
            lblPhNumber.Visible = false;
            lblAddress.Visible = false;
            lblPay.Visible = false;
            txtName.Visible = false;
            txtLastName.Visible = false;
            txtPhNumber.Visible = false;
            txtAddress.Visible = false;
            lbPay.Visible = false;
            cbTC.Visible = false;
            btnRegister.Visible = false;
        }

        public void show_elements()
        {
            if(string.IsNullOrEmpty(txtUsername.Text) || 
               string.IsNullOrEmpty(txtPassword.Text))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "ALERTA", "window.alert('¡ERROR! POR FAVOR INGRESE LOS DATOS SOLICITADOS.')", true);
            } 
            else if (txtUsername.Text.Contains(" "))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "ALERTA", "window.alert('¡ERROR! POR FAVOR INGRESE UN USUARIO VÁLIDO.')", true);
            } 
            else if (txtPassword.Text.Length < 8)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "ALERTA", "window.alert('¡ERROR! POR FAVOR INGRESE UNA CONTRASEÑA VÁLIDA.')", true);
            } 
            else
            {
                lblName.Visible = true;
                lblLastName.Visible = true;
                lblPhNumber.Visible = true;
                lblAddress.Visible = true;
                lblPay.Visible = true;
                txtName.Visible = true;
                txtLastName.Visible = true;
                txtPhNumber.Visible = true;
                txtAddress.Visible = true;
                lbPay.Visible = true;
                cbTC.Visible = true;
                btnRegister.Visible = true;
                btnContinue.Visible = false;
            }
        }

        //Antes de llamar a este método, se debe instalar el paquete de NuGet: BCrypt.Net-Next
        public string hash_password(string password, out byte[] seed)
        {
            
            //Se genera un seed o salto aleatorio.
            seed = new byte[16];
            new RNGCryptoServiceProvider().GetBytes(seed);

            //Se genera el hash con PBKDF2
            var pbkdf2 = new Rfc2898DeriveBytes(password, seed, 10000);
            byte[] hash = pbkdf2.GetBytes(20);

            //Se crea la combinación del seed y el hash. 
            byte[] hashBytes = new byte[36];
            Array.Copy(seed, 0, hashBytes, 0, 16);
            Array.Copy(hash, 0, hashBytes, 16, 20);

            //Se convierte el hash en cadena y se devuelve. 
            return Convert.ToBase64String(hashBytes);

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Reference_DeliveryNow.WS_App refWS = new Reference_DeliveryNow.WS_App();
            byte[] seed;
            string hashedPassword = refWS.hash_password(txtPassword.Text, out seed);
            if (!cbTC.Checked)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "ALERTA", "window.alert('¡ERROR! SI DESEA CONTINUAR, POR FAVOR ACEPTE NUESTROS TÉRMINOS Y CONDICIONES.')", true);
                btnContinue.Visible = true;
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
                //Response.Redirect("MainPage.aspx");
            }
            
        }

        protected void btnLoginOpt_Click(object sender, EventArgs e)
        {
 
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            if (lblName.Visible == false ||
                lblLastName.Visible == false ||
                lblPhNumber.Visible == false ||
                lblAddress.Visible == false ||
                lblPay.Visible == false ||
                txtName.Visible == false ||
                txtLastName.Visible == false ||
                txtPhNumber.Visible == false ||
                txtAddress.Visible == false ||
                lblPay.Visible == false ||
                cbTC.Visible == false)
            {
                show_elements();
            }
        }

        //Este evento controla que el contenido de txtPassword se muestre en asteriscos. 
        protected void txtPassword_OnTextChanged(object sender, EventArgs e)
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