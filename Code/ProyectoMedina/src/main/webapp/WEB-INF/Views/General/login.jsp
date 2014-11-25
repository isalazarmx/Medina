<%-- 
    Document   : login.jsp
    Created on : 14-nov-2014, 3:00:32
    Author     : Raf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="${pageContext.request.contextPath}/resources/css/sb-admin.css" rel="stylesheet">
        

        <!-- Morris Charts CSS -->
        <link href="${pageContext.request.contextPath}/resources/css/plugins/morris.css" rel="stylesheet">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <title>Sistema Administrativo Empresarial</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" type="text/css" href="https://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <!-- Optional theme -->
    <link rel="stylesheet" type="text/css" href="https://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
    
    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/css/init.css" rel="stylesheet">
    <style id="holderjs-style" type="text/css"></style>
</head>
<body>
    <div class="site-wrapper">
      <div class="site-wrapper-inner">
        <div class="cover-container">
          <div class="masthead clearfix">
            <div class="inner">
              <h3 class="masthead-brand">SAC</h3>
              <ul class="nav masthead-nav">
                <li><a href="../index">Inicio</a></li>
                <li class="active"><a href="${pageContext.request.contextPath}/General/cargarLogin">Iniciar sesión</a></li>
              </ul>
            </div>
          </div>
            <!--iniciarsesion-->
      <form id="login" name="loginUsuario" class="form-signin" role="form" method="POST" action="${pageContext.request.contextPath}/General/login">
          <h2>Bienvenido</h2>
          ${Error}
          <div class="form-group input-group-sm">
            <input id="usuario" type="text" class="form-control" name ="user" placeholder="Usuario" required autofocus autocomplete="off">
          </div>
          <div class="form-group input-group-sm">
            <input id="password" type="password" class="form-control" name="pass" placeholder="Contraseña" required autocomplete="off">
          </div>  
        <button type="submit" class="btn btn-lg btn-primary btn-block" onclick="validaLogin()">Iniciar</button>
      </form>
            
            <!-- /container -->
          <div class="mastfoot">
            <div class="inner">
              <p>Derechos reservados SAC S.A. de C.V.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <script src="${pageContext.request.contextPath}/resources/js/login.js"></script>
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
 <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.0.js"></script>

            <!-- Bootstrap Core JavaScript -->
            <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
            <script src="${pageContext.request.contextPath}/resources/js/js.js"></script>
            

            <!-- Morris Charts JavaScript -->
            <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/raphael.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/morris.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/morris-data.js"></script>
</body>
</html>