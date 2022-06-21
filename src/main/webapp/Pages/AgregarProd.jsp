<%-- 
    Autor: Guillermo Daniel Cruz Ortega
    Fecha creación: 14 jun 2022, 10:29:25
    Fecha modificación 20 jun 2022
    Descripción: Pagina de creación de nuevo producto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                      href="EditarUsuarioServlet?action=crearfor">Crear</a></li>
                                <li><a class="dropdown-item" 
                       href="EditarUsuarioServlet?action=listar">Listar</a></li>
                                <li><a class="dropdown-item" 
                       href="EditarUsuarioServlet?action=listar">Editar</a></li>
                                <li><a class="dropdown-item" 
                     href="EditarUsuarioServlet?action=listar">Eliminar</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link"
             href="EditarUsuarioServlet?action=mostrarPro">Mostrar Productos</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    <body>
<%-- 
    Formulario para ingregar usuario
--%>
<br>
<br>
<br>
<br>
        <form action="EditarUsuarioServlet?action=crearPro" method="POST">
            <div class="container-md">
                <div class="mb-3">
             <span class="input-group-addon"><i class="fa fa-shopping-cart"></i>
                    </span>
                    <label for="exampleInputEmail1"
                         class="form-label">Nombre Producto</label>
                    <input name="nomPro" type="text" class="form-control" 
                           aria-label="Sizing example input" 
                          aria-describedby="inputGroup-sizing-default" required>                    
             <div id="nom" class="form-text">Solo letras</div>
                </div>
                <div class="mb-3">
                   <span class="input-group-addon"><i class="fa fa-cutlery"></i>
                    </span>
                  <label for="exampleInputEmail1" class="form-label">Descripción
                    </label>
                    <input name="desPro" type="text" class="form-control" 
                           aria-label="Sizing example input" 
                          aria-describedby="inputGroup-sizing-default" required>                                  
 <div id="des" class="form-text">Solo letras - No mas de 100 caracteres</div>
                </div>
                <div class="mb-3">
                    <span class="input-group-addon">
                        <i class="fa fa-money"></i></span>
                    <label for="exampleInputEmail1" class="form-label">Precio
                    </label>
                    <input name="precioPro" type="number" 
                           required pattern="[0-9]{1,}" min="100" max="1000000"
                           class="form-control" aia-label="Sizing example input" 
                         aria-describedby="in putGroup-sizing-default" required>                    
                </div>
                <div class="mb-3">
                    <span class="input-group-addon">
                        <i class="fa fa-file"></i></span>
              <label for="exampleInputEmail1" class="form-label">Escoger archivo
                    </label>
                   <input type="file" name="imagenPro" id="attachment" required>
                </div>
                
                <button class="btn btn-dark">Crear</button>
            </div>
            <br>
            <br>
        </form>
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
          <a class="text-secondary text-decoration-none" href="#">Albondigon</a>
                    </div>
                    <div class="mb-2">
               <a class="text-secondary text-decoration-none" href="#">Pasta</a>
                    </div>
                    <div class="mb-2">
                        <a class="text-secondary text-decoration-none" href="#">
                            Pizza</a>
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
                           href="#">Privacity Policy</a>
                    </div>
                </div>
                <div class="col-xs-12 col-md-6 col-lg-3">
                    <p class="h4">Contacto</p>   
                    <div class="mb-2">
           <a class="text-secondary text-decoration-none" href="#">Instagram</a>
                    </div>
                    <div class="mb-2">
            <a class="text-secondary text-decoration-none" href="#">Facebook</a>
                    </div>
                </div>
                <div class="col-xs-12 pt-4">
    <p class="text-white text-center">Copyright - All rights reserved ° 2022</p>
                </div>
            </div>
        </div>
    </body> 
</html>