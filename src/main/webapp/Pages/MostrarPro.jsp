<%-- 
    Document   : MostrarPro
    Created on : 3 jun 2022, 10:23:11
    Author     : labso03
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8, initial-scale=1.0">
        <script src="Resourses/EstiloMenu.js"></script>  
        <link rel="Stylesheet" href="webjars/bootstrap/5.1.3/css/bootstrap.min.css">
        <script src="webjars/jquery/3.6.0/dist/jquery.min.js"></script> 
        <script src="webjars/bootstrap/5.1.3/js/bootstrap.bundle.js"></script>
        <script src="Resourses/EstiloMenu.js"></script>
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
        <br>
        <div class="container">
            <div class="row justify-content-center">

                <div class="card text-white bg-dark mb-3" style="max-width: 540px;">
                    <div class="row g-0">
                        <div class="col-md-4">
                            <img src="Resourses/images/albondigon.jpg" class="img-fluid rounded-start" alt="...">
                        </div>
                        <div class="col-md-8">
                            <div class="card-body"> 
                                <c:forEach var="desproductos" items="${ListaPro}"> 
                                    <h5 name="nombreprod" class="card-title"><c:out value="${desproductos.nomProducto}"></c:out></h5>
                                    <p name="descripcion" class="card-text"><c:out value="${descripcion.desproductos}"></c:out></p>
                                    <p name="descripcion" class="price" class="card-text"><c:out value="${desproductos.precio}"></c:out></p> 
                                </c:forEach>
                                <label for="exampleInputEmail1" class="form-label">Cantidad</label>
                                <input name="cantidad" onclick="Total(2);" id="cant2" value="1" type="number" required pattern="[0-9]{1,}" min="1" max="10" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" required>                    
                                <br>
                                <input type="text" class="total" value="" id="tot2" disabled />
                                <br>
                                <br>
                                <a href="EditarUsuarioServlet?action=mostrarPro" class="btn btn-light">Agregar</a>
                            </div>
                        </div>
                    </div>                    
                </div>


                <br>
                <br>
                <a href="EditarUsuarioServlet?action=crearPedi" class="btn btn-dark">Comprar</a> 
                <br>
                <br>
            </div>
            <br>
            <br>
        </div>
        <div class="container-fluid">
            <div class="row p-5 pb-2 bg-dark text-white">
                <div class="col-xs-12 col-md-6 col-lg-3">
                    <p class="h2">The Cat</p>
                    <p class="text-secondary" href="#">Lecce, Italia.</p>
                </div>
                <div class="col-xs-12 col-md-6 col-lg-3">
                    <p class="h4">Recetas</p>
                    <div class="mb-2">
                        <a class="text-secondary text-decoration-none" href="#">Albondigon</a>
                    </div>
                    <div class="mb-2">
                        <a class="text-secondary  text-decoration-none" href="#">Pasta</a>
                    </div>
                    <div class="mb-2">
                        <a class="text-secondary  text-decoration-none" href="#">Pizza</a>
                    </div>
                    <div class="mb-2">
                        <a class="text-secondary  text-decoration-none" href="#">Cannolis</a>
                    </div>
                </div>
                <div class="col-xs-12 col-md-6 col-lg-3">
                    <p class="h4">Links</p>
                    <div class="mb-2">
                        <a class="text-secondary  text-decoration-none" href="#">Terms & Conditions</a>
                    </div>
                    <div class="mb-2">
                        <a class="text-secondary  text-decoration-none" href="#">Privacity Policy</a>
                    </div>
                </div>
                <div class="col-xs-12 col-md-6 col-lg-3">
                    <p class="h4">Contacto</p>   
                    <div class="mb-2">
                        <a class="text-secondary  text-decoration-none" href="#">Instagram</a>
                    </div>
                    <div class="mb-2">
                        <a class="text-secondary  text-decoration-none" href="#">Facebook</a>
                    </div>
                </div>
                <div class="col-xs-12 pt-4">
                    <p class="text-white text-center">Copyright - All rights reserved ° 2022</p>
                </div>
            </div>
        </div>
    </body>
</html>

