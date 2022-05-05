package Controller;

import Entity.Usuario;
import Service.UsuarioServiceimpl;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EliminarUsuarioServlet extends HttpServlet {

    UsuarioServiceimpl service;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("Pages/ListarUsuarios.jsp");
        this.service = new UsuarioServiceimpl();
        Usuario usuario = new Usuario();
        usuario = this.service.obtenerRegistro(Integer.parseInt(request.getParameter("idUsuario1")));
        service.eliminarRegistro(usuario);
        List<Usuario> ListaUsuario = this.service.obtenerRegistros();
        request.setAttribute("ListaUsuario", ListaUsuario);
        dispatcher.forward(request, response);
    }

}
