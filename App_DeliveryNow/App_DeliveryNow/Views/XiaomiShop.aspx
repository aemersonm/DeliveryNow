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
                        <li><a href="Tienda.aspx">Tiendas</a></li>
                        <li><a href="AboutUs.aspx">Nosotros</a></li>
                        <li><a href="Contact.aspx">Contacto</a></li>
                        <li><a href="Carrito.aspx">Carrito</a></li>
                        <li><a style="color: #2e4f4f;" href="MainPage.aspx"><b>Cerrar Sesión</b></a></li>
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
                            <li><a href="#modal" class="btn-open-popup">Términos y condiciones</a>
                                <div class="container-all" id="modal">
                                    <div class="popup">
                                        <div class="imagenpopup"></div>
                                        <div class="container-text">
                                            <h1>Términos y condiciones</h1>
                                            <p>
                                                DeliveryNow es un sistema de envíos que permite a las tiendas
                                                y restaurantes locales ofrecer entregas rápidas y convenientes 
                                                a sus clientes. Al utilizar DeliveryNow, las tiendas aceptan 
                                                los siguientes términos y condiciones:
                     
                                            </p>
                                            <p>
                                                <b></b>
                                                <b>1. Responsabilidades de los usuarios/tiendas:</b> Proporcionar información precisa y actualizada.
                     
                                            </p>
                                            <p>
                                                <b>2. Disponibilidad de los productos:</b> No podemos garantizar disponibilidad en todo momento.
                     
                                            </p>
                                            <p>
                                                <b>3. Precios y tarifas de entrega:</b> Pueden variar según la tienda/producto y serán informados antes del pedido.
                     
                                            </p>
                                            <p>
                                                <b>4. Política de cancelación:</b> Se puede proporcionar un reembolso según el momento de la cancelación.
                     
                                            </p>
                                            <p>
                                                <b>5. Entrega de pedidos:</b> Los tiempos pueden variar según factores externos y no nos hacemos responsables de retrasos.
                     
                                            </p>
                                            <p>
                                                <b>6. Responsabilidad limitada:</b> No somos responsables de los productos o servicios proporcionados por las tiendas asociadas.
                     
                                            </p>
                                            <p>
                                                <b>7. Privacidad y seguridad:</b> Nos comprometemos a proteger la privacidad y la información personal de nuestros clientes.
                     
                                            </p>

                                            <p>
                                                Al utilizar DeliveryNow, las tiendas aceptan cumplir con estos términos
                                                y condiciones. Nos reservamos el derecho de modificar estos términos en 
                                                cualquier momento sin previo aviso. Si tiene alguna pregunta o inquietud, 
                                                no dude en ponerse en contacto con nuestro servicio de atención al cliente.
                     
                                            </p>
                                        </div>
                                        <a href="#" class="btn-close-popup">X</a>
                                    </div>
                                </div>
                            </li>

                            <li><a href="#modal2" class="btn-open-popup">Política de privacidad</a>
                                <div class="container-all" id="modal2">
                                    <div class="popup">
                                        <div class="imagenpopup"></div>
                                        <div class="container-text2">
                                            <h1>Políticas de privacidad</h1>
                                            <p>
                                                DeliveryNow es un sistema de envíos en línea que se preocupa
                                                por la privacidad de sus usuarios y clientes. Por lo tanto, 
                                                ha implementado políticas de privacidad para garantizar que 
                                                la información personal de sus usuarios sea tratada de manera 
                                                responsable y transparente.
                   
                                            </p>
                                            <p>
                                                La política de privacidad de DeliveryNow cumple con las leyes y 
                                                regulaciones aplicables de protección de datos personales. 
                                                La información personal que se solicita al usuario durante el 
                                                registro, como su nombre, dirección de correo electrónico, 
                                                dirección de envío y número de teléfono, se utiliza únicamente 
                                                para facilitar la entrega de los paquetes y mejorar la experiencia
                                                de usuario. Además, se asegura que se maneje con el máximo cuidado
                                                y confidencialidad, y no se comparte con terceros sin el consentimiento del usuario.
                   
                                            </p>
                                            <p>
                                                DeliveryNow también utiliza cookies para recopilar información sobre 
                                                el uso de su sitio web y mejorar su funcionalidad. Estas cookies no
                                                recopilan información personal y el usuario tiene la opción de aceptar
                                                o rechazar su uso.
                   
                                            </p>
                                            <p>
                                                Además, DeliveryNow utiliza medidas de seguridad tecnológicas y 
                                                organizativas adecuadas para proteger la información personal del 
                                                usuario contra el acceso no autorizado, la modificación, divulgación
                                                o destrucción.
                   
                                            </p>
                                            <p>
                                                Los usuarios pueden acceder, corregir, actualizar o eliminar 
                                                su información personal en cualquier momento a través de su cuenta de DeliveryNow.
                   
                                            </p>

                                            <p>
                                                En resumen, DeliveryNow se compromete a garantizar la privacidad
                                                y seguridad de la información personal de sus usuarios y clientes,
                                                y toma medidas para cumplir con las regulaciones y leyes de 
                                                protección de datos.
                   
                                            </p>
                                        </div>
                                        <a href="#" class="btn-close-popup">X</a>
                                    </div>
                                </div>

                            </li>
                            <li><a href="#modal3" class="btn-open-popup">Preguntas frecuentes</a>
                                <div class="container-all" id="modal3">
                                    <div class="popup">
                                        <div class="imagenpopup"></div>
                                        <div class="container-text3">
                                            <h1>Preguntas frecuentes</h1>
                                            <p>
                                                Bienvenido al sistema de envíos DeliveryNow. Para ayudar a responder algunas
                                                preguntas comunes que puedas tener sobre nuestro servicio, hemos compilado 
                                                una lista de preguntas frecuentes a continuación:
                     
                                            </p>
                                            <p>
                                                <b>1. ¿Cómo puedo realizar un envío con DeliveryNow?</b>
                                            </p>

                                            <p>
                                                Puedes realizar un envío con DeliveryNow registrándote en nuestro sitio web, 
                                                ingresando la información de recogida y entrega, y seleccionando el tipo de envío que deseas realizar.
                     
                                            </p>

                                            <p>
                                                <b>2. ¿Cuánto tiempo tarda en llegar mi envío?</b>
                                            </p>

                                            <p>
                                                El tiempo de entrega depende de la distancia entre el lugar de recogida y el lugar de entrega. 
                                                Sin embargo, generalmente intentamos entregar los envíos dentro de las 24 horas siguientes a su recogida.
                     
                                            </p>

                                            <p>
                                                <b>3. ¿Qué tipo de envíos realiza DeliveryNow?</b>
                                            </p>

                                            <p>
                                                DeliveryNow realiza envíos de todo tipo, desde documentos hasta paquetes de tamaño mediano. 
                                                Además, ofrecemos servicios de envío urgentes para aquellos que necesitan sus envíos 
                                                entregados lo antes posible.
                     
                                            </p>

                                            <p>
                                                <b>4. ¿Cómo puedo hacer seguimiento a mi envío?</b>
                                            </p>

                                            <p>
                                                Puedes hacer seguimiento a tu envío en tiempo real a través de nuestra plataforma en línea
                                                o aplicación móvil. También te enviaremos actualizaciones por correo electrónico o mensajes
                                                de texto sobre el estado de tu envío.
                     
                                            </p>

                                            <p>
                                                <b>5. ¿Qué pasa si mi envío se pierde o daña durante el envío?</b>
                                            </p>
                                            <p>
                                                Si tu envío se pierde o daña durante el envío, contáctanos de inmediato 
                                                y trabajaremos contigo para resolver el problema lo antes posible. 
                                                Además, ofrecemos un seguro de envío opcional para aquellos que desean 
                                                proteger sus envíos contra daños o pérdidas.
                 
                                            </p>
                                            <p>
                                                Esperamos que estas preguntas frecuentes hayan respondido algunas de tus dudas
                                                sobre nuestro servicio de envíos DeliveryNow. Si tienes alguna pregunta adicional
                                                o necesitas más información, no dudes en contactarnos a través de nuestro sitio 
                                                web.
                 
                                            </p>
                                        </div>
                                        <a href="#" class="btn-close-popup">X</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
                <p>&copy; 2023 DeliveryNow. Todos los derechos reservados.</p>
            </footer>
        </asp:Panel>
    </form>
</body>
</html>
