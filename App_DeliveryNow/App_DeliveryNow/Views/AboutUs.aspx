<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="App_DeliveryNow.Views.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="../Design/style.css" type="text/css" />

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
                        <li><a href="#">Productos</a></li>
                        <li><a href="AboutUs.aspx">Nosotros</a></li>
                        <li><a href="Contact.aspx">Contacto</a></li>
                    </ul>
                </nav>
            </header>
        </asp:Panel>

        <asp:Panel ID="pAbout" runat="server">
            <div class="container">
                <div class="imageAbout"></div>
                <div class="infoAbout">
                    <h1>Sobre Nosotros
                    </h1>

                    <h3>Nuestro Servicio</h3>
                    <p>
                        Ofrecemos servicios de envío de alta calidad nuestros clientes en cualquier rincón del país. Nos esforzamos por proporcionar una experiencia de envío excepcional, desde la facilidad de uso de nuestro sitio web hasta la rapidez y eficiencia de nuestras operaciones. 
                    </p>

                    <h3>Misión y valores</h3>
                    <p>
                        Nuestra misión es proporcionar a nuestros clientes un servicio de envío confiable y eficiente a precios asequibles. Creemos en la honestidad, la transparencia y la responsabilidad en todo lo que hacemos. Nos esforzamos por superar las expectativas de nuestros clientes en cada oportunidad.
                    </p>

                    <h3>Contacto</h3>
                    <p>
                        Si necesita ponerse en contacto con nosotros, puede hacerlo a través de nuestro sitio web, por correo electrónico o por teléfono. Estamos siempre disponibles para responder preguntas y ayudar a nuestros clientes en todo lo que necesiten.                   
                    </p>
                    <br />
                    <br>
                    <div>
                        <a href="Contact.aspx" class="btnContact">Contáctenos</a>
                    </div>
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
