<%-- 
    Document   : ListarUsuarios
    Created on : 5 may 2022, 9:49:57
    Author     : Guiller
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8, initial-scale=1.0">
        <%-- <script src="../Resourses/EstiloMenu.js"></script>  
        <link rel="Stylesheet" href="../webjars/bootstrap/5.1.3/css/bootstrap.min.css">
        <script src="../webjars/jquery/3.6.0/dist/jquery.min.js"></script> 
        <script src="../webjars/bootstrap/5.1.3/js/bootstrap.bundle.js"></script>
        <link rel="Stylesheet" href="../webjars/fontawesome/4.7.0/css/font-awesome.min.css"> --%>
        <link rel='stylesheet' href='../Resources/EstiloMenu.css'>
    </head>
    <body>
        <section class="forma">
            <div class="header">
                <h1 class="principal"> Restaurante Flor de Loto</h1>
            </div>
            <nav>
                <ul id="menu">
                    <li><a href="index.html">Inicio</a></li>
                    <li><a href="CrearRegistro.html">Crear</a></li>
                    <li><a href="../ListarUsuarioServlet">Listar</a></li>
                    <li><a href="../ListarUsuarioServlet">Editar</a></li>
                    <li><a href="../ListarUsuarioServlet">Eliminar</a></li>
                </ul>
            </nav>
        </section>
        <section class='forma_tabla'>");
            <h1> Tabla Usuarios </h1>
            <table border='2'>
                <tr>
                    <th>Nombre Usuario</th>
                    <th>Contraseña</th>
                    <th>Nombre</th>
                    <th>Sexo</th>
                    <th>Edad</th>
                    <th>Editar</th>
                    <th>Eliminar</th>
                </tr>
                IUsuarioService service = new UsuarioServiceImpl();
                List<Usuario> listaUsuario = service.obtenerRegistros();
                    <tbody>
                        for (Usuario usuario : listaUsuario) {
                        <tr>
                            <td>" + usuario.getnombre_usuario() + "</td>
                            <td>" + usuario.getcontraseña() + "</td>
                            <td>" + usuario.getNombre() + "</td>
                            <td>" + usuario.getSexo() + "</td>
                            <td>" + usuario.getEdad() + "</td>
                            <th><a href='EditarUsuarioServlet?idUsuario1=" + usuario.getcodigo() + "'>Editar</a></th>
                            <th><a href='EliminarUsuarioServlet?idUsuario=" + usuario.getcodigo() + "' onclick=\"return confirm('Desea eliminar el usuario?');\")>Eliminar</a></th>
                        </tr>
                        }
                    </tbody>
            </table>
        </section>
        <table class="table-primary">
            <thead>
                <tr>
                    <th scope="col">Nombre Usuario</th>
                    <th scope="col">Contraseña</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Sexo</th>
                    <th scope="col">Edad</th>
                    <th scope="col">Editar</th>
                    <th scope="col">Eliminar</th>
                </tr>
            </thead
            <tbody>
                <%-- <c:forEach var="usuario" items="${ListaUsuario}">
                    <tr>
                        <td  scope="row"> <c:out value="${usuario.nombreUsuario}"></c:out> </td>
                        <td> <c:out value="${usuario.contraseña }"></c:out></td>
                        <td> <c:out value="${usuario.nombre}"></c:out> </td>
                        <td> <c:out value="${usuario.sexo}"></c:out></td>
                        <td> <c:out value="${usuario.edad}"></c:out></td>
                        <th><a href="EditarUsuarioServlet?idUsuario1=" <c:out value="${usuario.codigo}"></c:out> >Editar</a></th>
                        <th><a href="EliminarUsuarioServlet?idUsuario=" <c:out value="${usuario.codigo}"></c:out> onclick=\"return confirm("Desea eliminar el usuario?");\")>Eliminar</a></th>
                        </tr>
</c:forEach> --%>
            </tbody>
        </table>
    </body>
</html>
<body>

</body>
</html>
