<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ExamenPixzelle.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" ></script>
    <link href="Resources/Css/Styles.css" rel="stylesheet"/>
    <title>Login Pixzelle</title>
</head>
<body class="bg-light">
    <div class="contenedor1">
        <div class="conten-Form">
            <form id="form_login" class="login" runat="server">
                <h1 class="text-center">Login</h1>
                  <div class="mb-3">
                      <asp:Label class="form-label" ID="lblUser" runat="server" Text="Nombre del usuario:"></asp:Label>
                      <asp:TextBox class="form-control" ID="txtUser" runat="server" placeholder="Nombre de Usario" required="required"></asp:TextBox>
                  </div>
                  <div class="mb-3">
                    <asp:Label class="form-label" ID="lblPass" runat="server" Text="Contraseña:"></asp:Label>
                      <asp:TextBox type="password" class="form-control" ID="txtPass" runat="server" placeholder="Contraseña" required="required"></asp:TextBox>
                  </div>
                <div class="row">
                    <asp:Label runat="server" ID="Error" CssClass="lblError"></asp:Label>
                </div>
                <br>
                  <div class="row">
                      <asp:Button CssClass="btn btn-primary" ID="btnIngresar" runat="server" Text="Ingresar" OnClick="btnIngresar_Click1" />
                  </div>
             </form>
        </div>
    </div>
</body>
</html>
