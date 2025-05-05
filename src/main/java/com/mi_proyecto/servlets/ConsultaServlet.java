/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mi_proyecto.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import mi.proyecto.modelo.Usuario;

/**
 *
 * @author tatic
 */
@WebServlet(name = "ConsultaServlet", urlPatterns = {"/consulta"})
public class ConsultaServlet extends HttpServlet {
    
    //Metodo para manejar solicitudes GET
    @Override
    protected  void  doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
        
        //Obtenemos la sesion HTTP
        HttpSession session = request.getSession();
        
        //Recuperamos la lista de usuarios de la sesion
        List<Usuario> listaUsuarios = (List<Usuario>) session.getAttribute("listaUsuarios");
        if (listaUsuarios == null) {
            listaUsuarios = new ArrayList<>();
            session.setAttribute("listaUsuarios", listaUsuarios);
        }
        
        //Verificamos si hay un parametro de busqueda 
        String emailBusqueda = request.getParameter("email");
        
        if (emailBusqueda != null && !emailBusqueda.isEmpty()) {
            Usuario usuarioEncontrado = null;
            
            //Buscamos el usuario por email
            for (Usuario usuario : listaUsuarios) {
                if (usuario.getEmail().equals(emailBusqueda)) {
                    
                    usuarioEncontrado = usuario;
                    break;
                }
            }
            
            //Agregamos el resultado de la busqueda
            request.setAttribute("usuarioBuscado", usuarioEncontrado);
            request.setAttribute("busquedaRealizada", true);
        } 
        
        //Redirigimos a la pagina de consulta
        request.getRequestDispatcher("/consulta.jsp").forward(request, response);
    }
}
