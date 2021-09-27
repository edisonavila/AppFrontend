<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Ejemplo JSP</title>
        
</head>
<body background="img/frutas.png">
<div align="center"><img src="img/logoH.png" width=247 height="180"></div>

<div align="center" class="container mt-4 col-md-4">
  <div class="card col-sm-10" style="background-color: #71DC3C ;">
    <div class="card-body">
      <form class="form-sign" method="get" action="./DemoServlet">
        <div class="form-group text-center">
         <h1>Login</h1>
         <img src="img/loginicon.png" width=80 height="80">
         <br>
        </div>
        <div class="form-group">
          <label><b> Usuario</b></label>
          <input type="text" name="txtusuario" class="form-control" placeholder="Nombre de usuario" style="background-color: #d4d4d4">
        </div>
        <div class="form-group">
          <label><b> Password</b></label>
          <input type="password" name="txtpassword" class="form-control" placeholder="Digite su contraseña" style="background-color: #d4d4d4">
          <br>
        </div>
        <div class="form-group">
          <input type="submit" name = "accion" value="Ingresar" class= "btn btn-primary btn-b">
        </div>
      </form>
    </div>
  </div>
</div>
</form>
</body>
</html>