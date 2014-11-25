<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="Jorge" >

        <title>SAC</title>

        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">

        <!-- Morris Charts CSS -->
        <link href="${pageContext.request.contextPath}/resources/css/plugins/morris.css" rel="stylesheet">       

        <!-- Custom Fonts -->
        <link href="${pageContext.request.contextPath}/resources/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <link href="${pageContext.request.contextPath}/resources/css/sb-admin.css" rel="stylesheet">  

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>

    <body>

        <div id="wrapper">

            <!-- Navigation -->
            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">SAC</a>
                </div>
                <!-- Top Menu Items -->
                <ul class="nav navbar-right top-nav">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> <b class="caret"></b></a>
                        <ul class="dropdown-menu message-dropdown">
                            <li class="message-preview">
                                <!-- <a href="#"> -->
                                <form onclick="noFuncional()">
                                    <div class="media">
                                        <span class="pull-left">
                                            <img class="media-object" src="http://placehold.it/50x50" alt="">
                                        </span>
                                        <div class="media-body">
                                            <h5 class="media-heading"><strong>Fiesta de fin de mes</strong>
                                            </h5>
                                            <p class="small text-muted"><i class="fa fa-clock-o"></i> Hoy a las 4:32 PM</p>
                                            <p>FIESTA!...</p>
                                        </div>
                                    </div>                                    
                                </form>
                                <!-- </a> -->
                            </li>
                            <li class="message-preview">
                                <!-- <a href="#"> -->
                                <form onclick="noFuncional()">
                                    <div class="media">
                                        <span class="pull-left">
                                            <img class="media-object" src="http://placehold.it/50x50" alt="">
                                        </span>
                                        <div class="media-body">
                                            <h5 class="media-heading"><strong>Presupuesto</strong>
                                            </h5>
                                            <p class="small text-muted"><i class="fa fa-clock-o"></i> Antier a las 11:45 AM</p>
                                            <p>Por medio del siguiente se quiere solicitar...</p>
                                        </div>
                                    </div>
                                </form>
                                <!-- </a> -->
                            </li>
                            <li class="message-preview">
                                <!-- <a href="#"> -->
                                <form onclick="noFuncional()">
                                    <div class="media">
                                        <span class="pull-left">
                                            <img class="media-object" src="http://placehold.it/50x50" alt="">
                                        </span>
                                        <div class="media-body">
                                            <h5 class="media-heading"><strong>Urgencia</strong>
                                            </h5>
                                            <p class="small text-muted"><i class="fa fa-clock-o"></i> Ayer a las 4:32 PM</p>
                                            <p>Se solicita su presencia el dia de...</p>
                                        </div>
                                    </div>
                                </form>
                                <!-- </a> -->
                            </li>
                            <li class="message-footer">
                                <a href="historial.html">Ver todos los mensajes</a>
                            </li>
                            <li class="message-footer">
                                <a href="edicionNotificaciones.html">Enviar un mensaje</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" onclick="noFuncional()" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
                        <!--<ul class="dropdown-menu alert-dropdown">
                            <li>
                                <a href="#">Alert Name <span class="label label-default">Alert Badge</span></a>
                            </li>
                            <li>
                                <a href="#">Alert Name <span class="label label-primary">Alert Badge</span></a>
                            </li>
                            <li>
                                <a href="#">Alert Name <span class="label label-success">Alert Badge</span></a>
                            </li>
                            <li>
                                <a href="#">Alert Name <span class="label label-info">Alert Badge</span></a>
                            </li>
                            <li>
                                <a href="#">Alert Name <span class="label label-warning">Alert Badge</span></a>
                            </li>
                            <li>
                                <a href="#">Alert Name <span class="label label-danger">Alert Badge</span></a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">View All</a>
                            </li>
                        </ul>-->
                    </li>
                    <li class="dropdown">
                        <a href="#" onclick="noFuncional()" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-user"></i> Username <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                        </ul>
                    </li>
                </ul>
                <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav side-nav">
                        <li class="active">
                            <a href="index.html"><i class="glyphicon glyphicon-stats"></i> &nbsp;Dirección</a>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#demo">Estadísticas<i class="fa fa-fw fa-caret-down"></i></a>
                            <ul id="demo" class="collapse">
                                <li>
                                    <a href="Dashboard.html">Dashboard</a>
                                </li>
                                <li>
                                    <a href="formatoReporte.html">Reportes</a>
                                </li>
                                <li>
                                    <a href="Proyecciones.html">Proyecciones</a>
                                </li>
                                <li>
                                    <a href="Graficas.html">Graficas de Metas</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>

            <!-- CONTENIDO -->
            <div id="page-wrapper">

                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Reportes Disponibles
                            </h1>                        
                        </div>
                    </div>
                    <!-- --------------------- table -------------------------- -->
                    <div class="col-md-10 col-md-offset-1">              <!-- estas lineas (cualquiera) se usan para ajustar  -->
                        <!--<div class="col-md-8 col-md-offset-2">-->       <!-- el taman?o y tener la tabla en una buena ubicacion -->
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover table-striped">

                                <thead><!-- cabeceras de la tabla -->
                                    <tr><!--fila 1:cabecera de la tabla-->
                                        <th><!--columna 1 departamento-->
                                            Departamento
                                        </th>
                                        <th><!--columna 2 Tipo de reporte-->
                                            Descargar
                                        </th>
                                        <th>
                                            Visualizar
                                        </th>
                                    </tr>
                                </thead>

                                <tbody> <!--Cuerpo principal de la tabla-->
                                    <tr class="success">
                                        <td>Compras</td>
                                        <td>Descargar reporte de compras:<br>
                                            <form method="get" action="img/reportePruebaExel.xlsx"> 
                                                <input type="image" src="${pageContext.request.contextPath}/resources/image/Direccion/appbar.office.excel.png" width="45" height="45">
                                            </form>
                                            <form  method="get" action="img/Reporte.pdf">
                                                <input type="image" src="img/appbar.adobe.acrobat.png" width="45" height="45">
                                            </form>
                                        </td>
                                        <td>
                                            <form action="verReportePdf.html">
                                                <input type="image" src="img/appbar.adobe.acrobat.png" width="45" height="45">
                                            </form>
                                        </td>
                                    </tr>
                                    <tr class="info">
                                        <td>Ventas</td>
                                        <td>Descargar reporte de ventas:<br>
                                            <form method="get" action="img/reportePruebaExel.xlsx">
                                                <input type="image" src="img/appbar.office.excel.png" width="45" height="45">
                                            </form>
                                            <form   method="get" action="img/Reporte.pdf">
                                                <input type="image" src="img/appbar.adobe.acrobat.png" width="45" height="45">
                                            </form>
                                        </td>
                                        <td>
                                            <form   method="get" action="img/Reporte.pdf">
                                                <input type="image" src="img/appbar.adobe.acrobat.png" width="45" height="45">
                                            </form>
                                        </td>
                                    </tr>
                                    <tr class="warning">
                                        <td>Finanzas</td>
                                        <td>Descargar reporte de nomina:<br>
                                            <form method="get" action="img/reportePruebaExel.xlsx">
                                                <input type="image" src="img/appbar.office.excel.png" width="45" height="45">
                                            </form>
                                            <form  method="get" action="img/Reporte.pdf">
                                                <input type="image" src="img/appbar.adobe.acrobat.png" width="45" height="45">
                                            </form>
                                            <br>Descargar reporte de estado de resultados:<br>
                                            <form method="get" action="img/reportePruebaExel.xlsx">
                                                <input type="image" src="img/appbar.office.excel.png" width="45" height="45">
                                            </form>
                                            <form  method="get" action="img/Reporte.pdf">
                                                <input type="image" src="img/appbar.adobe.acrobat.png" width="45" height="45">
                                            </form>
                                        </td>
                                        <td>
                                            <form action="verReportePdf.html">
                                                <input type="image" src="img/appbar.adobe.acrobat.png" width="45" height="45">
                                            </form>
                                            <form action="verReportePdf.html">
                                                <input type="image" src="img/appbar.adobe.acrobat.png" width="45" height="45">
                                            </form>
                                        </td>
                                    </tr>
                                    <tr class="danger">
                                        <td>Recursos<br>Humanos</td>
                                        <td>Descargar reporte de bajas:<br>
                                            <form method="get" action="img/reportePruebaExel.xlsx">
                                                <input type="image" src="img/appbar.office.excel.png" width="45" height="45">
                                            </form>
                                            <form  method="get" action="img/Reporte.pdf">
                                                <input type="image" src="img/appbar.adobe.acrobat.png" width="45" height="45">
                                            </form>
                                            Descargar reporte de altas:<br>
                                            <form method="get" action="img/reportePruebaExel.xlsx">
                                                <input type="image" src="img/appbar.office.excel.png" width="45" height="45">
                                            </form>
                                            <form  method="get" action="img/Reporte.pdf">
                                                <input type="image" src="img/appbar.adobe.acrobat.png" width="45" height="45">
                                            </form>
                                            Descargar reporte de personal vigente:<br>
                                            <form method="get" action="img/reportePruebaExel.xlsx">
                                                <input type="image" src="img/appbar.office.excel.png" width="45" height="45">                                 
                                            </form>
                                            <form  method="get" action="img/Reporte.pdf">
                                                <input type="image" src="img/appbar.adobe.acrobat.png" width="45" height="45">
                                            </form>
                                        </td>
                                        <td>
                                            <form action="verReportePdf.html">
                                                <input type="image" src="img/appbar.adobe.acrobat.png" width="45" height="45">
                                            </form>
                                            <form action="verReportePdf.html">
                                                <input type="image" src="img/appbar.adobe.acrobat.png" width="45" height="45">
                                            </form>
                                            <form action="verReportePdf.html">
                                                <input type="image" src="img/appbar.adobe.acrobat.png" width="45" height="45">
                                            </form>
                                        </td>
                                    </tr>
                                    <tr class="success">
                                        <td>Almacen</td>
                                        <td>Descargar reporte de existencias:<br>
                                            <form method="get" action="img/reportePruebaExel.xlsx">
                                                <input type="image" src="img/appbar.office.excel.png" width="45" height="45">
                                            </form>
                                            <form  method="get" action="img/Reporte.pdf">
                                                <input type="image" src="img/appbar.adobe.acrobat.png" width="45" height="45">
                                            </form>
                                        </td>
                                        <td>
                                            <form action="verReportePdf.html">
                                                <input type="image" src="img/appbar.adobe.acrobat.png" width="45" height="45">
                                            </form>
                                        </td>
                                    </tr>
                                    <tr class="info">
                                        <td>Activos<br>Fijos</td>
                                        <td>Descargar reporte de activos:<br>
                                            <form method="get" action="img/reportePruebaExel.xlsx">
                                                <input type="image" src="img/appbar.office.excel.png" width="45" height="45">
                                            </form>
                                            <form  method="get" action="img/Reporte.pdf">
                                                <input type="image" src="img/appbar.adobe.acrobat.png" width="45" height="45">
                                            </form>
                                        </td>
                                        <td>                             
                                            <form action="verReportePdf.html">
                                                <input type="image" src="img/appbar.adobe.acrobat.png" width="45" height="45">
                                            </form>
                                        </td>
                                    </tr>
                                </tbody>
                            </table><!-- Fin de la tabla -->
                        </div><!-- Fin del estilo de la tabla -->
                    </div>
                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- FIN DE CONTENIDO -->

        </div>
        <script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.0.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/js.js" src="js/js.js"></script>
        <!-- Morris Charts JavaScript -->
        <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/raphael.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/morris.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/morris-data.js"></script>		
        <script src="${pageContext.request.contextPath}/resources/js/jsDireccion.js" type="text/javascript"></script>

    </body>

</html>
