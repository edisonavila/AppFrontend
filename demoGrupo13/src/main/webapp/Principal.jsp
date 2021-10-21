<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-kQtW33rZJAHjgefvhyyzcGF3C5TFyBQBA13V1RKPf4uH+bwyzQxZ6CmMZHmNBEfJ" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>La Huerta del Bosque</title>
<link rel="stylesheet" href="EstilosPrincipal.css"/>
<link rel="stylesheet" href="Tarjetas.css"/>
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
        crossorigin="anonymous">
</head>
<body>
<div id=contenido>
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

<div id= "ofertas">
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
    	<div align= center>
      <img src="img/Promocion1.png" class="d-block w-99" alt="...">
      	</div>
    </div>
    <div class="carousel-item">
    	<div align= center>
      <img src="img/Promocion2.png" class="d-block w-99" alt="...">
      	</div>
    </div>
    <div class="carousel-item">
    	<div align= center>
      <img src="img/Promocion3.png" class="d-block w-99" alt="...">
      	</div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
</div>
<br>
<div id="frutas">
<h1 align=center ><font color=white>FRUTAS Y VERDURAS</font></h1>
</div>
<br>
<div id="precios" align=center class="card-group">
<br>
<div class="tomate">
  <div class="card">
    <div class="imgBx">
      <img src="img/tomate.png">
    </div>
    <div class="contentBx">
      <h2>Tomate Chonto</h2>
      <div class="size">
        <h3>precio por libra: $1.598</h3>
        <br>
      </div>
      <div class="color">
        <h3></h3>
        <span></span>
        <span></span>
        <span></span>
      </div>
      <a href="Controlador?menu=Productos&accion=Listar">Añadir al carrito</a>
    </div>
  </div>
</div>
<div class="lechuga">
  <div class="card">
    <div class="imgBx">
      <img src="img/Lechuga.png">
    </div>
    <div class="contentBx">
      <h2>Lechuga crespa</h2>
      <div class="size">
        <h3>precio por 200g: $2.290</h3>
        <br>
      </div>
      <div class="color">
        <h3></h3>
        <span></span>
        <span></span>
        <span></span>
      </div>
      <a href="Controlador?menu=Productos&accion=Listar">Añadir al carrito</a>
      
    </div>
  </div>
</div>
<div class="zanahoria">
  <div class="card">
    <div class="imgBx">
      <img src="img/zanahoria.png">
    </div>
    <div class="contentBx">
      <h2>Zanahoria</h2>
      <div class="size">
        <h3>precio por libra: $2.035</h3>
        <br>
      </div>
      <div class="color">
        <h3></h3>
        <span></span>
        <span></span>
        <span></span>
      </div>
      <a href="Controlador?menu=Productos&accion=Listar">Añadir al carrito</a>
    </div>
  </div>
</div>
  <br>
</div>

<div id="precios" align=center class="card-group">
<br>
<div class="cebolla">
  <div class="card">
    <div class="imgBx">
      <img src="img/cebollacabezona.png">
    </div>
    <div class="contentBx">
      <h2>Cebolla Cabezona</h2>
      <div class="size">
        <h3>precio por libra: $2.530</h3>
        <br>
      </div>
      <div class="color">
        <h3></h3>
        <span></span>
        <span></span>
        <span></span>
      </div>
      <a href="Controlador?menu=Productos&accion=Listar">Añadir al carrito</a>
    </div>
  </div>
</div>

<div class="aguacate">
  <div class="card">
    <div class="imgBx">
      <img src="img/aguacate.png">
    </div>
    <div class="contentBx">
      <h2>Aguacate</h2>
      <div class="size">
        <h3>precio por libra: $4.279</h3>
        <br>
      </div>
      <div class="color">
        <h3></h3>
        <span></span>
        <span></span>
        <span></span>
      </div>
      <a href="Controlador?menu=Productos&accion=Listar">Añadir al carrito</a>
      
    </div>
  </div>
</div>
<div class="ajo">
  <div class="card">
    <div class="imgBx">
      <img src="img/ajo.png">
    </div>
    <div class="contentBx">
      <h2>Ajo</h2>
      <div class="size">
        <h3>precio por 3 unidades:$2.290</h3>
        <br>
      </div>
      <div class="color">
        <h3></h3>
        <span></span>
        <span></span>
        <span></span>
      </div>
      <a href="Controlador?menu=Productos&accion=Listar">Añadir al carrito</a>
    </div>
  </div>
</div>
  <br>
</div>

<div id="precios" align=center class="card-group">
<br>
<div class="naranja">
  <div class="card">
    <div class="imgBx">
      <img src="img/naranja.png">
    </div>
    <div class="contentBx">
      <h2>Naranja</h2>
      <div class="size">
        <h3>precio por libra:$2.209</h3>
        <br>
      </div>
      <div class="color">
        <h3></h3>
        <span></span>
        <span></span>
        <span></span>
      </div>
      <a href="Controlador?menu=Productos&accion=Listar">Añadir al carrito</a>
    </div>
  </div>
</div>
<div class="manzana">
  <div class="card">
    <div class="imgBx">
      <img src="img/manzana.png">
    </div>
    <div class="contentBx">
      <h2>Manzana</h2>
      <div class="size">
        <h3>precio por libra: $4.939</h3>
        <br>
      </div>
      <div class="color">
        <h3></h3>
        <span></span>
        <span></span>
        <span></span>
      </div>
      <a href="Controlador?menu=Productos&accion=Listar">Añadir al carrito</a>
    </div>
  </div>
</div>

