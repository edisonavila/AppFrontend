<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>body{
	background: url(img/frutas.png);
	background-size: cover;
 }</style>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<meta charset="UTF-8">
<title>La Huerta del Bosque</title>       
</head>
<body>
<div align="center"><img src="img/newlogo.png" class="img-fluid" width=500 height="180"></div>

<div align="center" class="container mt-4 col-md-4">
  <div class="card col-sm-10" style="background-color: #71DC3C;">
    <div class="card-body">
      <form class="form-sign" method="get" action="./DemoServlet">
        <div class="form-group text-center">
         <h1>Login</h1>
         <img src="img/loginicon.png" width=80 height="80">
         <br>
         <br>
        </div>
       <div class="form-floating mb-3">
            <input type="text" class="form-control" name="txtusuario" placeholder="name@example.com">
            <label for="floatingInput"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
  			<path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
			</svg> Usuario</label>
          </div>
        <div class="form-floating mb-3">
            <input type="password" class="form-control" name="txtpassword" placeholder="Password">
            <label for="floatingPassword"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-key" viewBox="0 0 16 16">
  			<path d="M0 8a4 4 0 0 1 7.465-2H14a.5.5 0 0 1 .354.146l1.5 1.5a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0L13 9.207l-.646.647a.5.5 0 0 1-.708 0L11 9.207l-.646.647a.5.5 0 0 1-.708 0L9 9.207l-.646.647A.5.5 0 0 1 8 10h-.535A4 4 0 0 1 0 8zm4-3a3 3 0 1 0 2.712 4.285A.5.5 0 0 1 7.163 9h.63l.853-.854a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .708 0l.646.647.793-.793-1-1h-6.63a.5.5 0 0 1-.451-.285A3 3 0 0 0 4 5z"/>
 			 <path d="M4 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/>
			</svg> Contraseña</label>
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