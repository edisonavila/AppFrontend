<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="co.edu.unbosqueCiclo3Demo.Usuarios"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="EstilosPrincipal.css"/>
<link	
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Creacion de Usuario</title>
</head>
<body>
<div id="contenido">
	<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #36903E ">
  <div class="container-fluid">
  	<div>
  		<a class="navbar-brand" href="Controlador?menu=Principal">
      <img src="img/newlogo.png" alt="" width="200" height="54">
    	</a>
      	<a href="Controlador?menu=Principal"></a>      
      </div>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a style="margin-left:10px; border:none"class="btn btn-outline-light" href="Controlador?menu=Usuarios&accion=Listar" target="">Usuarios</a>
        </li>  
        <li class="nav-item">
          <a style="margin-left:10px; border:none"class="btn btn-outline-light" href="Controlador?menu=Clientes&accion=Listar" target="">Clientes</a>
        </li>
        <li class="nav-item">
          <a style="margin-left:10px; border:none"class="btn btn-outline-light" href="Controlador?menu=Proveedores&accion=Listar"target="">Proveedores</a>
        </li>          
        <li class="nav-item">
          <a style="margin-left:10px; border:none"class="btn btn-outline-light" href="Controlador?menu=Productos&accion=Listar" target="">Productos</a>
        </li>
        <li class="nav-item">
          <a style="margin-left:10px; border:none"class="btn btn-outline-light" href="Controlador?menu=Ventas&accion=default&UsuarioActivo=${usuario.getCedula_usuario()}" target="">Ventas</a>
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
	<div class="row">
		<div class="card col-md-4">
			<div class="card-body">
				<h5 class="card-title">Usuarios</h5>
				<h6 class="card-subtitle mb-2 text-muted">En este panel podras
					gestionar los datos de los usuarios del sistema</h6>
				<div>
					<form class="form-sign" method="get" action="Controlador">

						<div class="form-group">
							<input type="hidden" name="menu" value="Usuarios"> 
							<label>Cedula:</label>
							<input type="text" name="txtcedula" class="form-control" value="${usuarioSeleccionado.getCedula_usuario()}" placeholder="Cédula">
						</div>
						<div class="form-group">
							<label>Nombre:</label> 
							<input type="text" name="txtnombre"	class="form-control" value="${usuarioSeleccionado.getNombre_usuario()}" placeholder="Nombres y apellidos">
						</div>
						<div class="form-group">
							<label>Email:</label> 
							<input type="text" name="txtemail" class="form-control" value="${usuarioSeleccionado.getEmail_usuario()}" placeholder="Correo de usuario">
						</div>
						<div class="form-group">
							<label>Usuario:</label> 
							<input type="text" name="txtusuario" class="form-control" value="${usuarioSeleccionado.getUsuario()}" placeholder="Nick de usuario">
						</div>
						<div class="form-group">
							<label>Password:</label> 
							<input type="password" name="txtpassword" class="form-control" value="${usuarioSeleccionado.getPassword()}" placeholder="Digite contraseña">
						</div>

						<input type="submit" class="btn btn-primary" name="accion" value="Agregar"> 
						<input type="submit" class="btn btn-success" name="accion" value="Actualizar">
					</form>
				</div>
			</div>
		</div>	
	<div class="col-md-8">
		<table class="table" bgcolor="#ffffff">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Cedula</th>
					<th scope="col">Nombre</th>
					<th scope="col">Email</th>
					<th scope="col">Usuario</th>
					<th scope="col">Password</th>
				</tr>
			</thead>
			<tbody>
				<%
				ArrayList<Usuarios> lista = (ArrayList<Usuarios>) request.getAttribute("lista");
				
				for (Usuarios usuario : lista) {
				%>
				<tr>
					<td><%=usuario.getCedula_usuario()%></td>
					<td><%=usuario.getNombre_usuario()%></td>
					<td><%=usuario.getEmail_usuario()%></td>
					<td><%=usuario.getUsuario()%></td>
					<td><%=usuario.getPassword()%></td>
					<td><a class="btn btn-warning" href="Controlador?menu=Usuarios&accion=Cargar&id=<%=usuario.getCedula_usuario()%>">Editar</a>
						<a class="btn btn-danger" href="Controlador?menu=Usuarios&accion=Eliminar&id=<%=usuario.getCedula_usuario()%>">Eliminar</a>
					</td>
				</tr>
				<%
				}
				%>				
			</tbody>
		</table>	
		</div>	
	</div>
	</div>
	<!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script> </body> </html>

</body>
</html>
