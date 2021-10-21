<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="EstilosPrincipal.css"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Ventas</title>
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
          <a style="margin-left:10px; border:none"class="btn btn-outline-light" href="Controlador?menu=Reportes&accion=default" target="myframe">Reportes</a>
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
							<label>Datos Cliente</label>
						</div>
						<input type="hidden" name="menu" value="Ventas">
						<input type="hidden" name="UsuarioActivo" value="${usuarioSeleccionado.getCedula_usuario()}">
						<div class="form-group d-flex">
							<div class="col-sm-6 d-flex">
								<input type="number" name="cedulaCliente" class="form-control" placeholder="Cedula cliente" value="${clienteSeleccionado.getCedula_cliente()}">
								<input type="submit" name="accion" value="BuscarCliente" class="btn btn-outline-info">
							</div>						
						<div class="col-sm-6">
							<input type="text" name="nombrecliente" class="form-control" placeholder="Nombre Cliente" value="${clienteSeleccionado.getNombre_cliente()}">						
						</div>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card-body">
						<div class="form-group">
							<label>Datos Productos</label>
					<div class="form-group d-flex">
						<div class="col-sm-6 d-flex">
							<input type="number" name="codigoproducto" class="form-control" placeholder="Codigo" value="${productoSeleccionado.getCodigo_producto()}">
							<input type="submit" name="accion" value="BuscarProducto" class="btn btn-outline-info">
						</div>
						<div class="col-sm-6 d-flex">
							<input type="text" name="nombreproducto" class="form-control" placeholder="Nombre Producto" value="${productoSeleccionado.getNombre_producto()}">
						</div>
					</div>
					<div class="form-group d-flex">
						<div class="col-sm-6 d-flex">
							<input type="text" name="precioproducto" class="form-control" placeholder="$ 0000.00" value="${productoSeleccionado.getPrecio_venta()}">
						</div>
						<div class="col-sm-3 d-flex">
							<input type="number" name="cantidadproducto" class="form-control" placeholder="Cantidad" value="">
						</div>
						<div class="col-sm-3 d-flex">
							<input type="text" name="ivaproducto" class="form-control" placeholder="Valor iva" value="${productoSeleccionado.getIvacompra()}">
						</div>
					</div>
					<div class="form-group d-flex">
						<input type="submit" name="accion" value="AgregarProducto" class="btn btn-outline-primary">
					</div>
				</div>
				</div>
				</div>
			</form>
		</div>
		<div class="col-md-5  seccion2">
			<div class="card">
				<div class="card-header">					
					<div class="form-group row">
						<label class="col-sm-3 col-form-label">Numero de Factura</label>
							<input class="form-control col-md-4" type="text" name="numerofactura" value="${numerofactura}">
					</div>
				</div>
				<div class="card-body">
					<table class="table" bgcolor="#ffffff">
						<thead class="thead-dark">
							<tr>
								<th>#</th>
								<th>Codigo</th>
								<th>Producto</th>
								<th>Precio</th>
								<th>Cantidad</th>
								<th>Iva</th>
								<th>Total</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="lista" items="${listaventas}">
							<tr>
								<th>${lista.getCodigo_detalle_venta()}</th>
								<td>${lista.getCodigo_producto()}</td>
								<td>${lista.getDescripcion_producto()}</td>
								<td>${lista.getPrecio_producto()}</td>
								<td>${lista.getCantidad_producto()}</td>
								<td>${lista.getValor_iva()}</td>
								<td>${lista.getValor_venta()}</td>								
							</tr>	
						</c:forEach>										
						</tbody>
						</table>
				</div>
				<div class="card-footer d-flex">
					<div class="col-md-4">
						<label>Subtotal</label><br>
						<label></label><br>
						<label>Iva</label><br>
						<label></label><br>
						<label>Total a Pagar</label>						
					</div>
					<div class="col-md-4">
						<input type="text" name="txtsubtotal" class="form-control" placeholder="$ 00.000.00" disabled="disabled" value="${subtotal}">
						<input type="text" name="txttotaliva" class="form-control" placeholder="$ 00.000.00" disabled="disabled" value="${subtotaliva}">
						<input type="text" name="txttotalapagar" class="form-control" placeholder="$ 00.000.00" disabled="disabled" value="${total}">
					</div>
				</div>
				<div class="card-footer d-flex">
					<div class="col-md-8">
						<a class="btn btn-success" onclick="print()" href="Controlador?menu=Ventas&accion=GenerarVenta&cedulaCliente=${clienteSeleccionado.getCedula_cliente()}&UsuarioActivo=${usuarioSeleccionado1.getCedula_usuario()}&numerofactura=${numerofactura}">Generar Venta</a>
						<a class="btn btn-danger" href="Controlador?menu=Ventas&accion=NuevaVenta">Nueva Venta</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>