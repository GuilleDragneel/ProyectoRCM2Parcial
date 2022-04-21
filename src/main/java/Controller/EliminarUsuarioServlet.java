package Controller;

import Entity.Usuario;
import Service.IUsuarioService;
import Service.UsuarioServiceimpl;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EliminarUsuarioServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idUsuario = Integer.parseInt(request.getParameter("idUsuario"));
        IUsuarioService service = new UsuarioServiceimpl();
        service.eliminarRegistro(idUsuario);
        response.sendRedirect("ListarUsuarioServlet");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
