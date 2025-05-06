<%-- 
    Document   : consulta
    Created on : 5/05/2025, 5:04:02 p. m.
    Author     : tatic
--%>

<%@page import="java.util.List"%>
<%@page import="mi.proyecto.modelo.Usuario" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta De Usuarios</title>
      <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            line-height: 1.6;
            background: linear-gradient(135deg, #a18cd1, #fbc2eb);
        }

        h1, h2 {
            color: #4b0082;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            background-color: #f9f0ff; /* Fondo pastel suave */
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }

        .form-group {
            margin-bottom: 15px; }

        .input-container {
        display: flex;
        justify-content: center; 
        align-items: center;
        gap: 10px;
        flex-wrap: wrap;
        }

        .form-group input {
        width: 60%;
        padding: 10px;
        box-sizing: border-box;
        border: 1px solid #ccc;
        border-radius: 6px;
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #6a0dad;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s, transform 0.2s;
        }

        .btn:hover {
            background-color: #7e57c2;
            transform: translateY(-2px);
        }

        .menu {
            margin: 20px 0;
            display: flex;
            gap: 10px;
            justify-content: center;
        }

        .menu a {
            padding: 6px 12px;
            background-color: #6a0dad;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            font-size: 14px;
        }

        .menu a:hover {
            background-color: #7e57c2;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 2px 6px rgba(0,0,0,0.05);
        }

        table th {
            background-color: #d1b3ff;
            color: #4b0082;
            padding: 10px;
            text-align: left;
        }

        table td {
            padding: 10px;
            border-bottom: 1px solid #e0d7f5;
        }

        .results {
            margin: 20px 0;
            padding: 15px;
            border: 1px solid #cdb4f6;
            border-radius: 6px;
            background-color: #f5eaff;
        }

        .not-found {
            color: #721c24;
            background-color: #f8d7da;
            padding: 10px;
            border-radius: 6px;
            border: 1px solid #f5c6cb;
        }
    </style>
    </head>
    <body>
        <div class="container">
            <h1>Consulta De Usuarios</h1>
            
            <%--Formulario de Busqueda --%>
            <form action="consulta" method="GET">
                <div class="form-group">
                    <label for="email">Buscar usuario por Email: </label>
                    <div class="input-container">
                    <input type="email" id="email" name="email" required>
                    <button type="submit" class="btn">Buscar</button>
                    </div>
                </div>
            </form>
            
            <%-- Resultados de la búsqueda --%>
            <% if (request.getAttribute("busquedaRealizada") != null) { %>
                <div class="results">
                    <h2>Resultado de la búsqueda</h2>
                    <% if (request.getAttribute("usuarioBuscado") != null) { %>
                        <% Usuario usuario = (Usuario) request.getAttribute("usuarioBuscado"); %>
                        <table>
                            <tr>
                                <th>Nombre</th>
                                <th>Apellido</th>
                                <th>Email</th>
                            </tr>
                            
                            <tr>
                                <td><%= usuario.getNombre() %></td>
                                <td><%= usuario.getApellido() %></td>
                                <td><%= usuario.getEmail()%></td>
                            </tr>
                        </table>
                    <% } else { %>
                    <div class="not-found">
                        No se encontró ningún usuario con el email especificado.
                    </div>
                    <% } %>
                </div>
            <% } %>
            
            <%-- Lista de todos los usuarios --%>
            <h2>Lista De Usuarios Registrados</h2>
            <%
                List<Usuario> listaUsuarios = (List<Usuario>) session.getAttribute("listaUsuarios");
                if (listaUsuarios != null && !listaUsuarios.isEmpty()) {
            %>
            <table>
                <tr>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Email</th>
                </tr>
                <% for (Usuario usuario: listaUsuarios) { %>
                    <tr>
                        <td><%= usuario.getNombre() %></td>
                        <td><%= usuario.getApellido() %></td>
                        <td><%= usuario.getEmail() %></td>
                    </tr>
                <% } %>
            </table>
            <% } else { %>
                <p>No hay usuarios registrados en el sistema.</p>
            <% } %>
            
            <div class="menu">
                <a href="index.jsp">Volver a Inicio</a>
                <a href="registro">Registrar Usuario</a>
            </div>
        </div>
    </body>
</html>
