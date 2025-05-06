<%-- 
    Document   : index
    Created on : 5/05/2025, 6:06:09 p. m.
    Author     : tatic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema De Registro De Uusraios</title>
        <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                margin: 0;
                padding: 0;
                line-height: 1.6;
                background: linear-gradient(135deg, #a18cd1, #fbc2eb);
                color: #333;
                min-height: 100vh;
            }

            h1, h2 {
                color: #4b0082; 
            }

            .container {
                max-width: 800px;
                margin: 40px auto;
                background: #ffffff;
                padding: 30px;
                border-radius: 12px;
                box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            }

            .menu {
                display: flex;
                justify-content: center;
                gap: 20px;
                margin: 20px 0;
            }

            .menu a {
                padding: 12px 20px;
                background-color: #6a0dad; 
                color: white;
                text-decoration: none;
                border-radius: 6px;
                transition: background-color 0.3s, transform 0.2s;
            }

            .menu a:hover {
                background-color: #7e57c2; 
                transform: translateY(-2px);
            }

            p {
                font-size: 16px;
            }

            ul {
                padding-left: 20px;
            }

            ul li {
                margin-bottom: 8px;
            }

            hr {
                margin: 30px 0;
                border: none;
                border-top: 2px solid #ddd;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Bienvenidos Al Sistema De Registro De Usuarios</h1>
            <p>Este sistema permitira registrar usuarios nuevos y consultar la informacion de los usuarios registrados.</p>
            
            <div class="menu">
                <a href="registro.jsp">Registrar Usuarios</a>
                <a href="consulta.jsp">Consultar Usuarios</a>
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

