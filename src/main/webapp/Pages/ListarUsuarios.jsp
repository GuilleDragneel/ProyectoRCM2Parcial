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
        <script src="../Resourses/EstiloMenu.js"></script>  
        <link rel="Stylesheet" href="../webjars/bootstrap/5.1.3/css/bootstrap.min.css">
        <script src="../webjars/jquery/3.6.0/dist/jquery.min.js"></script> 
        <script src="../webjars/bootstrap/5.1.3/js/bootstrap.bundle.js"></script>
        <link rel="Stylesheet" href="../webjars/fontawesome/4.7.0/css/font-awesome.min.css"> 
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-info">
            <div class="container-fluid">
                <a class="navbar-brand" href="#"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">The Cat</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Index.html">Inicio</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Usuario
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item"href="" + request.getContextPath() /Pages/CrearUsuario.html">Crear</a></li>
                                <li><a class="dropdown-item" href="ListarUsuarioServlet">Listar</a></li>
                                <li><a class="dropdown-item" href="ListarUsuarioServlet">Editar</a></li>
                                <li><a class="dropdown-item" href="ListarUsuarioServlet">Eliminar</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Acercade..</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
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
                <c:forEach var="usuario" items="${ListaUsuario}">
                    <tr>
                        <td  scope="row"> <c:out value="${usuario.nombreUsuario}"></c:out> </td>
                        <td> <c:out value="${usuario.contraseña }"></c:out></td>
                        <td> <c:out value="${usuario.nombre}"></c:out> </td>
                        <td> <c:out value="${usuario.sexo}"></c:out></td>
                        <td> <c:out value="${usuario.edad}"></c:out></td>
                        <th><a href="EditarUsuarioServlet?idUsuario1=" <c:out value="${usuario.codigo}"></c:out> >Editar</a></th>
                        <th><a href="EliminarUsuarioServlet?idUsuario=" <c:out value="${usuario.codigo}"></c:out> onclick=\"return confirm("Desea eliminar el usuario?");\")>Eliminar</a></th>
                        </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
<body>

</body>
</html>
