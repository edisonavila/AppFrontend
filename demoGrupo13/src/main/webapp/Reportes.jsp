<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<title>Reportes/Informes</title>
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
          <a style="margin-left:10px; border:none"class="btn btn-outline-light" href="Controlador?menu=Reportes&accion=default" target="">Reportes</a>
        </li>
      </ul>
    </div>
  </div>
  <div class="dropdown">
  <button class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
    ${usuario.getNombre_usuario()}
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">      
    <li><a class="dropdown-item" href="http://localhost:8080/Huerta_del_Bosque/inicio.jsp">CerrarSesion</a></li>
  </ul>
</div>
</nav>
	<div class="row">
		<div class="col-md-5 seccion1">
			<form method="get" action="Controlador">
				<div class="card">
					<div class="card-body">
						<div class="form-group">
							<label>Seleccione el tipo de Reporte</label>							
						</div>
						<input type="hidden" name="menu" value="Reportes">
							<div class="form-group d-flex">
								<div class="col-sm-6 d-flex">
									<input type="submit" name="accion" value="ReporteUsuarios" class="btn btn-outline-info">
									<input type="submit" name="accion" value="ReporteClientes" class="btn btn-outline-info">
									<input type="submit" name="accion" value="ReporteVentas" class="btn btn-outline-info">
								</div>
							</div>
					</div>
				</div>
			</form>
		</div>
		<div class="col-md-7 seccion2">
			<div class="card">
				<div class="card-body">
					<div class="form-group">
						<label>Detalle Reporte</label>
					</div>
					 <table class="table">
					 <c:if test="${opcion==1}">
					 	<thead class="thead-dark">
					 		<tr>
					 			<th scope="col">Cedula</th>
					 			<th scope="col">Nombre</th>
					 			<th scope="col">Email</th>
					 			<th scope="col">Usuario</th>					 			
					 		</tr>
					 	</thead>					 
					 <tbody>
					 <c:forEach var="lista" items="${listaUsuarios}">
					 	<tr>
					 		<td>${lista.getCedula_usuario()}</td>
					 		<td>${lista.getNombre_usuario()}</td>
					 		<td>${lista.getEmail_usuario()}</td>
					 		<td>${lista.getUsuario()}</td>					 		
					 	</tr>
					 </c:forEach>					 					 	
					 </tbody>
					 </c:if>
					 
					 <c:if test="${opcion==2}">
						 <thead class="thead-dark">
						 		<tr>
						 			<th scope="col">Cedula</th>
									<th scope="col">Dirección</th>
									<th scope="col">Email</th>
									<th scope="col">Nombre</th>
									<th scope="col">Teléfono</th>					 			
								</tr>
						 	</thead>					 
						 <tbody>
						 <c:forEach var="lista" items="${listaClientes}">
						 	<tr>
						 		<td>${lista.getCedula_cliente()}</td>
						 		<td>${lista.getDireccion_cliente()}</td>					 	
						 		<td>${lista.getEmail_cliente()}</td>
						 		<td>${lista.getNombre_cliente()}</td>
						 		<td>${lista.getTelefono_cliente()}</td>					 		
						 	</tr>
						 </c:forEach>					 					 	
						 </tbody>					 					 
					 </c:if>
					 
					 <c:if test="${opcion==3}">
					 	<thead class="thead-dark">
						 		<tr>
						 			<th scope="col">Codigo Venta</th>
									<th scope="col">Cedula Cliente</th>
									<th scope="col">Cedula Usuario</th>
									<th scope="col">Valor Venta</th>
									<th scope="col">Valor Iva</th>					 			
									<th scope="col">Valor Total</th>
								</tr>
						 	</thead>					 
						 <tbody>
						 <c:forEach var="lista" items="${listaVentas}">
						 	<tr>
						 		<td>${lista.getCodigo_venta()}</td>
						 		<td>${lista.getCedula_cliente()}</td>					 	
						 		<td>${lista.getCedula_usuario()}</td>
						 		<td>${lista.getValor_venta()}</td>
						 		<td>${lista.getIva_venta()}</td>					 		
						 		<td>${lista.getTotal_venta()}</td>
						 	</tr>
						 </c:forEach>					 					 	
						 </tbody>					 							 	
					 </c:if>
					 </table>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>