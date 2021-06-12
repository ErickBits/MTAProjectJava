
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.usuario"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.personaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/crud.css" rel="stylesheet" type="text/css"/>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
        <title>Mta | listar usuario</title>
    </head>
    <body>

        <div class="container">
            <h1>Usuarios</h1>
            <a class="btn btn-success" href="Controlador?accion=add">Agregar Nuevo Usuario</a>
            <br>
            <br>
            <table class="table table-hover table-bordered">
                <thead class="thead-dark">
                    <tr>
                        <th class="text-center">Id</th>
                        <th class="text-center">Nombres</th>
                        <th class="text-center">Apellidos</th>
                        <th class="text-center">Usuario</th>
                        <th class="text-center">Contraseña</th>
                        <th class="text-center">Telefono</th>
                        <th class="text-center">Correo</th>
                        <th class="text-center">Documento</th>
                        <th class="text-center">Estado</th>
                        
                        
                        <th class="text-center">ACCIONES</th>
                    </tr>
                </thead>
                <%
                    personaDAO dao = new personaDAO();
                    List<usuario> list = dao.Listar();
                    Iterator<usuario> iter = list.iterator();
                    usuario per = null;
                    while (iter.hasNext()) {
                        per = iter.next();

                %>
                <tbody>
                    <tr>
   
                        <td class="text-center"><%= per.getId_usuario() %></td>
                        <td class="text-center"><%= per.getNombres()%></td>
                        <td class="text-center"><%= per.getApellidos()%></td>
                        <td class="text-center"><%= per.getNombreUsuario()%></td>
                        <td class="text-center"><%= per.getClave()%></td>
                        <td class="text-center"><%= per.getTelefono_usu()%></td>
                        <td class="text-center"><%= per.getCorreo()%></td>
                        <td class="text-center"><%= per.getDocumento()%></td>
                        <td class="text-center"><%= per.getEstado()%></td>
        
                        
                        <td class="text-center">
                            <a class="btn btn-info" href="ControladorMta?accion=editar&id=<%= per.getId_usuario()%>">Editar</a>
                            <a class="btn btn-danger" href="ControladorMta?accion=eliminar&id=<%= per.getId_usuario()%>">Eliminar</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>

        </div>
    </body>
</html>
