
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/crud.css" rel="stylesheet">
        
        <title>MTA | añadir usuario</title>
    </head>
    <body>
        <div class="container">
            <div class="container_info">
                <h1>MTA</h1>
                <form class="form" action="Controlador">
                    
                   <label for="nom">Nombres:</label>
                    <input id="nom"  type="text" name="nombres" ><br>
                    <label for="ape">Apellidos:</label>
                    <input id="ape"  type="text" name="apellidos" ><br>
                    <label for="nu">Nombre de usuario:</label>
                    <input id="nu"  type="text" name="usuario" ><br>
                    <label for="con">Contraseña:</label>
                    <input id="con"  type="password" name="pass" ><br>
                    <label for="tel">Telefono:</label>
                    <input id="tel"  type="text" name="telefono" ><br>
                    <label for="mail">Correo:</label>
                    <input id="mail"  type="email" name="correo" ><br>
                    <label for="doc">Documento:</label>
                    <input id="doc"  type="text" name="documento" ><br>
                   
                    <div class="botones">
                        <input class="btn btn-primary" type="submit" name="accion" value="Agregar">
                        <a href="Controlador?accion=listar" class="btn btn-default">Regresar</a>
                    </div>
                    
                </form>
            </div>

        </div>
    </body>
</html>