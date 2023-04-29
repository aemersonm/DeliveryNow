<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExtremetechShop.aspx.cs" Inherits="App_DeliveryNow.Views.AboutUs" %>

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
                    </ul>
                </nav>
            </header>
            <div class="shop-header">
                <img class="logo3" src="../Resources/ExtremetechLogo.png" alt="Extremetech" />
                <h2>Tienda oficial de Extremetech</h2>
            </div>
            <hr class="separator" />
        </asp:Panel>

        <asp:Panel ID="pShop" runat="server">
            <div class="container2">
                <div class="product">
                    <img src="https://www.multimall.cr/web/image/product.template/55131/image_1024?unique=934f0dc" alt="MacBook Pro 16 M1 Max" />
                    <h3>MacBook Pro 16 M1 Max</h3>
                    <p>Laptop de Apple con procesador M1 Max, 1TB de almacenamiento y 32GB de RAM.</p>
                    <p>Precio: $6110.19</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://www.multimall.cr/web/image/product.template/59461/image_512?unique=d82410b" alt="GoPro HERO10 Black" />
                    <h3>GoPro HERO10 Black</h3>
                    <p>Cámara de acción con video 5.3K, fotos de 23MP, pantalla táctil y estabilización HyperSmooth 4.0.</p>
                    <p>Precio: $777.96</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://cdn.shopify.com/s/files/1/0672/1693/3177/products/5_37f63dda-b388-4400-aeea-3c46c5d22822.jpg?v=1668859013&width=500" alt="ASUS ROG Strix Scar 15 2022" />
                    <h3>ASUS ROG Strix Scar 15 2022</h3>
                    <p>Laptop para gaming con procesador Intel Core i9-11900H, NVIDIA GeForce RTX 3080, 32GB de RAM y 1TB de almacenamiento SSD.</p>
                    <p>Precio: $10740.74</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://www.mallasulatina.com/web/image/product.template/64521/image_1024?unique=c5a37af" alt="Memoria RAM Corsair Vengeance RGB Pro 16GB DDR4 3200MHz" />
                    <h3>Memoria RAM Corsair Vengeance RGB Pro 16GB DDR4 3200MHz</h3>
                    <p>Módulo de memoria RAM de alta velocidad para PC.</p>
                    <p>Precio: $147.96</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://img.pccomponentes.com/articles/21/219467/a1.jpg" alt="SSD Corsair Force Series MPX 1TB PCIe Gen 4 M.2" />
                    <h3>SSD Corsair Force Series MPX 1TB PCIe Gen 4 M.2</h3>
                    <p>Disco sólido de alta velocidad para PC.</p>
                    <p>Precio: $388.70</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://cdn.shopify.com/s/files/1/2227/7667/products/500x_55605328-7a3b-4bda-9078-6abc9d693ace_grande.jpg?v=1626319553" alt="Tarjeta de Video ASUS GeForce RTX 3060 Ti" />
                    <h3>Tarjeta de Video ASUS GeForce RTX 3060 Ti</h3>
                    <p>Tarjeta gráfica de alta gama para PC.</p>
                    <p>Precio: $870.37</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://images-na.ssl-images-amazon.com/images/I/911IvoPddlS._AC_UL750_SR750,750_.jpg" alt="MSI B460M Pro-VDH WiFi" />
                    <h3>MSI B460M Pro-VDH WiFi</h3>
                    <p>Placa madre micro ATX para procesadores Intel</p>
                    <p>Precio: $175.93</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://http2.mlstatic.com/D_NQ_NP_704051-MLA51106089649_082022-O.jpg" alt="Cooler Master MasterBox Q300L" />
                    <h3>Cooler Master MasterBox Q300L</h3>
                    <p>Gabinete micro ATX con panel lateral acrílico.</p>
                    <p>Precio: $101.85</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://www.corsair.com/medias/sys_master/images/images/hfe/he6/8849507418142/-CP-9020103-NA-Gallery-CX650M-01.png" alt="Corsair CX650" />
                    <h3>Corsair CX650</h3>
                    <p>Fuente de poder certificada 80+ Bronze de 650W.</p>
                    <p>Precio: $129.63</p>
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
