<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib  uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
    <head>        
        <script type="text/javascript" src="https://www.google.com/jsapi"></script>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
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
                        <a href="#"  onclick="noFuncional()" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
                        <ul class="dropdown-menu alert-dropdown">
                            <!-- <li>
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
                             </li> -->
                        </ul>
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
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            <spring:message code="Charts"/>
                        </h1>                        
                    </div>
                </div>
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="container-fluid">
                        <!--<div class="row"> -->
                        <div class="col-lg-12 text-center">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <!-- /. TODO aqui abajo    Pagina en General /. -->
                                    <!--Codigo Para panel 5 o menos inputs -->
                                    <div class="col-lg-12">
                                        <div class="panel panel-default hidden">
                                            <div class="panel-heading">
                                                Line Chart Example
                                            </div>
                                            <!-- /.panel-heading -->
                                            <div class="panel-body">
                                                <div class="flot-chart">
                                                    <div class="flot-chart-content" id="flot-line-chart"></div>
                                                </div>
                                            </div>
                                            <!-- /.panel-body -->
                                        </div>
                                    </div>
                                    <!-- /.col-lg-12 -->
                                    <div class="col-lg-6 hidden">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                Pie Chart Example
                                            </div>
                                            <!-- /.panel-heading -->
                                            <div class="panel-body">
                                                <div class="flot-chart">
                                                    <div class="flot-chart-content" id="flot-pie-chart"></div>
                                                </div>
                                            </div>
                                            <!-- /.panel-body -->
                                        </div>
                                    </div>
                                    <!-- /.col-lg-6 -->
                                    <div class="col-lg-6 hidden">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                Multiple Axes Line Chart Example
                                            </div>
                                            <!-- /.panel-heading -->
                                            <div class="panel-body">
                                                <div class="flot-chart">
                                                    <div class="flot-chart-content" id="flot-line-chart-multi"></div>
                                                </div>
                                            </div>
                                            <!-- /.panel-body -->
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="panel panel-primary">
                                            <div class="panel-heading" align="Left">
                                                <spring:message code="Metas_al_día_de_hoy="/>
                                            </div>                                                
                                        </div>
                                    </div>
                                    <!-- /.panel-heading -->                                                                                                                         <div class="col-lg-4" id="chart_div2" style="width: 900px; height: 700px;"></div>

                                    <!-- /.col-lg-6 -->
                                    <div class="col-lg-6 hidden">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                Moving Line Chart Example
                                            </div>
                                            <!-- /.panel-heading -->
                                            <div class="panel-body">
                                                <div class="flot-chart">
                                                    <div class="flot-chart-content" id="flot-line-chart-moving"></div>
                                                </div>
                                            </div>
                                            <!-- /.panel-body -->
                                        </div>
                                    </div>
                                    <!--Fin Codigo Para panel 5 o menos inputs --> 
                                </div>
                                <!---------------- Fin TODO aqui abajo ------------------>
                            </div>
                        </div>
                        <!--</div>Fin del tag de fila-->
                    </div><!-- Fin del tag del contenedor-->
                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- FIN DE CONTENIDO -->
        </div>
        <script src="${pageContext.request.contextPath}/js/jquery-1.11.0.js"></script>

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
        <script src="${pageContext.request.contextPath}/resources/js/plugins/flot/flot-data.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/resources/js/plugins/flot/jquery.flot.js" type="text/javascript"></script>
    </body>

</html>
