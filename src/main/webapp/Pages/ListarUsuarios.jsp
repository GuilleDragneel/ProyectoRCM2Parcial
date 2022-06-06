<%-- 
    Document   : ListarUsuarios
    Created on : 5 may 2022, 9:49:57
    Author     : Guiller
    Description : Pagina donde se listan los usuarios
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8, initial-scale=1.0">
        <style rel="stylesheet">
            <%@include  file="../Resourses/EstiloMenu.css"%>
        </style>
        <link rel="Stylesheet" href="webjars/bootstrap/5.1.3/css/bootstrap.min.css">
        <script src="webjars/jquery/3.6.0/dist/jquery.min.js"></script> 
        <script src="webjars/bootstrap/5.1.3/js/bootstrap.bundle.js"></script>
        <link rel="Stylesheet" href="webjars/fontawesome/4.7.0/css/font-awesome.min.css"> 
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">
                <a class="navbar-brand" href="#"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="Pages/Index.html">The Cat</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Pages/Index.html">Inicio</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Usuario
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="EditarUsuarioServlet?action=crearfor">Crear</a></li>
                                <li><a class="dropdown-item" href="EditarUsuarioServlet?action=listar">Listar</a></li>
                                <li><a class="dropdown-item" href="EditarUsuarioServlet?action=listar">Editar</a></li>
                                <li><a class="dropdown-item" href="EditarUsuarioServlet?action=listar">Eliminar</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="EditarUsuarioServlet?action=mostrarPro">Mostrar Productos</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <br>
        <br>
        <br>
    </section>
    <section class='forma_tabla'>
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
            <tbody>
                <c:forEach var="usuario" items="${ListaUsuario}">
                    <tr>
                        <td  scope="row"> <c:out value="${usuario.nombreUsuario}"></c:out> </td>
                        <td> <c:out value="${usuario.contraseña }"></c:out></td>
                        <td> <c:out value="${usuario.nombre}"></c:out> </td>
                        <td> <c:out value="${usuario.sexo}"></c:out></td>
                        <td> <c:out value="${usuario.edad}"></c:out></td>
                        <th><a href="EditarUsuarioServlet?action=editar&codigo=<c:out value="${usuario.codigo}"></c:out>">Editar</a></th>
                        <th><a href="EditarUsuarioServlet?action=eliminar&codigo=<c:out value="${usuario.codigo}"></c:out>">Eliminar</a></th>
                        </tr>
                </c:forEach>
            </tbody>
        </table>
    </section>
</body>
</html>
<body>

</body>
</html>
