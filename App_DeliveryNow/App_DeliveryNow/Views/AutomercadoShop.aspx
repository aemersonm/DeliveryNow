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
                        <li><a href="Tienda.aspx">Tiendas</a></li>
                        <li><a href="AboutUs.aspx">Nosotros</a></li>
                        <li><a href="Contact.aspx">Contacto</a></li>
                        <li><a href="Carrito.aspx">Carrito</a></li>
                        <li><a style="color: #2e4f4f;" href="MainPage.aspx"><b>Cerrar Sesión</b></a></li>
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
