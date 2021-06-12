
<%@page import="Modelo.usuario"%>
<%@page import="Modelo.personaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/crud.css" rel="stylesheet">
        <title>Mta | editar usuario</title>
    </head>
    <body>
        <div class="container">
            <div class="container_info">
              <%
              personaDAO dao=new personaDAO();
              int id=Integer.parseInt((String)request.getAttribute("idper"));
              usuario u =(usuario)dao.List(id);
          %>
            <h1>Mta<span>Registro</span></h1>
            <form class="form" action="Controlador">
                    
                    <label for="nom">Nombres:</label>
                    <input id="nom"  type="text" name="nombres" value="<%= u.getNombres() %>"><br>
                    <label for="ape">Apellidos:</label>
                    <input id="ape"  type="text" name="apellidos" value="<%= u.getApellidos() %>"><br>
                    <label for="nu">Nombre de usuario:</label>
                    <input id="nu"  type="text" name="usuario" value="<%= u.getNombreUsuario() %>"><br>
                    <label for="con">Contraseña:</label>
                    <input id="con"  type="password" name="pass" value="<%= u.getClave() %>"><br>
                    <label for="tel">Telefono:</label>
                    <input id="tel"  type="text" name="telefono" value="<%= u.getTelefono_usu() %>"><br>
                    <label for="mail">Correo:</label>
                    <input id="mail"  type="email" name="correo" value="<%= u.getCorreo() %>"><br>
                    <label for="doc">Documento:</label>
                    <input id="doc"  type="text" name="documento" value="<%= u.getDocumento() %>"><br>
                   
                    <input type="hidden" name="id" value="<%= u.getId_usuario()%>">
                   
                    <div class="botones">
                        <input class="btn btn-primary" type="submit" name="accion" value="Actualizar">
                        <a href="Controlador?accion=listar" class="btn btn-default">Regresar</a>
                    </div>
                    
                </form>
          </div>
          
        </div>
    </body>
</html>
