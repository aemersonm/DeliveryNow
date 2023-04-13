<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="App_DeliveryNow.Views.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="../Design/style.css" type="text/css"/>
    <title>DeliveryNow</title>
</head>


<body aria-sort="none">
    <form id="MainPage" runat="server">
        <div>
       </div>
        <asp:Panel ID="pMain" runat="server" BorderStyle="Solid">
            <asp:Image ID="imgLogo" runat="server" ImageUrl="~/Resources/logo.png" Height="150px" Width="150px" />
            <asp:Label ID="lblWelcome" runat="server" CssClass="lbl"></asp:Label>
            <br />
            <asp:Button ID="btnIdentify" CssClass="btn" runat="server" Text="REGÍSTRATE" OnClick="btnIdentify_Click"/>
            <asp:Button ID="btnLogin" CssClass="btn" runat="server" Text="INICIAR SESIÓN" OnClick="btnLogin_Click" />
        </asp:Panel>
    </form>
</body>
</html>
