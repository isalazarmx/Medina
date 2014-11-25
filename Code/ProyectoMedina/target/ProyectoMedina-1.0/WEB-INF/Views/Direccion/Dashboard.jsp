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

        <title>Sistema de administración Contable</title>

        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/sb-admin.css" rel="stylesheet">

        <!-- Morris Charts CSS -->
        <link href="css/plugins/morris.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

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
                    <a class="navbar-brand" href="index.html">SAP</a>
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
                                            <p class="small text-muted"><i class="fa fa-clock-o"></i><spring:message code="Hoy_a_las"/> 4:32 PM</p>
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
                                            <p class="small text-muted"><i class="fa fa-clock-o"></i> <spring:message code="Hace_dos_dias"/> 11:45 AM</p>
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
                                            <p class="small text-muted"><i class="fa fa-clock-o"></i> <spring:message code="Ayer_a_las"/> 4:32 PM</p>
                                            <p>Se solicita su presencia el dia de...</p>
                                        </div>
                                    </div>
                                </form>
                                <!-- </a> -->
                            </li>
                            <li class="message-footer">
                                <a href="historial.html"><spring:message code="Ver_todos_los_mensajes"/></a>
                            </li>
                            <li class="message-footer">
                                <a href="edicionNotificaciones.html"><spring:message code="Enviar_un_mensaje"/></a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#"  onclick="noFuncional()" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-bell"></i> <b class="caret"></b></a>
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
                            <a href="index.html"><i class="glyphicon glyphicon-stats"></i> &nbsp;<spring:message code="Direccion"/></a>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#demo"><spring:message code="Estadisticas"/><i class="fa fa-fw fa-caret-down"></i></a>
                            <ul id="demo" class="collapse">
                                <li>
                                    <a href="Dashboard.html">Dashboard</a>
                                </li>
                                <li>
                                    <a href="formatoReporte.html"><spring:message code="reportes"/></a>
                                </li>
                                <li>
                                    <a href="Proyecciones.html"><spring:message code="Proyecciones"/></a>
                                </li>
                                <li>
                                    <a href="Graficas.html"><spring:message code="Graficas_de_Metas"/></a>
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
                        <div class="col-lg-12 text-center">
                            <div class="panel panel-primary">
                                <div class="panel-body">
                                    <div class="page-header">
                                        <h1 align="left">Dashboard</h1>
                                    </div>
                                    <div class="row"><!-- fila que contiene a los paneles -->

                                        <div class="col-sm-4">

                                            <form action="indexDireccion.html" method="Post">
                                                <div class="panel panel-primary">
                                                    <div class="panel-heading">
                                                        <h3 class="panel-title" align="left"><spring:message code="Compras"/></h3>
                                                    </div>
                                                    <div class="panel-body">
                                                        <spring:message code="Compras_realizadas"/>:<label> </label><br>
                                                        <spring:message code="costo"/>: $<label></label><br>
                                                        <spring:message code="Ultima_compra_realizada"/>:<br>
                                                        <spring:message code ="Producto"/>:<label></label><br>
                                                        <spring:message code="Cantidad"/>:<label> </label><br>
                                                        <spring:message code="costo"/>: $<label> </label><br>
                                                    </div>
                                                </div>

                                            </form>
                                            <form action="indexDireccion.html" method="Post">
                                                <div class="panel panel-primary">
                                                    <div class="panel-heading">
                                                        <h3 class="panel-title"  align="left"><spring:message code="Recursos_Humanos"/></h3>
                                                    </div>
                                                    <div class="panel-body">
                                                        <spring:message code ="Total_de_Empleados"/>:<label></label><br>
                                                        <spring:message code="Faltantes"/>:<label></label><br>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                        <!-- /.col-sm-4 -->

                                        <div class="col-sm-4">

                                            <form action="indexDireccion.html" method="Post">
                                                <div class="panel panel-primary">

                                                    <div class="panel-heading">
                                                        <h3 class="panel-title"  align="left"><spring code="Ventas"/></h3>
                                                    </div>
                                                    <div class="panel-body">
                                                        <spring:message code="Venta_realizadas"/>:<label> </label><br>
                                                        <spring:message code="Ganancia_bruta"/>: $<label></label>MXN<br>
                                                        <spring:message code="Ganancia_Neta"/>: $<label> </label>MXN<br>
                                                    </div>
                                                </div>
                                            </form>

                                            <form action="indexDireccion.html" method="Post">
                                                <div class="panel panel-primary">
                                                    <div class="panel-heading">
                                                        <h3 class="panel-title" align="left"><spring:message code ="activosfijos"/></h3>
                                                    </div>
                                                    <div class="panel-body">
                                                        <spring:message code="Valor_actual_de_los_activos"/>: $<label></label><br>
                                                        <spring:message code="Siguiente_activo_a_renovar"/>: <label></label><br>
                                                        <spring:message code="Fecha_de_renovación"/>: <label></label><br>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                        <!-- /.col-sm-4 -->
                                        <div class="col-sm-4">
                                            <form action="indexDireccion.html" method="Post">
                                                <div class="panel panel-primary">
                                                    <div class="panel-heading">
                                                        <h3 class="panel-title" align="left"><spring:message code="Almacen"/></h3>
                                                    </div>
                                                    <div class="panel-body">
                                                        <spring:message code="Productos_en_Almacen"/>:<label> </label><br>
                                                        <spring:message code="Categoria"/> 1:<label></label><br>
                                                        <spring:message code="Categoria"/> 2:<label></label><br>
                                                        <spring:message code="Categoria"/> 3:<label></label><br>
                                                        <spring:message code="Equivalente_a"/>: $<label></label>
                                                    </div>
                                                </div>
                                            </form>

                                            <form action="indexDireccion.html" method="Post">
                                                <div class="panel panel-primary">
                                                    <div class="panel-heading">
                                                        <h3 class="panel-title" align="left"><spring:message code="Finanzas_y_Contabilidad"/></h3>
                                                    </div>
                                                    <div class="panel-body">
                                                        <spring:message code="Utilidades"/>: $<label></label><br>
                                                        <spring:message code="Deudas_equivalen_a"/>: $<label></label>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                        <!-- /.col-sm-4 -->                    
                                    </div><!-- fin de la fila-->

                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- /.container-fluid -->

                </div>
                <!-- FIN DE CONTENIDO -->

            </div>
            <!-- /#wrapper -->

            <script src="js/jquery-1.11.0.js"></script>
            <!-- Bootstrap Core JavaScript -->
            <script src="js/bootstrap.min.js"></script> 
            <script type="text/javascript" src="js/js.js"></script>
            <!-- Morris Charts JavaScript -->
            <script src="js/plugins/morris/raphael.min.js"></script>
            <script src="js/plugins/morris/morris.min.js"></script>
            <script src="js/plugins/morris/morris-data.js"></script>		
            <script type="text/javascript" src="https://www.google.com/jsapi"></script>
            <script src="js/jsDireccion.js" type="text/javascript"></script>

    </body>
</html>
