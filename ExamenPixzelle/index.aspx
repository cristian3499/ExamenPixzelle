<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ExamenPixzelle.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" ></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <link href="Resources/Css/Styles.css" rel="stylesheet"/>
    <title></title>
</head>
<body>
        <h1 class="text-center">Bienvenido Usuario</h1>
    <br />
    <div class="container">
         <h3 class="h3">Lista de Videojuegos</h3>
             <button type="button" class="btn btn-success">Agregar</button>
            <table class="table table-dark">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">Nombre</th>
                  <th scope="col">Descripcion</th>
                  <th scope="col">Fecha Lanz</th>
                  <th scope="col">Portada</th>
                   <th scope="col">Compañia de Desarrollo</th>
                    <th scope="col">Consola de Videojuego</th>
                    <th>Eliminar</th>
                    <th>Editar</th>
                </tr>
              </thead>
          <tbody>
              <asp:Repeater runat="server" ID="repVJ" ItemType="ExamenPixzelle.Videojuegos">
                  <ItemTemplate>
                      <tr>
                          <th scope="row"><%# Container.ItemIndex + 1 %></th>
                          <td><%# Item.nombre %></td>
                          <td><%# Item.descripcion %></td>
                          <td><%# Item.fechaLanzamiento %></td>
                          <td><%# Item.Portada %></td>
                          <td><%# Item.Compañia %></td>
                          <td><%# Item.ConsolaJuego %></td>
                          <td><button type="button" class="btn btn-danger"><i class="bi bi-trash-fill"></i></button></td>
                          <td><button type="button" class="btn btn-warning"><i class="bi bi-pencil-fill"></i></button></td>
                      </tr>
                  </ItemTemplate>
              </asp:Repeater>
          </tbody>
        </table>
    </div>
</body>
</html>
