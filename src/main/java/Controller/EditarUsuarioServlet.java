package Controller;

import Entity.Usuario;
import Service.IUsuarioService;
import Service.UsuarioServiceimpl;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditarUsuarioServlet extends HttpServlet {

    UsuarioServiceimpl service;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Usuario usuario = this.service.obtenerRegistro(Integer.parseInt(request.getParameter("idUsuario1")));
        request.setAttribute("usuario", usuario);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Pages/ActualizarUsu.jsp");
        dispatcher.forward(request, response);
    }

}
