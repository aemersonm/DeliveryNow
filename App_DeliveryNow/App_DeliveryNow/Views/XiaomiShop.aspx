<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="XiaomiShop.aspx.cs" Inherits="App_DeliveryNow.Views.AboutUs" %>

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
                <img class="logo4" src="../Resources/XiaomiLogo.png" alt="Xiaomi" />
                <h2>Tienda oficial de Xiaomi</h2>
            </div>
            <hr class="separator" />
        </asp:Panel>

        <asp:Panel ID="pShop" runat="server">
            <div class="container2">
                <div class="product">
                    <img src="https://m.media-amazon.com/images/I/81x66L9WUzL._AC_UF1000,1000_QL80_.jpg" alt="Mi Ultra-Compact 1080P Projector" />
                    <h3>Mi Ultra-Compact 1080P Projector</h3>
                    <p>Proyector portátil de alta calidad con resolución 1080p.</p>
                    <p>Precio: $599.00</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://www.etercor.com.ar/wp-content/uploads/2021/07/xiaomi-pulsera-de-actividad-mi-band-6.jpg" alt="Mi Smart Band 6" />
                    <h3>Mi Smart Band 6</h3>
                    <p>Smart band con pantalla AMOLED a color de 1.56 pulgadas.</p>
                    <p>Precio: $44.99</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://www.gollo.com/media/catalog/product/7/0/7016010313.jpg?width=1040&height=1040&store=default&image-type=image" alt="Mi Robot Vacuum-Mop Essential" />
                    <h3>Mi Robot Vacuum-Mop Essential</h3>
                    <p>Robot aspirador y fregasuelos con mapeo inteligente.</p>
                    <p>Precio: $199.99</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://netpc.uy/wp-content/uploads/2020/10/1-272.jpg" alt="Cámara de seguridad Mi 360" />
                    <h3>Cámara de seguridad Mi 360</h3>
                    <p>Cámara de seguridad para interiores con resolución 1080p.</p>
                    <p>Precio: $39.99</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://gabastorecr.com/wp-content/uploads/2021/07/Xiaomi-MI-Watch-Lite-2.jpg" alt="Reloj inteligente Mi Watch Lite" />
                    <h3>Reloj inteligente Mi Watch Lite</h3>
                    <p>Reloj inteligente con pantalla táctil a color de 1,4 pulgadas.</p>
                    <p>Precio: $49.99</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://watekinc.com/wp-content/uploads/2021/05/watek-mitrue-wireless-earphones-2basic.jpg" alt="Audífonos inalámbricos Mi True Wireless Earphones Basic 2" />
                    <h3>Audífonos inalámbricos Mi True Wireless Earphones Basic 2</h3>
                    <p>Audífonos inalámbricos con Bluetooth 5.0 y una duración de batería de hasta 4 horas.</p>
                    <p>Precio: $19.99</p>
                    <button>Agregar al carrito</button>
                </div>

                <div class="product">
                    <img src="https://cdn.webshopapp.com/shops/256009/files/316833312/xiaomi-xiaomi-mi-air-purifier-3h.jpg" alt="Xiaomi Mi Air Purifier 3H" />
                    <h3>Xiaomi Mi Air Purifier 3H</h3>
                    <p>Purificador de aire para el hogar con pantalla táctil OLED.</p>
                    <p>Precio: $199.99</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://i01.appmifile.com/webfile/globalimg/products/m/mi-electric-scooter-3/section1.png" alt="Xiaomi Mi Electric Scooter 3" />
                    <h3>Xiaomi Mi Electric Scooter 3</h3>
                    <p>Patín eléctrico con neumáticos de 8.5" y hasta 45 km de autonomía.</p>
                    <p>Precio: $499.99</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://img.pccomponentes.com/articles/24/247611/55-2.jpg" alt="Xiaomi Mi LED TV 4S 55" />
                    <h3>Xiaomi Mi LED TV 4S 55</h3>
                    <p>Televisor inteligente de 55" 4K HDR con Android TV.</p>
                    <p>Precio: $599.99</p>
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
