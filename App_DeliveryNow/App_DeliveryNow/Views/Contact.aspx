<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="App_DeliveryNow.Views.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>DeliveryNow</title>
    <link rel="stylesheet" href="../Design/style.css" type="text/css" />

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

        <asp:Panel ID="pContact" runat="server">
            <div id="containerCont">
                <div id="formContact">
                    <div>
                        <label for="name" class="lbl">
                            <span class="required">Nombre: *</span>
                            <input class="txt" type="text" id="nameContact" name="name" placeholder="Nombre Completo" required="required" tabindex="1" autofocus="autofocus" />
                        </label>
                    </div>
                    <br />
                    <div>
                        <label for="email" class="lbl">
                            <span class="required">Correo: *</span>
                            <input class="txt" type="email" id="emailContact" name="email" placeholder="Correo Electrónico" tabindex="2" required="required" />
                        </label>
                    </div>
                    <br />
                    <div>
                        <span class="lbl">Categoría: </span>
                        <select id="subject" class="txt" name="subject" tabindex="3">
                            <option>Necesito...</option>
                            <option>Localizar mi pedido</option>
                            <option>Solicitar reembolso</option>
                            <option>Calificar el servicio</option>
                            <option>Otra </option>
                        </select>
                    </div>
                    <br />
                    <div>
                        <p class="lbl"><b>Mensaje: *</b></p>
                        <textarea class="txt" id="messageContact" name="message" placeholder="Ingrese su mensaje aquí." tabindex="4" required="required"></textarea>
                    </div>
                    <br />
                    <div>
                        <button name="submit" class="btn" type="submit" id="submit">Enviar</button>
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
        <div>
        </div>
    </form>
</body>
</html>
