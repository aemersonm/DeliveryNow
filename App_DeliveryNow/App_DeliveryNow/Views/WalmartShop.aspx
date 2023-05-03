<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WalmartShop.aspx.cs" Inherits="App_DeliveryNow.Views.WalmartShop" %>

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
                        <asp:Button ID="btnLogOut" class="btn_logOut" runat="server" Text="Cerrar Sesión" OnClick="btnLogOut_Click" />
                    </ul>
                </nav>
            </header>
            <div class="shop-header">
                <img class="logo5" src="../Resources/WalmartLogo.png" alt="Walmart" />
                <h2>Tienda oficial de Walmart</h2>
            </div>
            <hr class="separator" />
        </asp:Panel>

        <asp:Panel ID="pShop" runat="server">
            <div class="container2">
                <div class="product">
                    <img src="https://i5.walmartimages.com/asr/4a8022b3-bdf7-4362-9c92-a62c1c630168.203e71ae93c3a112f282b30d37a090dd.jpeg" alt="Fruit of the Loom Men's Boxer Briefs, 7-Pack" />
                    <h3>Fruit of the Loom Men's Boxer Briefs, 7-Pack</h3>
                    <p>Ropa interior para hombres.</p>
                    <p>Precio: $18.96</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://i5.walmartimages.com/asr/3c4b60bb-8724-4619-8d15-f3c680d0cb23.582d3da6da688b4af47c68a99b98d501.jpeg" alt="Gotham Steel Non-stick Copper Crisper Tray" />
                    <h3>Gotham Steel Non-stick Copper Crisper Tray</h3>
                    <p>Bandeja para hornear sin aceite.</p>
                    <p>Precio: $19.99</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://i.ebayimg.com/images/g/MlsAAOSwhj1g7EeT/s-l1600.jpg" alt="Mainstays 14-Piece Bathroom Set" />
                    <h3>Mainstays 14-Piece Bathroom Set</h3>
                    <p>Juego de baño de 14 piezas.</p>
                    <p>Precio: $19.97</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://www.officedepot.co.cr/medias/38752.jpg-1200ftw?context=bWFzdGVyfHJvb3R8Mjk1NDM0fGltYWdlL2pwZWd8aGJlL2hiNy8xMTU5MTcxNjQwNTI3OC8zODc1Mi5qcGdfMTIwMGZ0d3xlYzgzYTY2ODY0MjM2NDZmNWE4ZWY3ZTJiNTAxNzM4Njc5ZjYzMzQxNGU5NmRiY2QxMmVkNjJiODM2OWUwNDRi" alt="Laptop HP Pavilion" />
                    <h3>Laptop HP Pavilion</h3>
                    <p>Laptop de 15.6" con procesador Intel Core i5, 8GB de RAM y 256GB de almacenamiento SSD.</p>
                    <p>Precio: $649.00</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://www.tiendasekono.com/media/catalog/product/8/4/844752-1.jpg?quality=80&bg-color=255,255,255&fit=bounds&height=1080&width=1080&canvas=1080:1080" alt="Smart TV TCL" />
                    <h3>Smart TV TCL</h3>
                    <p>Televisor de 55" con resolución 4K UHD y sistema operativo Roku.</p>
                    <p>Precio: $398.00</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://s.cornershopapp.com/product-draft-images/397863.jpg?versionId=itpR_2thDj0FCU7_cRnYvSQkLDyLJOFt" alt="Aspiradora Shark" />
                    <h3>Aspiradora Shark</h3>
                    <p>Aspiradora sin bolsa con tecnología Anti Hair Wrap y sistema DuoClean.</p>
                    <p>Precio: $249.00</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://i5.walmartimages.com/asr/0d980b83-8ff7-4f81-b907-700e9e4e1e80_2.23c95e53c14f2ad6fe42e181e676b6fe.jpeg" alt="Samsung 55'' Class 4K (2160P) Smart LED TV (UN55NU6900)" />
                    <h3>Samsung 55'' Class 4K (2160P) Smart LED TV (UN55NU6900)</h3>
                    <p>Pantalla LED inteligente de 55 pulgadas con resolución 4K.</p>
                    <p>Precio: $399.99</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://i5.walmartimages.com/asr/70af2b3c-4893-4d38-a741-6c295b609af5_1.ee0d98aed8fc082c118e2d637e481847.jpeg" alt="HP 15.6'' Laptop (Intel Pentium Silver N5000, 4GB RAM, 128GB SSD)" />
                    <h3>HP 15.6'' Laptop (Intel Pentium Silver N5000, 4GB RAM, 128GB SSD)</h3>
                    <p>Portátil de 15.6 pulgadas con procesador Intel Pentium Silver N5000, 4GB de RAM y 128GB de almacenamiento SSD.</p>
                    <p>Precio: $319.00</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://m.media-amazon.com/images/I/517WWunKo3L.jpg" alt="NutriBullet Pro 900 Series Blender" />
                    <h3>NutriBullet Pro 900 Series Blender</h3>
                    <p>Extractor de nutrientes de alta velocidad con potencia de 900 vatios.</p>
                    <p>Precio: $79.00</p>
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

