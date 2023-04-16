<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="App_DeliveryNow.Views.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="../Design/style.css" type="text/css"/>
<link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet"/>
    <title>DeliveryNow</title>
</head>
<body aria-sort="none">
     <header>
      <asp:Image ID="Image1" runat="server" ImageUrl="~/Resources/logonobg.png" Height="150px" Width="150px"></asp:Image>
      <nav>
        <ul>
          <li><a href="#">Inicio</a></li>
          <li><a href="#">Productos</a></li>
          <li><a href="#">Nosotros</a></li>
          <li><a href="#">Contacto</a></li>
        </ul>
      </nav>
    </header>
    <form id="MainPage" runat="server">
        <asp:Panel ID="pMain" runat="server" BorderStyle="Solid">
            <div id="logid">
            <asp:Image ID="imgLogo" runat="server" ImageUrl="~/Resources/logo.png" Height="150px" Width="150px"></asp:Image>
            <br />
            <asp:Label ID="lblWelcome" runat="server" CssClass="lbl" Text="" Visible="True" Font-Bold="True"></asp:Label>
            <br /> <br />
            <asp:Button ID="btnStartRegister" CssClass="btn" runat="server" Text="REGÍSTRATE" OnClick="btnStartRegister_Click"/>
            <asp:Button ID="btnStartLogin" CssClass="btn" runat="server" Text="INICIAR SESIÓN" OnClick="btnStartLogin_Click" />
             </div>
        </asp:Panel>

        <asp:Panel ID="pBody" runat="server" BorderStyle="Solid" Visible="False">
            <br /> <br />
            <div >
                <asp:Label ID="lblMain" runat="server" Text="CREA TU CUENTA" Visible="False"></asp:Label>
                <br /> <br />
                <asp:Label ID="lblUsername" runat="server" CssClass="lbl" Text="USUARIO:" Visible="False"></asp:Label>
                <br /> 
                <asp:TextBox ID="txtUsername" runat="server" CssClass="txt" Visible="False"></asp:TextBox>
                <br /> <br />
                <asp:Label ID="LblPassword" runat="server" CssClass="lbl" Text="CONTRASEÑA:" Visible="False"></asp:Label>
                <br />
                <asp:TextBox ID="txtPassword" runat="server" CssClass="txt" onkeyup="this.value=this.value.replace(/[^\*]/g,'*')" OnTextChanged="txtPassword_OnTextChanged" Visible="False"></asp:TextBox>
                <br /> <br />
                <asp:Button ID="btnLogin" Text="INICIAR SESIÓN" runat="server" CssClass="btn" OnClick="btnLogin_Click" Visible="False" />
                <br /> <br />
                <div id="body1">
                <asp:Label ID="lblName" runat="server" cssClass="lbl" Text="NOMBRE:" Visible="False"></asp:Label>
                <br />
                <asp:TextBox ID="txtName" runat="server" CssClass="txt" Visible="False"></asp:TextBox>
                <br /> <br />
                <asp:Label ID="lblLastName" runat="server" CssClass="lbl" Text="APELLIDO:" Visible="False"></asp:Label>
                <br />
                <asp:TextBox ID="txtLastName" runat="server" CssClass="txt" Visible="False"></asp:TextBox>
                <br /> <br />
                </div>
                <div id="body2">
                <asp:Label ID="lblPhNumber" runat="server" CssClass="lbl" Text="TELÉFONO:" Visible="False"></asp:Label>
                <br />
                <asp:TextBox ID="txtPhNumber" runat="server" CssClass="txt" Visible="False"></asp:TextBox>
                <br /> <br />
                <asp:Label ID="lblAddress" runat="server" CssClass="lbl" Text="DIRECCIÓN:" Visible="False"></asp:Label>
                <br />
                <asp:TextBox ID="txtAddress" runat="server" CssClass="txt" Height="90px" Visible="False"></asp:TextBox>
                <br /> <br />
                </div>
                <div id="body3">
                <asp:Label ID="lblPay" runat="server" CssClass="lbl" Text="MÉTODO DE PAGO PREFERIDO:" Visible="False"></asp:Label>
                <br />
                <asp:ListBox ID="lbPay" runat="server" Visible="False">
                    <asp:ListItem>Tarjeta Débito</asp:ListItem>
                    <asp:ListItem>Tarjeta Crédito</asp:ListItem>
                    <asp:ListItem>Efectivo</asp:ListItem>
                    <asp:ListItem>PayPal</asp:ListItem>
                </asp:ListBox>
                <br /> <br />
                <asp:CheckBox ID="cbTC" runat="server" Text="He leído y acepto los Términos y Condiciones." Visible="False" />
                <br /> <br />
                </div>
                <div id="body4">
                <asp:Button ID="btnRegister" runat="server" CssClass="btn" Text="CREAR CUENTA" OnClick="btnRegister_Click" Visible="False" />
                <br /> 
                <br />
                <asp:Label ID="lblQuestion" runat="server" Text="¿Ya tienes una cuenta?" Visible="False"></asp:Label>
                </div>
                <asp:Button ID="btnLoginOpt" runat="server" Text="Inicia Sesión" OnClick="btnLoginOpt_Click" Visible="False" />
            </div>
        </asp:Panel>

    </form>
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
</body>
</html>