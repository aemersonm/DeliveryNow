<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewBalanceShop.aspx.cs" Inherits="App_DeliveryNow.Views.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="../Design/style.css" type="text/css" />
    <link rel="stylesheet" href="../Design/estilospopup.css" type="text/css" />

    <title>DeliveryNow</title>
</head>
<body aria-sort="none">

    <form id="MainPage" runat="server">
        <asp:Panel ID="pHead" runat="server">
            <header>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Resources/logonobg.png" Height="150px" Width="150px"></asp:Image>
                <nav>
                    <ul>
                        <li><a href="MainPage.aspx">Inicio</a></li>
                        <li><a href="AboutUs.aspx">Nosotros</a></li>
                        <li><a href="Contact.aspx">Contacto</a></li>
                        <li><a href="Carrito.aspx">Carrito</a></li>
                    </ul>
                </nav>
            </header>
            <div class="shop-header">
                <img class="logo2" src="../Resources/NewBalanceLogo.png" alt="New Balance" />
                <h2>Tienda oficial de New Balance</h2>
            </div>
            <hr class="separator" />
        </asp:Panel>

        <asp:Panel ID="pShop" runat="server">
            <div class="container2">
                <div class="product">
                    <img src="https://nb.scene7.com/is/image/NB/m990gl5_nb_05_i?$dw_detail_main_lg$&bgc=f1f1f1&layer=1&bgcolor=f1f1f1&blendMode=mult&scale=10&wid=1600&hei=1600" alt="New Balance 990v5" />
                    <h3>New Balance 990v5</h3>
                    <p>Zapatillas de running para hombre.</p>
                    <p>Precio: $174.99 USD</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://nb.scene7.com/is/image/NB/ms327fe_nb_02_i?$dw_detail_main_lg$&bgc=f1f1f1&layer=1&bgcolor=f1f1f1&blendMode=mult&scale=10&wid=1600&hei=1600" alt="New Balance 327" />
                    <h3>New Balance 327</h3>
                    <p>Zapatillas de estilo retro para hombre.</p>
                    <p>Precio: $89.99 USD</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://nb.scene7.com/is/image/NB/cm997hca_nb_02_i?$dw_detail_main_lg$&bgc=f1f1f1&layer=1&bgcolor=f1f1f1&blendMode=mult&scale=10&wid=1600&hei=1600" alt="New Balance 997H" />
                    <h3>New Balance 997H</h3>
                    <p>Zapatillas de estilo retro para mujer.</p>
                    <p>Precio: $89.99 USD</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://nb.scene7.com/is/image/NB/u996tb_nb_05_i?$pdpflexf2$&wid=440&hei=440" alt="New Balance 996" />
                    <h3>New Balance 996</h3>
                    <p>Zapatillas de tenis para hombre.</p>
                    <p>Precio: $119.99 USD</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://nb.scene7.com/is/image/NB/mw928bk3_nb_02_i?$dw_detail_main_lg$&bgc=f1f1f1&layer=1&bgcolor=f1f1f1&blendMode=mult&scale=10&wid=1600&hei=1600" alt="New Balance 928" />
                    <h3>New Balance 928</h3>
                    <p>Zapatillas de senderismo para hombre.</p>
                    <p>Precio: $139.99 USD</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://static.wixstatic.com/media/d8d282_90f2c7665b2049fc9e6720ec5e22c1c3~mv2_d_3492_3492_s_4_2.jpg/v1/fill/w_3492,h_3492,al_c,q_85/d8d282_90f2c7665b2049fc9e6720ec5e22c1c3~mv2_d_3492_3492_s_4_2.jpg" alt="New Balance 247" />
                    <h3>New Balance 247</h3>
                    <p>Zapatillas urbanas para mujer.</p>
                    <p>Precio: $79.99 USD</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://nb.scene7.com/is/image/NB/gc574evw_nb_02_i?$dw_detail_main_lg$&bgc=f1f1f1&layer=1&bgcolor=f1f1f1&blendMode=mult&scale=10&wid=1600&hei=1600" alt="New Balance 574 Core" />
                    <h3>New Balance 574 Core</h3>
                    <p>Zapatillas de piel para hombre.</p>
                    <p>Precio: $80.00 USD</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://newbalance.cr/media/catalog/product/cache/f8ee06aa362d52a50a1f81c1688756b1/c/m/cm997haa-d-1.jpg" alt="New Balance 997 Sport" />
                    <h3>New Balance 997 Sport</h3>
                    <p>Zapatillas de piel para hombre.</p>
                    <p>Precio: $120.00 USD</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://nb.scene7.com/is/image/NB/ml574evg_nb_05_i?$dw_detail_main_lg$&bgc=f1f1f1&layer=1&bgcolor=f1f1f1&blendMode=mult&scale=10&wid=1600&hei=1600" alt="New Balance 574 Classic" />
                    <h3>New Balance 574 Classic</h3>
                    <p>Zapatillas de piel para mujer.</p>
                    <p>Precio: $80.00 USD</p>
                    <button>Agregar al carrito</button>
                </div>

            </div>
        </asp:Panel>

        <asp:Panel ID="pBot" runat="server">
            <footer>
                <nav>
                    <div>
                        <ul>
                            <li><a href="#">Términos y condiciones</a></li>
                            <li><a href="#">Política de privacidad</a></li>
                            <li><a href="#">Preguntas frecuentes</a></li>
                        </ul>
                    </div>
                </nav>
                <p>&copy; 2023 DeliveryNow. Todos los derechos reservados.</p>
            </footer>
        </asp:Panel>
    </form>
</body>
</html>
