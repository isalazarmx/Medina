<%-- 
    Document   : index
    Created on : 13/11/2014, 10:39:28 PM
    Author     : Pablo RosHdz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!DOCTYPE html>
<html lang="en">
<head>
     <link rel="stylesheet" type="text/css" href="https://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <!-- Optional theme -->
    <link rel="stylesheet" type="text/css" href="https://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
    <!-- Bootstrap Core CSS -->
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="${pageContext.request.contextPath}/resources/css/sb-admin.css" rel="stylesheet">
        

        <!-- Morris Charts CSS -->
        <link href="${pageContext.request.contextPath}/resources/css/plugins/morris.css" rel="stylesheet">
 <link href="${pageContext.request.contextPath}/resources/css/init.css" rel="stylesheet">
        <!-- Custom Fonts -->
        <link href="${pageContext.request.contextPath}/resources/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

</head>
<body>
    <div class="site-wrapper">
      <div class="site-wrapper-inner">
        <div class="cover-container">
          <div class="masthead clearfix">
            <div class="inner">
              <h3 class="masthead-brand">SAC</h3>
              <ul class="nav masthead-nav">
                <li class="active"><a href="/index">Inicio</a></li>
                <li><a href="${pageContext.request.contextPath}/General/cargarLogin">Iniciar sesión</a></li>
              </ul>
            </div>
          </div>
          <div id="thumbnail-preview-indicators" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#thumbnail-preview-indicators" data-slide-to="0" class="active">
                  <div class="thumbnail">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/resources/image/banner01.jpg">
                  </div>
                </li>
                <li data-target="#thumbnail-preview-indicators" data-slide-to="1">
                <div class="thumbnail">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/resources/image/banner02.jpg">
                  </div>
                </li>
                <li data-target="#thumbnail-preview-indicators" data-slide-to="2">
                <div class="thumbnail">
                    <img class="img-responsive" src="${pageContext.request.contextPath}/resources/image/banner03.jpg">
                  </div>
                </li>
            </ol>
            <div class="carousel-inner">
                <div class="item slides active">
                    <div class="slide-1"></div>
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Ser una de las cinco marcas que lideren el mercado</h1>
                        </div>
                    </div>
                </div>
                <div class="item slides">
                    <div class="slide-2"></div>
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Alcanzar un mayor alcance a nivel nacional e internacional</h1>
                        </div>
                    </div>
                </div>
                <div class="item slides">
                    <div class="slide-3"></div>
                        <div class="container">
                            <div class="carousel-caption">
                                <h1>Crear nuevos diseños para un mejor reconocimiento de la marca</h1>
                            </div>
                        </div>
                </div>
          </div>
          <a class="left carousel-control" href="#thumbnail-preview-indicators" role="button" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
          <a class="right carousel-control" href="#thumbnail-preview-indicators" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
         </div> 
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
     <!-- jQuery Version 1.11.0 -->
            <script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.0.js"></script>

            <!-- Bootstrap Core JavaScript -->
            <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
            <script src="${pageContext.request.contextPath}/resources/js/js.js"></script>
            

            <!-- Morris Charts JavaScript -->
            <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/raphael.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/morris.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/morris-data.js"></script>
            
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
</body>
</html>