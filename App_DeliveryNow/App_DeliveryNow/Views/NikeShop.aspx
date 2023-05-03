<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NikeShop.aspx.cs" Inherits="App_DeliveryNow.Views.NikeShop" %>

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
                <img class="logo1" src="../Resources/NikeLogo.png" alt="Nike" />
                <h2>Tienda oficial de Nike</h2>
            </div>
            <hr class="separator" />
        </asp:Panel>

        <asp:Panel ID="pShop" runat="server">
            <div class="container2">
                <%--PRODUCTO 1--%>
                <div class="product">
                    <asp:Image runat="server" src="https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/7894dfa1-f942-4591-9272-3e2ddd66bc31/calzado-air-force-1-07-lv8-emb-s8hCLW.png" alt="Nike Air Force 1 '07 LV8"></asp:Image>
                    <asp:Label runat="server" CssClass="lbl_productName">Nike Air Force 1 '07 LV8</asp:Label>
                    <br />
                    <br />
                    <asp:Label runat="server" CssClass="lbl_productDescription">Zapatillas de estilo clásico confeccionadas con cuero de primera calidad y detalles elegantes en la parte superior.</asp:Label>
                    <br />
                    <br />
                    <asp:Label runat="server" CssClass="lbl_productDetails">Precio: $100.00</asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblMain" runat="server" CssClass="lbl_productDetails">Elige la cantidad:</asp:Label>
                    <asp:DropDownList ID="ddList_Prod1" CssClass="lbl_productDetails" runat="server">
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button CssClass="btn_products" ID="btnProd1" runat="server" Text="Agregar al carrito" OnClick="btnProd1_Click"></asp:Button>
                </div>
                <%--PRODUCTO 2--%>
                <div class="product">
                    <asp:Image runat="server" src="https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/4669ffe9-07f3-4105-ac83-bfea897bb1dd/calzado-de-running-pegasus-38-nfl-pittsburgh-steelers-884pG1.png" alt="Nike Air Zoom Pegasus 38"></asp:Image>
                    <asp:Label runat="server" CssClass="lbl_productName">Nike Air Zoom Pegasus 38</asp:Label>
                    <br />
                    <br />
                    <asp:Label runat="server" CssClass="lbl_productDescription">Zapatillas de running con tecnología Nike React que proporciona una amortiguación reactiva y duradera.</asp:Label>
                    <br />
                    <br />
                    <asp:Label runat="server" CssClass="lbl_productDetails">Precio: $120.00</asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" CssClass="lbl_productDetails">Elige la cantidad:</asp:Label>
                    <asp:DropDownList ID="ddList_Prod2" CssClass="lbl_productDetails" runat="server">
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="btnProd2" CssClass="btn_products" runat="server" Text="Agregar al carrito" OnClick="btnProd2_Click"></asp:Button>
                </div>
                <%--PRODUCTO 3--%>
                <div class="product">
                    <img src="https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/d948def6-330b-4222-b9fe-db917024cf85/sudadera-con-gorro-de-cierre-completo-sportswear-tech-fleece-windrunner-2DmB0r.png" alt="Nike Sportswear Tech Fleece Windrunner" />
                    <h3>Nike Sportswear Tech Fleece Windrunner</h3>
                    <p>Sudadera con capucha y cremallera de estilo deportivo confeccionada con tejido Fleece suave y cálido.</p>
                    <p>Precio: $120.00</p>
                    <asp:Button ID="btnProd3" CssClass="btn_products" runat="server" Text="Agregar al carrito"></asp:Button>
                </div>
                <%--PRODUCTO 4--%>
                <div class="product">
                    <img src="https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/ptxy4m33guxhewvlbnyy/calzado-air-max-270-react-zPRv3k.png" alt="Nike Air Max 270 React" />
                    <h3>Nike Air Max 270 React</h3>
                    <p>Estas zapatillas ofrecen una combinación de estilo y comodidad, gracias a su diseño moderno y su suela Nike React que proporciona una gran amortiguación. Disponible en varios colores.</p>
                    <p>Precio: $120.00</p>
                    <asp:Button ID="btnProd4" CssClass="btn_products" runat="server" Text="Agregar al carrito"></asp:Button>
                </div>
                <%--PRODUCTO 5--%>
                <div class="product">
                    <img src="https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/07b974d7-d0a1-428e-b23f-b11fd9ab0524/pro-dri-fit-womens-graphic-crop-tank-xmGpjL.png" alt="Nike Pro Crop Tank" />
                    <h3>Nike Pro Crop Tank</h3>
                    <p>Este top de entrenamiento para mujer es cómodo y transpirable, perfecto para tus entrenamientos. Cuenta con la tecnología Dri-FIT que te mantiene fresca y seca durante todo el día. Disponible en varios colores.</p>
                    <p>Precio: $35.00</p>
                    <asp:Button ID="btnProd5" CssClass="btn_products" runat="server" Text="Agregar al carrito"></asp:Button>
                </div>
                <%--PRODUCTO 6--%>
                <div class="product">
                    <img src="https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/t0okyycbl4ympuel6svl/pantalones-de-entrenamiento-sportswear-club-fleece-KflRdQ.png" alt="Nike Sportswear Club Fleece" />
                    <h3>Nike Sportswear Club Fleece</h3>
                    <p>Este hoodie de algodón es cómodo y versátil, perfecto para cualquier ocasión. Cuenta con el icónico logo de Nike en la parte delantera y está disponible en varios colores.</p>
                    <p>Precio: $50.00</p>
                    <asp:Button ID="btnProd6" CssClass="btn_products" runat="server" Text="Agregar al carrito"></asp:Button>
                </div>
                <%--PRODUCTO 7--%>
                <div class="product">
                    <img src="https://nikearprod.vtexassets.com/arquivos/ids/156350/DJ2839_054_A_PREM-hei-3144-wid-3144-fmt.jpg?v=1769077658" alt="Nike Mercurial Superfly 8 Elite FG" />
                    <h3>Nike Mercurial Superfly 8 Elite FG</h3>
                    <p>Zapatos de fútbol de terreno firme para hombre.</p>
                    <p>Precio: $275.00</p>
                    <asp:Button ID="btnProd7" CssClass="btn_products" runat="server" Text="Agregar al carrito"></asp:Button>
                </div>
                <%--PRODUCTO 8--%>
                <div class="product">
                    <img src="https://productos.cimocr.xyz/ci9925-700_2.jpg" alt="Nike Air Zoom Alphafly Next FK" />
                    <h3>Nike Air Zoom Alphafly Next FK</h3>
                    <p>Zapatillas de running para hombre.</p>
                    <p>Precio: $275.00</p>
                    <asp:Button ID="btnProd8" CssClass="btn_products" runat="server" Text="Agregar al carrito"></asp:Button>
                </div>
                <%--PRODUCTO 9--%>
                <div class="product">
                    <img src="https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/f19025e7-348d-416f-b817-dfa332d3fc71/sportswear-tech-fleece-hoodie-KDJBQH.png" alt="Nike Sportswear Tech Fleece Hoodie Full Zip" />
                    <h3>Nike Sportswear Tech Fleece Hoodie Full Zip</h3>
                    <p>Sudadera con capucha para hombre.</p>
                    <p>Precio: $120.00</p>
                    <asp:Button ID="btnProd9" CssClass="btn_products" runat="server" Text="Agregar al carrito"></asp:Button>
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
