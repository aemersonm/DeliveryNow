<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="App_DeliveryNow.Views.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="../Design/style.css" type="text/css"/>
    <title>Registro</title>
</head>

<body>
    <form id="Register" runat="server">
        <div>
            <asp:Panel ID="pMain" runat="server" BorderStyle="Solid">
                <asp:Image ID="imgLogo" runat="server" Width="150px" Height="150px" ImageUrl="~/Resources/logo.png" />
                <div class="cls_div" >
                    <asp:Button Text="SOBRE NOSOTROS" runat="server" CssClass="btn_panel" ID="btnAboutUs" OnClick="btnAboutUs_Click"/>
                </div>
            </asp:Panel>
            <asp:Panel ID="pBody" runat="server" BorderStyle="Solid">
                <br /> <br />
                <div >
                    <asp:Label ID="lblMain" runat="server" Text="CREA TU CUENTA"></asp:Label>
                    <br /> <br />
                    <asp:Label ID="lblUsername" runat="server" CssClass="lbl" Text="USUARIO:"></asp:Label>
                    <br /> 
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="txt"></asp:TextBox>
                    <br /> <br />
                    <asp:Label ID="LblPassword" runat="server" CssClass="lbl" Text="CONTRASEÑA:"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="txt" onkeyup="this.value=this.value.replace(/[^\*]/g,'*')" OnTextChanged="txtPassword_OnTextChanged"></asp:TextBox>
                    <br /> <br />
                    <asp:Button ID="btnContinue" Text="CONTINUAR" runat="server" CssClass="btn" OnClick="btnContinue_Click" />
                    <br /> <br />
                    <asp:Label ID="lblName" runat="server" CssClass="lbl" Text="NOMBRE:"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtName" runat="server" CssClass="txt"></asp:TextBox>
                    <br /> <br />
                    <asp:Label ID="lblLastName" runat="server" CssClass="lbl" Text="APELLIDO:"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtLastName" runat="server" CssClass="txt"></asp:TextBox>
                    <br /> <br />
                    <asp:Label ID="lblPhNumber" runat="server" CssClass="lbl" Text="TELÉFONO:"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtPhNumber" runat="server" CssClass="txt"></asp:TextBox>
                    <br /> <br />
                    <asp:Label ID="lblAddress" runat="server" CssClass="lbl" Text="DIRECCIÓN:"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="txt" Height="90px"></asp:TextBox>
                    <br /> <br />
                    <asp:Label ID="lblPay" runat="server" CssClass="lbl" Text="MÉTODO DE PAGO PREFERIDO:"></asp:Label>
                    <br />
                     <asp:ListBox ID="lbPay" runat="server">
                         <asp:ListItem>Tarjeta Débito</asp:ListItem>
                         <asp:ListItem>Tarjeta Crédito</asp:ListItem>
                         <asp:ListItem>Efectivo</asp:ListItem>
                         <asp:ListItem>PayPal</asp:ListItem>
                    </asp:ListBox>
                    <br /> <br />
                    <asp:CheckBox ID="cbTC" runat="server" Text="He leído y acepto los Términos y Condiciones." />
                    <br /> <br />
                    <asp:Button ID="btnRegister" runat="server" CssClass="btn" Text="CREAR CUENTA" OnClick="btnRegister_Click" />
                    <br /> 
                    <br />
                    <asp:Label ID="lblQuestion" runat="server" Text="¿Ya tienes una cuenta?"></asp:Label>
                    <asp:Button ID="btnLoginOpt" runat="server" Text="Inicia Sesión" OnClick="btnLoginOpt_Click" />
                </div>
            </asp:Panel>
        </div>
    </form>
</body>

</html>
