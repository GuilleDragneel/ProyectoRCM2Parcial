<%-- 
    Autor: Guillermo Daniel Cruz Ortega
    Fecha creación: 9 may 2022, 16:05:32
    Fecha modificación 20 jun 2022
    Descripción: Pagina de creación de nuevo usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
<%-- 
    Llamada a todos los recursos a ocupar
--%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="Resourses/EstiloMenu.js"></script>  
        <link rel="Stylesheet" 
              href="webjars/bootstrap/5.1.3/css/bootstrap.min.css">
        <script src="webjars/jquery/3.6.0/dist/jquery.min.js"></script> 
        <script src="webjars/bootstrap/5.1.3/js/bootstrap.bundle.js"></script>
        <link rel="Stylesheet" 
              href="webjars/fontawesome/4.7.0/css/font-awesome.min.css"> 

    </head>
    <body>
<%-- 
    Menu principal
--%>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">
                <a class="navbar-brand" href="#"></a>
                <button class="navbar-toggler" type="button" 
                        data-bs-toggle="collapse" 
                        data-bs-target="#navbarSupportedContent" 
                        aria-controls="navbarSupportedContent" 
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
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
                     <ul class="dropdown-menu" aria-labelledby="navbarDropdown">

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
<%-- 
    Formulario para crear usuario
--%>
        <form action="EditarUsuarioServlet?action=crear" method="POST">
            <div class="container-md">
                <div class="mb-3">
                    <span class="input-group-addon"><i class="fa fa-user"></i>
                    </span>
                    <label for="exampleInputEmail1" 
                           class="form-label">Nombre Usuario</label>
                    <input name="nombreUsuario" value="juan1" type="text" 
                          class="form-control" aria-label="Sizing example input" 
                           aria-describedby="inputGroup-sizing-default" 
                           required>                    
                    <div id="usuarioname" class="form-text">
                        Solo letras y numeros</div>
                </div>
                <div class="mb-3">
                    <span class="input-group-addon"><i class="fa fa-user"></i>
                    </span>
                    <label for="exampleInputEmail1" class="form-label">Nombre
                    </label>
                    <input name="nombre" value="juan" type="text" 
                          class="form-control" aria-label="Sizing example input" 
                          aria-describedby="inputGroup-sizing-default" required>                                  
                    <div id="nombre" class="form-text">Solo letras</div>
                </div>
                <div class="mb-3">
                    <span class="input-group-addon"><i class="fa fa-key"></i>
                    </span>
                    <label for="exampleInputPassword1" class="form-label">
                        Contraseña</label>
                    <input name="contraseña" value="aq" type="password" 
                       class="form-control" id="exampleInputPassword1" required>
                    <div id="contraseña" class="form-text">Solo letras y numeros
                    </div>
                </div>
                <span class="input-group-addon"><i class="fa fa-venus-mars"></i>
                </span>
                <label for="exampleInputPassword1" class="form-label">Sexo
                </label>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="sexo"
                           id="hombre" value="hombre" checked>
                    <label class="form-check-label" for="flexRadioDefault1">
                        Hombre
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="sexo" 
                           id="mujer" value="mujer">
                    <label class="form-check-label" for="flexRadioDefault2">
                        Mujer
                    </label>
                </div>
                <div class="mb-3">
                    <span class="input-group-addon">
                        <i class="fa fa-hourglass-end"></i></span>
                    <label for="exampleInputEmail1" class="form-label">Edad
                    </label>
                    <input name="edad" value="21" type="number" 
                           required pattern="[0-9]{1,}" min="18" max="99" 
                           class="form-control" a
                           ria-label="Sizing example input" 
                           aria-describedby="in putGroup-sizing-default"
                           required>                    
                    <div id="emailHelp" class="form-text">Mayor que 18</div>
                </div>
                <button class="btn btn-dark" >Crear</button>
            </div>
            <br>
            <br>
        </form>
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
          <a class="text-secondary text-decoration-none" href="#">Albondigon</a>
                    </div>
                    <div class="mb-2">
            <a class="text-secondary text-decoration-none" href="#">Pasta</a>
                    </div>
                    <div class="mb-2">
              <a class="text-secondary text-decoration-none" href="#">Pizza</a>
                    </div>
                    <div class="mb-2">
          <a class="text-secondary text-decoration-none" href="#">Cannolis</a>
                    </div>
                </div>
                <div class="col-xs-12 col-md-6 col-lg-3">
                    <p class="h4">Links</p>
                    <div class="mb-2">
                        <a class="text-secondary text-decoration-none" 
                           href="#">Terms & Conditions</a>
                    </div>
                    <div class="mb-2">
                        <a class="text-secondary text-decoration-none" 
                           href="#"> Privacity Policy</a>
                    </div>
                </div>
                <div class="col-xs-12 col-md-6 col-lg-3">
                    <p class="h4">Contacto</p>   
                    <div class="mb-2">
                        <a class="text-secondary text-decoration-none" 
                           href="#">Instagram</a>
                    </div>
                    <div class="mb-2">
                        <a class="text-secondary text-decoration-none" 
                           href="#">Facebook</a>
                    </div>
                </div>
                <div class="col-xs-12 pt-4">
   <p class="text-white text-center">Copyright - All rights reserved ° 2022</p>
                </div>
            </div>
        </div>
    </body> 
</html>