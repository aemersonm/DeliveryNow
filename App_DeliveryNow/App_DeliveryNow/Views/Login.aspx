<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="App_DeliveryNow.Views.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="../Design/style.css" type="text/css"/>
    <title>Inicia Sesión</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <asp:Panel ID="pMain" runat="server" BorderStyle="Solid">
                <asp:Image ID="imgLogo" runat="server" Width="150px" Height="150px" ImageUrl="~/Resources/logo.png" />
                <div class="cls_div" >
        <asp:Button Text="SOBRE NOSOTROS" runat="server" CssClass="btn_panel" OnClick="btnAboutUs_Click" ID="btnAboutUs"/>
                </div>
            <div>
                <asp:Panel ID="pBody" runat="server" BorderStyle="Solid">
                <br /> 
                    <asp:Label ID="lblMain" runat="server" Text="INICIA SESIÓN EN TU CUENTA"></asp:Label>
                    <br />
                <div >
                    <br /> <br />
                    <asp:Label ID="lblUsername" runat="server" CssClass="lbl" Text="USUARIO:"></asp:Label>
                    <br /> 
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="txt"></asp:TextBox>
                    <br /> <br />
                    <asp:Label ID="LblPassword" runat="server" CssClass="lbl" Text="CONTRASEÑA:"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="txt" onkeyup="this.value=this.value.replace(/[^\*]/g,'*')" OnTextChanged="txtPassword_TextChanged"></asp:TextBox>
                    <br /> <br />
                    <asp:Button ID="btnLogin" runat="server" CssClass="btn" Text="INICIAR SESIÓN" OnClick="btnLogin_Click" />
                    <br /> 
                    <br />
                </div>
            </asp:Panel>
            </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
