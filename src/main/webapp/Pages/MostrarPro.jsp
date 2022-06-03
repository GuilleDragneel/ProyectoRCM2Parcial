<%-- 
    Document   : MostrarPro
    Created on : 3 jun 2022, 10:23:11
    Author     : labso03
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8, initial-scale=1.0">
        <script src="Resourses/EstiloMenu.js"></script>  
        <link rel="Stylesheet" href="webjars/bootstrap/5.1.3/css/bootstrap.min.css">
        <script src="webjars/jquery/3.6.0/dist/jquery.min.js"></script> 
        <script src="webjars/bootstrap/5.1.3/js/bootstrap.bundle.js"></script>
        <link rel="Stylesheet" href="webjars/fontawesome/4.7.0/css/font-awesome.min.css"> 
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
        <div class="container">
            <div class="row align-items-start">
            </div>
            <div class="row align-items-center">
                <form action="EditarUsuarioServlet?action=crearPedi" method="POST">
                    <div class="card mb-3" style="max-width: 540px;">
                        <div class="row g-0">
                            <div class="col-md-4">
                                <img src="Resourses/images/albondigon.jpg" class="img-fluid rounded-start" alt="...">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 name="nombreprod" class="card-title">Albondigon</h5>
                                    <p name="descripcion" class="card-text">Carne molida extendida y enrollada en forma cilíndrica con relleno de huevo y verduras en su interios.</p>
                                    <label for="exampleInputEmail1" class="form-label">Cantidad</label>
                                    <input name="edad" value="1" type="number" required pattern="[0-9]{1,}" min="1" max="20" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" required>                    
                                    <br>
                                    <a href="#" class="btn btn-primary">Agregar</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
                <form action="EditarUsuarioServlet?action=crearPedi" method="POST">
                    <div class="card mb-3" style="max-width: 540px;">
                        <div class="row g-0">
                            <div class="col-md-4">
                                <img src="Resourses/images/Spagetti.jpg" class="img-fluid rounded-start" alt="...">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 name="nombreprod" class="card-title">Spagetti</h5>
                                    <p name="descripcion" class="card-text">Pasta italiana elaborada con harina de grano duro y agua, acompañada de salsa echa a base de tomate y especias. </p>
                                    <label for="exampleInputEmail1" class="form-label">Cantidad</label>
                                    <input name="edad" value="1" type="number" required pattern="[0-9]{1,}" min="1" max="20" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" required>                    
                                    <br>
                                    <a href="#" class="btn btn-primary">Agregar</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
                <form action="EditarUsuarioServlet?action=crearPedi" method="POST">
                    <div class="card mb-3" style="max-width: 540px;">
                        <div class="row g-0">
                            <div class="col-md-4">
                                <img Src="Resourses/images/Lasaña.jpg" class="img-fluid rounded-start" alt="...">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 name="nombreprod" class="card-title">Lasaña</h5>
                                    <p name="descripcion" class="card-text">Pasta en láminas intercaladas con carne y conbechamel y abundante queso rallado gratinado al horno.</p>
                                    <label for="exampleInputEmail1" class="form-label">Cantidad</label>
                                    <input name="edad" value="1" type="number" required pattern="[0-9]{1,}" min="1" max="20" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" required>                    
                                    <br>
                                    <a href="#" class="btn btn-primary">Agregar</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
                <form action="EditarUsuarioServlet?action=crearPedi" method="POST">
                    <div class="card mb-3" style="max-width: 540px;">
                        <div class="row g-0">
                            <div class="col-md-4">
                                <img src="Resourses/images/PastaVerde.png" class="img-fluid rounded-start" alt="...">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 name="nombreprod" class="card-title">Spagetti Verde</h5>
                                    <p name="descripcion" class="card-text">Pasta italiana elaborada con harina de grano duro y agua, acompañada de salsa echa a base de verde y cremas</p>
                                    <label for="exampleInputEmail1" class="form-label">Cantidad</label>
                                    <input name="cantidad" value="1" type="number" required pattern="[0-9]{1,}" min="1" max="20" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" required>                    
                                    <br>
                                    <a href="#" class="btn btn-primary">Agregar</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="row align-items-end">
            </div>
        </div>
    </body>
</html>

