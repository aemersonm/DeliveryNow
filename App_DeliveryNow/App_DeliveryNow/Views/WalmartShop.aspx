<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WalmartShop.aspx.cs" Inherits="App_DeliveryNow.Views.AboutUs" %>

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
