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
                        <li><a href="MainPage.aspx">Inicio</a></li>
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
