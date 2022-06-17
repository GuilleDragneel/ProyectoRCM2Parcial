/*
    Autor= Guillermo Daniel Cruz Ortega
    Fecha creacion= 19/04/2022
    Fecha actualizacion= 09/06/2022
    Descripcion= Servlet que contiene todos los metodos para la manipulacion de 
    usuarios
 */
package Controller;

import Entity.Desproductos;
import Entity.Productos;
import Entity.Usuario;
import Service.DesproductosServiceimpl;
import Service.IProductoService;
import Service.IUsuarioService;
import Service.ProductoServiceimpl;
import Service.UsuarioServiceimpl;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditarUsuarioServlet extends HttpServlet {

    IUsuarioService service;
    IProductoService service1;

    protected void doGet(HttpServletRequest request, HttpServletResponse 
            response) throws ServletException, IOException {
        String action = request.getParameter("action");
        System.out.println("Action: " + action);
        switch (action) {
            case "editar":
                System.out.println("Editando...");
                editar(request, response);
                break;
            case "actualizar":
                System.out.println("Actualizar...");
                actualizar(request, response);
                break;
            case "listar":
                System.out.println("Listando...");
                listar(request, response);
                break;
            case "crear":
                System.out.println("Creando...");
                crearusu(request, response);
                break;
            case "crearfor":
                System.out.println("Creando...");
                crearfor(request, response);
                break;
            case "eliminar":
                System.out.println("Eliminando...");
                eliminar(request, response);
                break;
            case "mostrarPedi":
                System.out.println("Mostrar Producto...");
                mostrarPedi(request, response);
                break;
            case "crearPedi":
                System.out.println("Crear Pedido...");
                crearPedi(request, response);
                break;
            case "mostrarPro":
                System.out.println("Crear Pedido...");
                mostrarPro(request, response);
                break;
            case "eliminarPro":
                System.out.println("Eliminando...");
                eliminarPro(request, response);
                break;
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse 
            response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void actualizar(HttpServletRequest request, HttpServletResponse
            response) throws ServletException, IOException {
        System.out.println(request.getParameter("codigo"));
        Usuario usu = new Usuario(Integer.parseInt(request.getParameter
        ("codigo")));
        usu.setNombreUsuario(request.getParameter("nombreUsuario"));
        usu.setNombre(request.getParameter("nombre"));
        usu.setContraseña(request.getParameter("contraseña"));
        usu.setSexo(request.getParameter("sexo"));
        usu.setEdad(Integer.parseInt(request.getParameter("edad")));
        service = new UsuarioServiceimpl();
        service.actualizarRegistro(usu);
        System.out.println("Ingresado: " + usu.getNombre());
        RequestDispatcher dispatcher = request.getRequestDispatcher
        ("EditarUsuarioServlet?action=listar");
        dispatcher.forward(request, response);
        this.service = new UsuarioServiceimpl();
        List<Usuario> ListaUsuario = this.service.obtenerRegistros();
        request.setAttribute("ListaUsuario", ListaUsuario);
        dispatcher.forward(request, response);
    }

    protected void editar(HttpServletRequest request, HttpServletResponse 
            response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher
        ("Pages/ActualizarUsu.jsp");
        Usuario usuario = this.service.obtenerRegistro(Integer.parseInt
        (request.getParameter("codigo")));
        request.setAttribute("usuario", usuario);
        dispatcher.forward(request, response);
    }

    protected void listar(HttpServletRequest request, HttpServletResponse 
            response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher
        ("Pages/ListarUsuarios.jsp");
        UsuarioServiceimpl service = new UsuarioServiceimpl();
        List<Usuario> ListaUsuario = service.obtenerRegistros();
        System.out.println("lista: " + ListaUsuario.size());
        request.setAttribute("ListaUsuario", ListaUsuario);
        dispatcher.forward(request, response);
    }

    protected void crearfor(HttpServletRequest request, HttpServletResponse
            response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher
        ("Pages/Crearusu.jsp");
        dispatcher.forward(request, response);
    }

    protected void crearusu(HttpServletRequest request, HttpServletResponse
            response) throws ServletException, IOException {
        service = new UsuarioServiceimpl();
        Usuario u = new Usuario();
        u.setNombreUsuario(request.getParameter("nombreUsuario"));
        u.setContraseña(request.getParameter("contraseña"));
        u.setNombre(request.getParameter("nombre"));
        u.setSexo(request.getParameter("sexo"));
        u.setEdad(Integer.parseInt(request.getParameter("edad")));
        service = new UsuarioServiceimpl();
        service.crearRegistro(u);
        RequestDispatcher dispatcher = request.getRequestDispatcher
        ("EditarUsuarioServlet?action=listar");
        dispatcher.forward(request, response);
        this.service = new UsuarioServiceimpl();
        List<Usuario> ListaUsuario = this.service.obtenerRegistros();
        request.setAttribute("ListaUsuario", ListaUsuario);
        dispatcher.forward(request, response);
    }

    protected void eliminar(HttpServletRequest request, HttpServletResponse 
            response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher
        ("Pages/ListarUsuarios.jsp");
        this.service = new UsuarioServiceimpl();
        Usuario usuario = new Usuario();
        usuario = this.service.obtenerRegistro(Integer.parseInt(request.
                getParameter("codigo")));
        service.eliminarRegistro(usuario);
        List<Usuario> ListaUsuario = this.service.obtenerRegistros();
        request.setAttribute("ListaUsuario", ListaUsuario);
        dispatcher.forward(request, response);
    }

    protected void mostrarPro(HttpServletRequest request, HttpServletResponse
            response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher
        ("Pages/MostrarPro.jsp");
        DesproductosServiceimpl service = new DesproductosServiceimpl();
        List<Desproductos> ListaPro = service.obtenerRegistros();
        request.setAttribute("ListaPro", ListaPro);
        dispatcher.forward(request, response);
    }

    protected void crearPedi(HttpServletRequest request, HttpServletResponse
            response) throws ServletException, IOException {
        service1 = new ProductoServiceimpl();
        System.out.println("idpedido:------->>>> " + 
                request.getParameter("idpedido"));
        Productos u = new Productos();
        System.out.println("nom1");
        u.setNombreprod(request.getParameter("nombreprod"));
        System.out.println("nom2");
        System.out.println("des1");
        u.setDescripcion(request.getParameter("descripcion"));
        System.out.println("des2");
        System.out.println("pre1");
        //u.setTotal(Integer.parseInt(request.getParameter("total")));
        System.out.println("pre2");

        DesproductosServiceimpl servicep = new DesproductosServiceimpl();
        Desproductos pro = servicep.obtenerRegistro
        (Integer.parseInt(request.getParameter("idpedido")));

        u.setCodigo(pro.getCodigo());
        u.setNombreprod(pro.getNomProducto());
        u.setDescripcion(pro.getDescripcion());
        u.setTotal(pro.getPrecio());

        service1 = new ProductoServiceimpl();
        service1.crearRegistroP(u);
        RequestDispatcher dispatcher = request.getRequestDispatcher 
        ("EditarUsuarioServlet?action=mostrarPro");
        dispatcher.forward(request, response);
    }

    protected void mostrarPedi(HttpServletRequest request, HttpServletResponse 
            response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher
        ("Pages/TicketPro.jsp");
        ProductoServiceimpl service = new ProductoServiceimpl();
        List<Productos> ListaPro = service.obtenerRegistros();
        request.setAttribute("ListaPro", ListaPro);
        dispatcher.forward(request, response);
    }

    protected void eliminarPro(HttpServletRequest request, HttpServletResponse 
            response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher
        ("Pages/TicketPro.jsp");
        this.service1 = new ProductoServiceimpl();
        Productos pro = new Productos();
        pro = this.service1.obtenerRegistro(Integer.parseInt(request.
                getParameter("codigo")));
        service1.eliminarRegistroP(pro);
        List<Productos> ListaPro = this.service1.obtenerRegistros();
        request.setAttribute("ListaPro", ListaPro);
        dispatcher.forward(request, response);
    }
}
