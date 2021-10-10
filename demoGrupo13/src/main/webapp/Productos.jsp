<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="co.edu.unbosqueCiclo3Demo.Productos"%>
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
<title>Creación de Productos</title>
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
				<h5 class="card-title">Productos</h5>
				<h6 class="card-subtitle mb-2 text-muted">En este panel podras gestionar los productos del sistema</h6>
				<div>
					<form class="form-sign" method="get" action="Controlador">

						<div class="form-group">
							<input type="hidden" name="menu" value="Productos"> 
							<label></label>
							<input type="text" name="txtcodigoproducto" class="form-control" value="${productoSeleccionado.getCodigo_producto()}" placeholder="Código de Producto">
						</div>
						<div class="form-group">
							<label></label> 
							<input type="text" name="txtnombreproducto"	class="form-control" value="${productoSeleccionado.getNombre_producto()}" placeholder="Nombre de Producto">
						</div>
						<div class="form-group">
							<label></label> 
							<input type="text" name="txtnit" class="form-control" value="${productoSeleccionado.getNit_proveedor()}" placeholder="Nit del Proveedor">
						</div>
						<div class="form-group">
							<label></label> 
							<input type="text" name="txtpreciocompra" class="form-control" value="${productoSeleccionado.getPrecio_compra()}" placeholder="$ Producto">
						</div>
						<div class="form-group">
							<label></label> 
							<input type="text" name="txtprecioventa" class="form-control" value="${productoSeleccionado.getPrecio_venta()}" placeholder="$ Venta">
						</div>
						<div class="form-group">
							<label></label> 
							<input type="text" name="txtprecioiva" class="form-control" value="${productoSeleccionado.getIvacompra()}" placeholder="$ IVA">
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
					<th scope="col">Codigo</th>
					<th scope="col">Nombre</th>
					<th scope="col">Nit Provedor</th>
					<th scope="col">Precio Producto</th>
					<th scope="col">Precio Venta</th>
					<th scope="col">Precio IVA</th>
				</tr>
			</thead>
			<tbody>
				<%
				ArrayList<Productos> lista = (ArrayList<Productos>) request.getAttribute("lista");
				for (Productos producto : lista) {
				%>
				<tr>
					<td><%=producto.getCodigo_producto()%></td>
					<td><%=producto.getNombre_producto()%></td>
					<td><%=producto.getNit_proveedor()%></td>
					<td><%=producto.getPrecio_compra()%></td>
					<td><%=producto.getPrecio_venta()%></td>
					<td><%=producto.getIvacompra()%></td>
					<td><a class="btn btn-warning" href="Controlador?menu=Productos&accion=Cargar&id=<%=producto.getCodigo_producto()%>">Editar</a>
						<a class="btn btn-danger" href="Controlador?menu=Productos&accion=Eliminar&id=<%=producto.getCodigo_producto()%>">Eliminar</a>
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
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>	
</body>
</html>