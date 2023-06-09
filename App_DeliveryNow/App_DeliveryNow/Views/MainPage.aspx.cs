﻿using System;
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
using App_DeliveryNow.Design;
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
        Reference_DeliveryNow.WS_App refWS = new Reference_DeliveryNow.WS_App();
        int counter = 0;
        public void Page_Load(object sender, EventArgs e)
        {
            
            design_management();
            if (!IsPostBack)
            {
                btnLogin.Click += btnLogin_Click;
                counter++;
                welcome_label();
            }
        }

        public void design_management()
        {
            //  btnStartRegister.BackColor = Design.ColorPalette.LightTeal;
            //  btnStartLogin.BackColor = Design.ColorPalette.LightTeal;
            pMain.BackColor = Design.ColorPalette.Water;
            pBody.BackColor = Design.ColorPalette.LightTeal;
        }

        public void welcome_label()
        {
            if (string.IsNullOrEmpty(txtUsername.Text))
            {
                lblWelcome.Text = "¡Bienvenido!";
            }
            else
            {
                string name = get_customer_name(txtUsername.Text);
                string username = txtUsername.Text;
                bool login = false;
                login = refWS.is_logged_in(username);
                if (login)
                {
                    lblWelcome.Text = "¡Bienvenido, " + name + "!";
                }
                else
                {
                    lblWelcome.Text = "¡Bienvenido!";
                }
            }
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
                name = refWS.show_customer_name(username);
            }
            return name;
        }

        public void change_login_page()
        {
            pMain.Visible = false;
            pBody.Visible = true;
            lblMain.Visible = false;
            lblMainLogin.Visible = true;
            lblUsername.Visible = true;
            LblPassword.Visible = true;
            LabelUsername.Visible = false;
            LabelPassword.Visible = false;
            LblConfirmPassword.Visible = false;
            lblName.Visible = false;
            lblLastName.Visible = false;
            lblPhNumber.Visible = false;
            lblAddress.Visible = false;
            lblPay.Visible = false;
            cbTC.Visible = false;
            lblQuestion.Visible = false;
            txtUsername.Visible = true;
            txtPassword.Visible = true;
            TextBoxUsername.Visible = false;
            TextBoxPassword.Visible = false;
            txtConfirmPassword.Visible = false;
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
            pMain.Visible = false;
            pBody.Visible = true;
            lblMain.Text = "CREA TU CUENTA";
            lblMain.Visible = true;
            lblUsername.Visible = false;
            LblPassword.Visible = false;
            LabelUsername.Visible = true;
            LabelPassword.Visible = true;
            LblConfirmPassword.Visible = true;
            lblName.Visible = true;
            lblLastName.Visible = true;
            lblPhNumber.Visible = true;
            lblAddress.Visible = true;
            lblPay.Visible = true;
            cbTC.Visible = true;
            lblQuestion.Visible = true;
            txtUsername.Visible = false;
            txtPassword.Visible = false;
            TextBoxUsername.Visible = true;
            TextBoxPassword.Visible = true;
            txtConfirmPassword.Visible = true;
            txtName.Visible = true;
            txtLastName.Visible = true;
            txtPhNumber.Visible = true;
            txtAddress.Visible = true;
            lbPay.Visible = true;
            btnLogin.Visible = false;
            btnRegister.Visible = true;
            btnLoginOpt.Visible = true;
        }

        protected void btnStartRegister_Click(object sender, EventArgs e)
        {
            change_register_page();
        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string password = hdnPassword.Value;
            byte[] seed;
            string hashedPassword = refWS.hash_password(password, out seed);
            if (!cbTC.Checked)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "ALERTA", "window.alert('¡ERROR! SI DESEA CONTINUAR, POR FAVOR ACEPTE NUESTROS TÉRMINOS Y CONDICIONES.')", true);
            }
            else if (txtConfirmPassword.Text.Length != TextBoxPassword.Text.Length)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "ALERTA", "window.alert('¡ERROR! LAS CONTRASEÑAS INGRESADAS NO COINCIDEN.')", true);
            }
            else if (!string.IsNullOrEmpty(txtUsername.Text) ||
                     !string.IsNullOrEmpty(txtName.Text) ||
                     !string.IsNullOrEmpty(txtLastName.Text) ||
                     !string.IsNullOrEmpty(TextBoxPassword.Text) ||
                     !string.IsNullOrEmpty(txtPhNumber.Text))
            {
                refWS.insert_data(TextBoxUsername.Text, txtName.Text, txtLastName.Text, hashedPassword, seed,
                                  txtPhNumber.Text, txtAddress.Text, lbPay.Text); ;
                txtUsername.Text = string.Empty;
                txtName.Text = string.Empty;
                txtLastName.Text = string.Empty;
                txtPassword.Text = string.Empty;
                txtPhNumber.Text = string.Empty;
                txtAddress.Text = string.Empty;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "AVISO", "window.alert('¡FELICITACIONES! SU CUENTA SE HA CREADO CORRECTAMENTE.')", true);
                refWS.is_logged_in(TextBoxUsername.Text);
                change_login_page();
            }
        }

        protected void btnStartLogin_Click(object sender, EventArgs e)
        {
            change_login_page();
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;

            if (string.IsNullOrEmpty(txtUsername.Text) ||
                string.IsNullOrEmpty(txtPassword.Text))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "ALERTA", "window.alert('¡ERROR! POR FAVOR INGRESE LOS DATOS SOLICITADOS.')", true);
            }
            else
            {
                int controller = refWS.login_verify(txtUsername.Text, txtPassword.Text);
                if (controller == 1)
                {
                    if (counter == 0)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "AVISO", "window.alert('SESIÓN INICIADA CORRECTAMENTE.')", true);
                        Session["username"] = username;
                        Response.Redirect("Tienda.aspx");
                    }
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "AVISO", "window.alert('SE HA PRESENTADO UN ERROR DURANTE EL INICIO DE SESIÓN.')", true);
                }
            }
        }
        protected void btnLoginOpt_Click(object sender, EventArgs e)
        {
            change_login_page();
        }
    }
}