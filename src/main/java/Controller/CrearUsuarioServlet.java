package Controller;

import Entity.Usuario;
import Service.IUsuarioService;
import Service.UsuarioServiceimpl;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CrearUsuarioServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        IUsuarioService service = new UsuarioServiceimpl();
        Usuario u = new Usuario();
        u.setNombreUsuario(request.getParameter("nombreUsuario"));
        u.setContraseña(request.getParameter("contraseña"));
        u.setNombre(request.getParameter("nombre"));
        u.setSexo(request.getParameter("sexo"));
        u.setEdad(Integer.parseInt(request.getParameter("edad")));
        service.crearRegistro(u);
    }

}
