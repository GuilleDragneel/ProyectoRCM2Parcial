<%-- 
    Document   : ActualizarUsu
    Created on : 5 may 2022, 11:01:23
    Author     : labso03
    Description : Pagina donde se actualizan los datos del usuario
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
                    </ul>
                </div>
            </div>
        </nav>
        <form action="EditarUsuarioServlet?action=actualizar" method="POST">
            <div class="container-md">
                <div class="mb-3">
                    <span class="input-group-addon"><i class="fa fa-user"></i></span>
                    <label for="exampleInputEmail1" class="form-label">Nombre Usuario</label>
                    <input name="nombreUsuario" value="<c:out value="${usuario.nombreUsuario}"></c:out>" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" required>                    
                        <div id="usuarioname" class="form-text">Solo letras y numeros</div>
                    </div>
                    <div class="mb-3">
                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                        <label for="exampleInputEmail1" class="form-label">Nombre</label>
                        <input name="nombre" type="text" value="<c:out value="${usuario.nombre}"></c:out>" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" required>                                  
                        <div id="nombre" class="form-text">Solo letras</div>
                    </div>
                    <div class="mb-3">
                        <span class="input-group-addon"><i class="fa fa-key"></i></span>
                        <label for="exampleInputPassword1" class="form-label">Contraseña</label>
                        <input name="contraseña" value="<c:out value="${usuario.contraseña}"></c:out>" class="form-control" id="exampleInputPassword1" required>
                        <div id="contraseña" class="form-text">Solo letras y numeros</div>
                    </div>
                    <span class="input-group-addon"><i class="fa fa-venus-mars"></i></span>
                    <label for="exampleInputPassword1" class="form-label">Sexo</label>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="sexo" id="hombre" value="hombre" checked>
                        <label class="form-check-label" for="flexRadioDefault1">
                            Hombre
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="sexo" id="mujer" value="mujer">
                        <label class="form-check-label" for="flexRadioDefault2">
                            Mujer
                        </label>
                    </div>
                    <div class="mb-3">
                        <span class="input-group-addon"><i class="fa fa-hourglass-end"></i></span>
                        <label for="exampleInputEmail1" class="form-label">Edad</label>
                        <input name="edad" value="<c:out value="${usuario.edad}"></c:out>" type="number" required pattern="[0-9]{1,}" min="18" max="99" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" required>                    
                    <div id="emailHelp" class="form-text">Mayor que 18</div>
                </div>
                <button class="summit" class="btn btn-primary" >Crear</button>
            </div>
        </form>
    </body>
</html>
