<%-- 
    Autor: Guillermo Daniel Cruz Ortega
    Fecha creación: 5 may 2022, 9:49:57
    Fecha modificación 20 jun 2022
    Descripción: Pagina donde se listan los usuarios
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
<%-- 
    Llamada a todos los recursos a ocupar
--%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8, initi
              al-scale=1.0">
        <style rel="stylesheet">
            <%@include  file="../Resourses/EstiloMenu.css"%>
        </style>
        <link rel="Stylesheet" href=
              "webjars/bootstrap/5.1.3/css/bootstrap.min.css">
        <script src="webjars/jquery/3.6.0/dist/jquery.min.js"></script> 
        <script src="webjars/bootstrap/5.1.3/js/bootstrap.bundle.js"></script>
        <link rel="Stylesheet" 
             href="webjars/fontawesome/4.7.0/css/font-awesome.min.css"> 
    </head>
<%-- 
    Menu principal
--%>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">0
                <a class="navbar-brand" href="#"></a>
                <button class="navbar-toggler" type="button" 
                        data-bs-toggle="collapse" 
                        data-bs-target="#navbarSupportedContent" 
                        aria-controls="navbarSupportedContent"
                        aria-expanded="false" 
                        aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" 
                     id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" 
                               href="Pages/Index.html">The Cat</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Pages/Index.html">Inicio
                            </a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" 
                               id="navbarDropdown" role="button" 
                               data-bs-toggle="dropdown" aria-expanded="false">
                                Usuario
                            </a>
                            <ul class="dropdown-menu" 
                               aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" 
                                   href="EditarUsuarioServlet?action=crearfor">
                                        Crear</a></li>
                                <li><a class="dropdown-item" 
                                      href="EditarUsuarioServlet?action=listar">
                                        Listar</a></li>
                                <li><a class="dropdown-item" 
                                      href="EditarUsuarioServlet?action=listar">
                                        Editar</a></li>
                                <li><a class="dropdown-item" 
                                      href="EditarUsuarioServlet?action=listar">
                                        Eliminar</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" 
                               href="EditarUsuarioServlet?action=mostrarPro">
                                Mostrar Productos</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <br>
        <br>
        <br>
    </section>
<%-- 
    Lista de usarios
--%>
    <div class="container-fluid">
        <section>
            <div class="container-fluid">
                <div class="row justify-content-center">
                    <c:forEach var="usuario" items="${ListaUsuario}">
                        
                        <div class="card-group text-white bg-dark mb-3" style=
                             "width: 18rem;">
                            <div class="card-body"><i class="fa fa-user"></i>
                                <h5 class="card-title">Usuario</h5>
                            </div>  
                            <div class="card-body">
                                <p class="list-group-item">
Nombre usuario:<c:out value="${usuario.nombreUsuario}"></c:out> </p>
                                <p class="list-group-item">
Contraseña:<c:out value="${usuario.contraseña }"></c:out></p>
                                <p class="list-group-item">
Nombre:<c:out value="${usuario.nombre}"></c:out>
                                    </p>
                                    <p class="list-group-item">
Sexo:<c:out value="${usuario.sexo}"></c:out></p>
                                    <p class="list-group-item">
Edad:<c:out value="${usuario.edad}"></c:out></p>
                                    <a class="btn btn-light" href=
"EditarUsuarioServlet?action=editar&codigo=<c:out value="${usuario.codigo}">
</c:out>">
                                    Editar</a><a class="btn btn-light" href=
"EditarUsuarioServlet?action=eliminar&codigo=<c:out value="${usuario.codigo}">
</c:out>">Eliminar</a>
                                </div>
                            </div>
                    </c:forEach>
                </div> 
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
            </div>
        </section>
    </div>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
<%-- 
    Pie de página
--%>
    <div class="container-fluid">
        <div class="row p-5 pb-2 bg-dark text-white">
            <div class="col-xs-12 col-md-6 col-lg-3">
                <p class="h2">The Cat</p>
                <p class="text-secondary" href="#">Lecce, Italia.</p>
            </div>
            <div class="col-xs-12 col-md-6 col-lg-3">
                <p class="h4">Recetas</p>
                <div class="mb-2">
                    <a class="text-secondary text-decoration-none" href="#">
                        Albondigon</a>
                </div>
                <div class="mb-2">
                    <a class="text-secondary text-decoration-none" href="#">
                        Pasta</a>
                </div>
                <div class="mb-2">
                    <a class="text-secondary text-decoration-none" href="#">
                        Pizza</a>
                </div>
                <div class="mb-2">
                    <a class="text-secondary text-decoration-none" href="#">
                        Cannolis</a>
                </div>
            </div>
            <div class="col-xs-12 col-md-6 col-lg-3">
                <p class="h4">Links</p>
                <div class="mb-2">
                    <a class="text-secondary text-decoration-none" href="#">
                        Terms & Conditions</a>
                </div>
                <div class="mb-2">
                    <a class="text-secondary text-decoration-none" href="#">
                        Privacity Policy</a>
                </div>
            </div>
            <div class="col-xs-12 col-md-6 col-lg-3">
                <p class="h4">Contacto</p>   
                <div class="mb-2">
                    <a class="text-secondary text-decoration-none" href="#">
                        Instagram</a>
                </div>
                <div class="mb-2">
                    <a class="text-secondary text-decoration-none" href="#">
                        Facebook</a>
                </div>
            </div>
            <div class="col-xs-12 pt-4">
                <p class="text-white text-center">
                    Copyright - All rights reserved ° 2022</p>
            </div>
        </div>
    </div>
</body>
</html>
