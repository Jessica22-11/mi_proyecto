<%-- 
    Document   : registro
    Created on : 5/05/2025, 9:03:39 a. m.
    Author     : tatic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro De Usuario</title>
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

        h1 {
            color: #4b0082;
            text-align: center;
        }

        .container {
            max-width: 800px;
            margin: 40px auto;
            background: #f3e8ff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 6px;
            transition: border-color 0.3s;
        }

        .form-group input:focus {
            border-color: #7e57c2;
            outline: none;
        }

        .btn {
            display: block;
            width: 45%;
            margin: 20px auto;
            padding: 16px 0;
            background-color: #6a0dad;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 15px;
            font-weight: bold;
            transition: background-color 0.3s, transform 0.2s;
            margin-top: 20px;
        }

        .btn:hover {
            background-color: #7e57c2;
            transform: translateY(-2px);
        }

        .message {
            padding: 10px;
            margin: 20px 0;
            background-color: #d4edda;
            border: 1px solid #c3e6cb;
            border-radius: 4px;
            color: #155724;
        }

        .menu {
            display: flex;
            justify-content: center;
            gap: 10px;
            margin: 15px 0;
            flex-wrap: wrap;
        }

        .menu a {
            padding: 6px 12px;
            background-color: #6a0dad;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            font-size: 13px;
            transition: background-color 0.3s, transform 0.2s;
        }

        .menu a:hover {
            background-color: #7e57c2;
            transform: translateY(-2px);
        }
    </style>
    </head>
    <body>
        <div class="container">
            <h1>Registro De Usuario</h1>
            
            <%-- Mostrar mensaje de éxito si existe --%>
            <% if (request.getAttribute("mensaje") != null) { %>
            <div class="message">
                <%= request.getAttribute("mensaje") %>
            </div>
            <% } %>
            
            <%-- Formulario de registro --%>
            <form action="registro" method="POST">
                <div class="form-group">
                    <label for="nombre">Nombre: </label>
                    <input type="text" id="nombre" name="nombre" required>
                </div>
                
                <div class="form-group">
                    <label for="apellido">Apellido: </label>
                    <input type="text" id="apellido" name="apellido" required>
                </div>
                
                <div class="form-group">
                    <label for="email">Email: </label>
                    <input type="email" id="email" name="email" required>
                </div>
                
                <div class="form-group">
                    <label for="password">Contraseña: </label>
                    <input type="password" id="password" name="password" required>
                </div>
                
                <div class="form-group">
                <button type="submit" class="btn">Registrar</button>
                </div>
            </form>
            
            <div class="menu">
                <a href="index.jsp">Volver a Inicio</a>
                <a href="consulta">Consultar Usuarios</a> 
            </div>
        </div>
    </body>
</html>
