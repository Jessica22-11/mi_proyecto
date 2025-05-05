<%-- 
    Document   : index
    Created on : 5/05/2025, 8:44:56 a. m.
    Author     : tatic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema De Registro De Uusraios</title>
        <style>
            body { font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            line-height: 1.6;}
            h1 {color: #333; }
            .container { max-width: 800px;
            margin: 0 auto;}
            .menu { display: flex;
            gap: 20px;
            margin: 20px 0;}
            .menu a { padding: 10px 15px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 4px;}
            .menu a:hover {background-color: #45a049;}
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Bienvenidos Al Sistema De Registro De Usuarios</h1>
            <p>Este sistema permitira registrar usuarios nuevos y consultar la informacion de los usuarios registrados.</p>
            
            <div class="menu">
                <a href="registro">Registrar Usuarios</a>
                <a href="consulta">Consultar Usuarios</a>
            </div>
            
            <hr>
            
            <h2>Información del sistema</h2>
            <p>Este Sitema es un ejemplo simple de como utilizar:
            <ul>
                <li>Servlets para procesar formularios</li>
                <li>JSP para renderizar páginas dinámicas</li>
                <li>Método HTTP, GET y POST</li>
                <li>Sesiones para almacenar datos</li>
            </ul>
            </p>
        </div>
    </body>
</html>
