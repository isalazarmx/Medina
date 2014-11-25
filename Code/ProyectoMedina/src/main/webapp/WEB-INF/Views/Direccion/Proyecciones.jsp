<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html>
<html lang="en">

    <head>

        <script type="text/javascript" src="https://www.google.com/jsapi"></script>
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
                                <a href="#">
                                    <div class="media">
                                        <span class="pull-left">
                                            <img class="media-object" src="http://placehold.it/50x50" alt="">
                                        </span>
                                        <div class="media-body">
                                            <h5 class="media-heading"><strong>Fiesta de fin de mes</strong>
                                            </h5>
                                            <p class="small text-muted"><i class="fa fa-clock-o"></i> <spring:message code="Hoy_a_las"/> 4:32 PM</p>
                                            <p>FIESTA!...</p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="message-preview">
                                <a href="#">
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
                                </a>
                            </li>
                            <li class="message-preview">
                                <a href="#">
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
                                </a>
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
                        <a href="#" onclick="noFuncional()"class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
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
                            <a href="javascript:;" data-toggle="collapse" data-target="#demo">Estadísticas<i class="fa fa-fw fa-caret-down"></i></a>
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
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <h1 class="page-header">
                                    <spring:message code="Proyecciones"/>
                                </h1>                        
                            </div>
                        </div>

                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title" align="left"><spring:message code="Proyecciones_de_Ventas"/></h3>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12 text-center">
                                        <div class="form-group" align="Left">
                                            <label><spring:message code="periodo"/>:</label>
                                            <form onclick="noFuncional()">
                                                <select class="form-control" id="periodoProyeccion">
                                                    <option><spring:message code="Seleccione_Periodo"/></option>
                                                    <option><spring:message code="Diario"/></option>
                                                    <option><spring:message code="Semanal"/></option>
                                                    <option><spring:message code="Mensual"/></option>
                                                    <option><spring:message code="Anual"/></option>
                                                </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-12">
                            <div class="col-lg-6">
                                <div class="table-responsive">
                                    <form>
                                        <table class="table table-bordered table-hover table-striped">
                                            <thead><!-- Cabecera de la tabla -->
                                                <tr>
                                                    <th><spring:message code="Producto"/></th>
                                                    <th><spring:message code="Objetivo"/></th>
                                                    <th><spring:message code="Porcentaje_completado"/></th>
                                                    <th><spring:message code="Productos_Vendidos"/></th>
                                                </tr>
                                            </thead>
                                            <tbody><!-- Cuerpo de la tabla -->
                                                <tr  class="success">
                                                    <td><spring:message code="Producto"/> 1</td>
                                                    <td>1265</td>
                                                    <td>32.3%</td>
                                                    <td>1234</td>
                                                </tr>
                                                <tr class="info">
                                                    <td><spring:message code="Producto"/> 2</td>
                                                    <td>261</td>
                                                    <td>33.3%</td>
                                                    <td>234.12</td>
                                                </tr>
                                                <tr class="warning">
                                                    <td><spring:message code="Producto"/> 3</td>
                                                    <td>665</td>
                                                    <td>21.3%</td>
                                                    <td>16.34</td>
                                                </tr>
                                                <tr class="danger">
                                                    <td><spring:message code="Producto"/> 4</td>
                                                    <td>9516</td>
                                                    <td>89.3%</td>
                                                    <td>1644.43</td>
                                                </tr>
                                                <tr class="success">
                                                    <td><spring:message code="Producto"/> 5</td>
                                                    <td>23</td>
                                                    <td>34.3%</td>
                                                    <td>23.52</td>
                                                </tr>
                                            </tbody>
                                        </table><!-- Fin de la tabla -->
                                        <!-- grafica de barras -->

                                        <!--Fin de la grafica de barras -->
                                    </form><!-- Fin de la forma -->
                                </div><!-- Fin del estilo de la tabla -->
                            </div><!-- Fin de la columna -->
                            <div class="col-lg-4" id="chart_div" style="width: 500px; height: 300px;"></div>
                        </div>
                    </div>

                </div><!-- Fin de la fila -->

            </div><!-- Fin del panel -->
        </div><!-- Fin del contenedor -->

        <!-- /.container-fluid -->

        <!-- FIN DE CONTENIDO -->

        <!-- /#wrapper -->

        <!-- jQuery Version 1.11.0 -->

        <script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.0.js"></script>    
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/t1.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script> 
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/js.js"></script>
        <!-- Morris Charts JavaScript -->
        <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/raphael.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/morris.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/morris-data.js"></script>		
        <script type="text/javascript" src="https://www.google.com/jsapi"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jsDireccion.js" type="text/javascript"></script>

    </body>

</html>
