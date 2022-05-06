package Controller;

import Entity.Usuario;
import Service.UsuarioServiceimpl;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class ListarUsuarioServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("Pages/ListarUsuarios.jsp");
        UsuarioServiceimpl service = new UsuarioServiceimpl();
        List<Usuario> ListaUsuario = service.obtenerRegistros();
        System.out.println("lista: " + ListaUsuario.size());
        request.setAttribute("ListaUsuario", ListaUsuario);
        dispatcher.forward(request, response);
    }

}
