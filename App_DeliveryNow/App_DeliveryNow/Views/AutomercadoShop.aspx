<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AutomercadoShop.aspx.cs" Inherits="App_DeliveryNow.Views.AboutUs" %>

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
                <img class="logo6" src="../Resources/AutomercadoLogo.png" alt="Nike" />
                <h2>Tienda oficial de Automercado</h2>
            </div>
            <hr class="separator" />
        </asp:Panel>

        <asp:Panel ID="pShop" runat="server">
            <div class="container2">
                <div class="product">
                    <img src="https://triquitraque.cr/images/thumbs/0004748_leche-entera-caja-roja-dos-pinos-1l_510.jpeg" alt="Leche entera Dos Pinos" />
                    <h3>Leche entera Dos Pinos</h3>
                    <p>1 litro de leche fresca.</p>
                    <p>Precio: $1.57 </p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://nutriciondospinos.com/wp-content/uploads/2019/10/15000265-DP-Jugo-100%EF%BF%BD-Naranja-EDGE-vers-Craft-CRC-1L.png" alt="Jugo de naranja Dos Pinos" />
                    <h3>Jugo de naranja Dos Pinos</h3>
                    <p>Jugo de naranja 100% natural.</p>
                    <p>Precio: $2.00</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://cafebritt.cr/siteimg/cr-20/products/tile/costa-rican-tres-rios-ground-coffee-front-view.jpg?r=68236" alt="Café Britt Tres Ríos" />
                    <h3>Café Britt Tres Ríos</h3>
                    <p>Café molido de Tres Ríos.</p>
                    <p>Precio: $8.70</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://liquen.ar/wp-content/uploads/2021/07/huevos-gallina2.jpg" alt="Huevos orgánicos" />
                    <h3>Huevos orgánicos</h3>
                    <p>Huevos frescos y orgánicos de gallinas criadas en libertad.</p>
                    <p>Precio: $4.63</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://d1cft8rz0k7w99.cloudfront.net/n/6/7/c/c/67cc03f5eff24cbb2867d7b1e22cba9c37ab2be8_SeafoodandFish_298650_01.jpg" alt="Filete de salmón fresco" />
                    <h3>Filete de salmón fresco</h3>
                    <p>Filete de salmón fresco, de alta calidad.</p>
                    <p>Precio: $14.80</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://cdn.shopify.com/s/files/1/0584/1125/3953/products/BASILIO-pizzapeperoni_533x.jpg?v=1626809090" alt="Pizza Margarita" />
                    <h3>Pizza Margarita</h3>
                    <p>Pizza Margarita artesanal, hecha con los mejores ingredientes.</p>
                    <p>Precio: $14.80</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://walmartcr.vtexassets.com/arquivos/ids/309569-800-600?v=637879776663400000&width=800&height=600&aspect=true" alt="Champú y acondicionador Pantene Pro-V" />
                    <h3>Champú y acondicionador Pantene Pro-V</h3>
                    <p>Con tecnología inteligente de Pantene, ayuda a reparar el daño y suaviza el cabello.</p>
                    <p>Precio: $9.25</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://global.filippoberio.com/wp-content/uploads/2021/02/pr-box-evo.png" alt="Aceite de oliva Filippo Berio" />
                    <h3>Aceite de oliva Filippo Berio</h3>
                    <p>100% aceite de oliva extra virgen.</p>
                    <p>Precio: $11.09</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://cdn.shopify.com/s/files/1/0568/2072/7976/products/MontesAlpha_ValledeColchagua_Chile_1200x1200.jpg?v=1628572693" alt="Vino tinto Cabernet Sauvignon Reserva Montes Alpha" />
                    <h3>Vino tinto Cabernet Sauvignon Reserva Montes Alpha</h3>
                    <p>Un vino elegante y complejo, con notas de frutas rojas, especias y un toque de vainilla.</p>
                    <p>Precio: $38.29</p>
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
