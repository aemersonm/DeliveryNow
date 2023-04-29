<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NikeShop.aspx.cs" Inherits="App_DeliveryNow.Views.AboutUs" %>

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
                <img class="logo1" src="../Resources/NikeLogo.png" alt="Nike" />
                <h2>Tienda oficial de Nike</h2>
            </div>
            <hr class="separator" />
        </asp:Panel>

        <asp:Panel ID="pShop" runat="server">
            <div class="container2">
                <div class="product">
                    <img src="https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/7894dfa1-f942-4591-9272-3e2ddd66bc31/calzado-air-force-1-07-lv8-emb-s8hCLW.png" alt="Nike Air Force 1 '07 LV8" />
                    <h3>Nike Air Force 1 '07 LV8</h3>
                    <p>Zapatillas de estilo clásico confeccionadas con cuero de primera calidad y detalles elegantes en la parte superior.</p>
                    <p>Precio: $99.99</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/4669ffe9-07f3-4105-ac83-bfea897bb1dd/calzado-de-running-pegasus-38-nfl-pittsburgh-steelers-884pG1.png" alt="Nike Air Zoom Pegasus 38" />
                    <h3>Nike Air Zoom Pegasus 38</h3>
                    <p>Zapatillas de running con tecnología Nike React que proporciona una amortiguación reactiva y duradera.</p>
                    <p>Precio: $119.99</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/d948def6-330b-4222-b9fe-db917024cf85/sudadera-con-gorro-de-cierre-completo-sportswear-tech-fleece-windrunner-2DmB0r.png" alt="Nike Sportswear Tech Fleece Windrunner" />
                    <h3>Nike Sportswear Tech Fleece Windrunner</h3>
                    <p>Sudadera con capucha y cremallera de estilo deportivo confeccionada con tejido Fleece suave y cálido.</p>
                    <p>Precio: $119.99</p>
                    <button>Agregar al carrito</button>
                </div>
                <div class="product">
                    <img src="https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/ptxy4m33guxhewvlbnyy/calzado-air-max-270-react-zPRv3k.png" alt="Nike Air Max 270 React" />
                    <h3>Nike Air Max 270 React</h3>
                    <p>Estas zapatillas ofrecen una combinación de estilo y comodidad, gracias a su diseño moderno y su suela Nike React que proporciona una gran amortiguación. Disponible en varios colores.</p>
                    <p>Precio: $120.00</p>
                    <button>Agregar al carrito</button>
                </div>

                <div class="product">
                    <img src="https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/07b974d7-d0a1-428e-b23f-b11fd9ab0524/pro-dri-fit-womens-graphic-crop-tank-xmGpjL.png" alt="Nike Pro Crop Tank" />
                    <h3>Nike Pro Crop Tank</h3>
                    <p>Este top de entrenamiento para mujer es cómodo y transpirable, perfecto para tus entrenamientos. Cuenta con la tecnología Dri-FIT que te mantiene fresca y seca durante todo el día. Disponible en varios colores.</p>
                    <p>Precio: $35.00</p>
                    <button>Agregar al carrito</button>
                </div>

                <div class="product">
                    <img src="https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/t0okyycbl4ympuel6svl/pantalones-de-entrenamiento-sportswear-club-fleece-KflRdQ.png" alt="Nike Sportswear Club Fleece" />
                    <h3>Nike Sportswear Club Fleece</h3>
                    <p>Este hoodie de algodón es cómodo y versátil, perfecto para cualquier ocasión. Cuenta con el icónico logo de Nike en la parte delantera y está disponible en varios colores.</p>
                    <p>Precio: $50.00</p>
                    <button>Agregar al carrito</button>
                </div>
                    <div class="product">
                        <img src="https://nikearprod.vtexassets.com/arquivos/ids/156350/DJ2839_054_A_PREM-hei-3144-wid-3144-fmt.jpg?v=1769077658" alt="Nike Mercurial Superfly 8 Elite FG" />
                        <h3>Nike Mercurial Superfly 8 Elite FG</h3>
                        <p>Zapatos de fútbol de terreno firme para hombre.</p>
                        <p>Precio: $275.00</p>
                        <button>Agregar al carrito</button>
                    </div>
                    <div class="product">
                        <img src="https://productos.cimocr.xyz/ci9925-700_2.jpg" alt="Nike Air Zoom Alphafly Next FK" />
                        <h3>Nike Air Zoom Alphafly Next FK</h3>
                        <p>Zapatillas de running para hombre.</p>
                        <p>Precio: $275.00</p>
                        <button>Agregar al carrito</button>
                    </div>
                    <div class="product">
                        <img src="https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/f19025e7-348d-416f-b817-dfa332d3fc71/sportswear-tech-fleece-hoodie-KDJBQH.png" alt="Nike Sportswear Tech Fleece Hoodie Full Zip" />
                        <h3>Nike Sportswear Tech Fleece Hoodie Full Zip</h3>
                        <p>Sudadera con capucha para hombre.</p>
                        <p>Precio: $130.00</p>
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