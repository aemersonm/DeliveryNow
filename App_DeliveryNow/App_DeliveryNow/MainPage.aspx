<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="App_DeliveryNow.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>DeliveryNow</title>
    <style>
        #pMain {
            border-block: double;
            text-align:center;
        }
        .btn{
            border-style:double;
            color: black;
            font-weight:bold;
            padding:5px;
            border-radius:10px;

        }
        
    </style>
</head>


<body>
    <form id="form1" runat="server">
        <div>
       </div>
        <asp:Panel ID="pMain" runat="server" BorderStyle="Solid">
            <asp:Image ID="imgLogo" runat="server" ImageUrl="~/Resources/logo.png" />
            <br />
            <asp:Button ID="btnIdentify" CssClass="btn" runat="server" Text="CREAR CUENTA" OnClick="btnIdentify_Click" />
            <asp:Button ID="btnLogin" CssClass="btn" runat="server" Text="INICIAR SESIÓN" />
            
        </asp:Panel>
    </form>
</body>
</html>
