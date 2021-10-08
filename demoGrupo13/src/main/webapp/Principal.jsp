<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>La Huerta del Bosque</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #36903E ">
  <div class="container-fluid">
  	<div>
    	<img src="img/newlogo.png" alt="" width="200" height="54">
      	<a href="Controlador?menu=Principal"></a>      
      </div>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a style="margin-left:10px; border:none"class="btn btn-outline-light" href="Controlador?menu=Principal">Principal</a>
        <li class="nav-item">
          <a style="margin-left:10px; border:none"class="btn btn-outline-light" href="Controlador?menu=Usuarios&accion=Listar" target="myframe">Usuarios</a>
        </li>  
        <li class="nav-item">
          <a style="margin-left:10px; border:none"class="btn btn-outline-light" href="Controlador?menu=Clientes&accion=Listar" target="myframe">Clientes</a>
        </li>
        <li class="nav-item">
          <a style="margin-left:10px; border:none"class="btn btn-outline-light" href="Controlador?menu=Proveedores&accion=Listar"target="myframe">Proveedores</a>
        </li>          
        <li class="nav-item">
          <a style="margin-left:10px; border:none"class="btn btn-outline-light" href="Controlador?menu=Productos&accion=Listar" target="myframe">Productos</a>
        </li>
        <li class="nav-item">
           <a style="margin-left:10px; border:none"class="btn btn-outline-light" href="Controlador?menu=Ventas&accion=default&UsuarioActivo=${usuario.getCedula_usuario()}" target="myframe">Ventas</a>
        </li>
        <li class="nav-item">
          <a style="margin-left:10px; border:none"class="btn btn-outline-light" href="#" target="myframe">Reportes</a>
        </li>
      </ul>
    </div>
  </div>
  <div class="dropdown">
  <button class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
    UserName
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
    <li><a class="dropdown-item" href="#">NombreUsuario</a></li>
    <li><a class="dropdown-item" href="#">Email</a></li>
    <li><a class="dropdown-item" href="#">CerrarSesion</a></li>
  </ul>
</div>
</nav>

<div class="m-4" style="height:550px;">
	<iframe style="height:100%; width:100%; border:none" name="myframe"></iframe>
</div>

</body>
</html>