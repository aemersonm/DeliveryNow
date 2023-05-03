using App_DeliveryNow.Class;
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
        List<Product> productList = new List<Product>();
        List<Company> companyList = new List<Company>();
        Arrays arrays = new Arrays();
        protected void Page_Load(object sender, EventArgs e)
        {
            show_btnLogOut();
            validate_user();
            show_cart();
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


        // Método add_cart() agrega productos en el carrito de compras del cliente.
        public void add_cart(string productID, int quantity, int subtotal)
        {
            if (Session["username"] != null)
            {
                subtotal = quantity * subtotal;
                string username = (string)Session["username"];
                refWS.insert_cart(username, productID, quantity, subtotal);
            }
        }

        // Método show_cart() muestra el carrito de compras del cliente.
        public void show_cart()
        {
            if (Session["username"] != null)
            {
                string username = Session["username"].ToString();
                int total = 0;
                GdProducts.DataSource = refWS.display_cart(username);
                GdProducts.DataBind();
                foreach (GridViewRow row in GdProducts.Rows)
                {
                    if (row.RowType == DataControlRowType.DataRow)
                    {
                        string columnValue = row.Cells[4].Text;
                        int value = 0;
                        int.TryParse(columnValue, out value);
                        total += value;
                    }
                }
                lblTotal.Text = "$" + total.ToString();
            }
        }
        public void validate_user()
        {
            if (Session["username"] != null)
            {
                string username = (string)(Session["username"]);
                txtUser.Text = username;
                string addr = refWS.getUserAdd(username);
                txtAddress.Text = addr;

                string payment = refWS.getUserPM(username);
                txtPayment.Text = payment;
                if ((payment != "Efectivo") && (payment != "PayPal"))
                {
                    txtCard.Enabled = true;
                    txtExpiration.Enabled = true;
                    txtCVV.Enabled = true;
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "AVISO", "window.alert('INICIE SESIÓN O REGÍSTRESE PARA VISUALIZAR SU CARRITO DE COMPRAS. ')", true);
            }
        }

        // Método creado para generar un string aleatorio y asignarlo al Order ID.
        public string generate_orderID(int length)
        {
            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            Random random = new Random();

            string randomString = new string(
                Enumerable.Repeat(chars, length)
                          .Select(s => s[random.Next(s.Length)])
                          .ToArray()
            );

            return randomString;
        }
        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            const string chars = "ABCDEFGHIJKLMNÑOPQRSTUVWXYZabcdefghijklmnñopqrstuvwxyz";
            string address = txtAddress.Text;
            string payment = txtPayment.Text;
            string cardNumber = txtCard.Text;
            string cvv = txtCVV.Text;
            string expirationDate = txtExpiration.Text;
            int product_units = 0;


            if ((cardNumber.Length != 16 ||
               cvv.Length != 3 ||
               expirationDate.Length != 5) ||
               (cardNumber.Contains(chars) ||
                cvv.Contains(chars) ||
                expirationDate.Contains(chars)))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "ERROR", "window.alert(' SE HA PRESENTADO UN ERROR, LA INFORMACIÓN DE PAGO ES INCORRECTA. ')", true);
            }

            if (Session["username"] != null)
            {
                string username = (string)(Session["username"]);
                string order_id = generate_orderID(10);
                DateTime date = DateTime.Now;
                bool order_status = true;
                string company_id = "";
                string product_id = "";
                int order_price = 0;
                int product_price = 0;
                GdCart.DataSource = refWS.get_cart_info(username);
                GdCart.DataBind();

                foreach (GridViewRow row in GdCart.Rows)
                {
                    string productId = row.Cells[0].Text.ToString();

                    string companyId = row.Cells[1].Text.ToString();

                    Product product = new Product { productID = productId };
                    Company company = new Company { companyID = companyId };

                    productList.Add(product);
                    companyList.Add(company);
                }

                foreach (GridViewRow row in GdProducts.Rows)
                {
                    if (row.RowType == DataControlRowType.DataRow)
                    {
                        string columnValue = row.Cells[4].Text;
                        int amount = 0;
                        int.TryParse(columnValue, out amount);
                        order_price += amount;
                    }
                }
                int product_quantity = productList.Count();

                int counter = 0;
                while (counter <= productList.Count() && counter <= companyList.Count())
                {
                    product_id = productList[0].productID;

                    company_id = companyList[0].companyID;

                    product_units = refWS.get_cart_quantity(product_id);
                    product_price = refWS.get_cart_subtotal(product_id);

                    refWS.insert_order(order_id, username, company_id, product_id, product_quantity, date, order_status);
                    refWS.insert_order_details(order_id, product_id, product_units, product_price, order_price, order_status);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "AVISO", "window.alert('¡GRACIAS POR SU COMPRA! SU PEDIDO SE HA REALIZADO CORRECTAMENTE. ')", true);
                    productList.RemoveAt(0);
                    companyList.RemoveAt(0);
                    counter++;
                }

                refWS.empty_cart(username);
            }
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Session["username"] = null;
                Response.Redirect("MainPage.aspx");
            } else
            {
                Response.Redirect("MainPage.aspx");
            }
        }
    }
}