<div class="lulo">
  <div class="card">
    <div class="imgBx">
      <img src="img/lulo.png">
    </div>
    <div class="contentBx">
      <h2>Lulo</h2>
      <div class="size">
        <h3>precio por libra: $3.795</h3>
        <br>
      </div>
      <div class="color">
        <h3></h3>
        <span></span>
        <span></span>
        <span></span>
      </div>
      <a href="Controlador?menu=Productos&accion=Listar">Añadir al carrito</a>
      
    </div>
  </div>
</div>

  <br>
</div>
<br>
<div id="frutas">
<h1 align=center ><font color=white>CARNES</font></h1>
</div>
<br>
<div id="precios" align=center class="card-group">
<br>
<div class="churrasco">
  <div class="card">
    <div class="imgBx">
      <img src="img/churrasco.png">
    </div>
    <div class="contentBx">
      <h2>Churrasco</h2>
      <div class="size">
        <h3>precio por libra: $12.000</h3>
        <br>
      </div>
      <div class="color">
        <h3></h3>
        <span></span>
        <span></span>
        <span></span>
      </div>
      <a href="Controlador?menu=Productos&accion=Listar">Añadir al carrito</a>
    </div>
  </div>
</div>
<div class="molida">
  <div class="card">
    <div class="imgBx">
      <img src="img/molida.png">
    </div>
    <div class="contentBx">
      <h2>Carne Molida</h2>
      <div class="size">
        <h3>precio por libra: $4.250</h3>
        <br>
      </div>
      <div class="color">
        <h3></h3>
        <span></span>
        <span></span>
        <span></span>
      </div>
      <a href="Controlador?menu=Productos&accion=Listar">Añadir al carrito</a>
      
    </div>
  </div>
</div>
<div class="costilla">
  <div class="card">
    <div class="imgBx">
      <img src="img/costilla.png">
    </div>
    <div class="contentBx">
      <h2>Costilla de Res</h2>
      <div class="size">
        <h3>precio por libra: $5.160</h3>
        <br>
      </div>
      <div class="color">
        <h3></h3>
        <span></span>
        <span></span>
        <span></span>
      </div>
      <a href="Controlador?menu=Productos&accion=Listar">Añadir al carrito</a>
    </div>
  </div>
</div>
  <br>
</div>

<div id="precios" align=center class="card-group">
<br>
<div class="panceta">
  <div class="card">
    <div class="imgBx">
      <img src="img/panceta.png">
    </div>
    <div class="contentBx">
      <h2>Panceta de Cerdo</h2>
      <div class="size">
        <h3>precio por libra: $10.400</h3>
        <br>
      </div>
      <div class="color">
        <h3></h3>
        <span></span>
        <span></span>
        <span></span>
      </div>
      <a href="Controlador?menu=Productos&accion=Listar">Añadir al carrito</a>
    </div>
  </div>
</div>

<div class="lomo">
  <div class="card">
    <div class="imgBx">
      <img src="img/lomo.png">
    </div>
    <div class="contentBx">
      <h2>Lomo de Cerdo	</h2>
      <div class="size">
        <h3>precio por libra: $10.987</h3>
        <br>
      </div>
      <div class="color">
        <h3></h3>
        <span></span>
        <span></span>
        <span></span>
      </div>
      <a href="Controlador?menu=Productos&accion=Listar">Añadir al carrito</a>
      
    </div>
  </div>
</div>
<div class="pezuña">
  <div class="card">
    <div class="imgBx">
      <img src="img/pezuña.png">
    </div>
    <div class="contentBx">
      <h2>Pezuña de Cerdo</h2>
      <div class="size">
        <h3>precio por libra: $4.500</h3>
        <br>
      </div>
      <div class="color">
        <h3></h3>
        <span></span>
        <span></span>
        <span></span>
      </div>
      <a href="Controlador?menu=Productos&accion=Listar">Añadir al carrito</a>
    </div>
  </div>
</div>
  <br>
</div>

<div id="precios" align=center class="card-group">
<br>
<div class="pollo">
  <div class="card">
    <div class="imgBx">
      <img src="img/pollo.png">
    </div>
    <div class="contentBx">
      <h2>Pollo Entero</h2>
      <div class="size">
        <h3>precio por libra:$4.500</h3>
        <br>
      </div>
      <div class="color">
        <h3></h3>
        <span></span>
        <span></span>
        <span></span>
      </div>
      <a href="Controlador?menu=Productos&accion=Listar">Añadir al carrito</a>
    </div>
  </div>
</div>
<div class="pierna">
  <div class="card">
    <div class="imgBx">
      <img src="img/pierna.png">
    </div>
    <div class="contentBx">
      <h2>Pierna Pernil</h2>
      <div class="size">
        <h3>precio por libra: $4.700</h3>
        <br>
      </div>
      <div class="color">
        <h3></h3>
        <span></span>
        <span></span>
        <span></span>
      </div>
      <a href="Controlador?menu=Productos&accion=Listar">Añadir al carrito</a>
    </div>
  </div>
</div>

<div class="pechuga">
  <div class="card">
    <div class="imgBx">
      <img src="img/pechuga.png">
    </div>
    <div class="contentBx">
      <h2>Pechuga de Pollo</h2>
      <div class="size">
        <h3>precio por libra: $7.645</h3>
        <br>
      </div>
      <div class="color">
        <h3></h3>
        <span></span>
        <span></span>
        <span></span>
      </div>
      <a href="Controlador?menu=Productos&accion=Listar">Añadir al carrito</a>
      
    </div>
  </div>
</div>

  <br>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>