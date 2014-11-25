<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<!--Hecho por Jorge Lopez-->
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
                        <a href="#"  onclick="noFuncional()" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
                        <ul class="dropdown-menu alert-dropdown">
                            <!--<li>
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
                            </li>-->
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
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <h1 class="page-header">
                                    Redacción de Mensajes
                                </h1>                        
                            </div>
                        </div>        

                        <div class="row"><!-- Fila principal -->
                            <div class="col-lg-12 text-center"> <!-- columna principal -->
                                <div class="panel panel-default"><!-- declaracion de panel principal -->
                                    <div class="panel-body"><!-- Cuerpo del panel principal -->
                                        <!--TODO aqui abajo    Pagina en General--><br>
                                        <!--Codigo Para panel 5 o menos inputs -->
                                        <div class="panel panel-primary">
                                            <div class="panel-heading">
                                                <h3 class="panel-title" align="left">Datos de Mensaje</h3>
                                            </div>
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-lg-12 text-center">
                                                        <form>
                                                            Asunto:<input type="text" id="asunto" required><br><br>
                                                        </form>
                                                        <form>
                                                            Para:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                            <select id="destinatario" size="1" required>
                                                                <option>Compras</option>
                                                                <option>Ventas</option>
                                                                <option>Almacen</option>
                                                                <option>RH</option>
                                                                <option>Finanzas</option>
                                                                <option>Activos Fijos</option>
                                                            </select>
                                                        </form>
                                                        <br><br><br>
                                                        <form>
                                                            Escriba su mensaje:<br>
                                                            <textarea id="mensaje" rows="5" cols="50" maxlength="300"
                                                                      placeholder="Escriba aqui su mensaje" required>
                                                            </textarea>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div><!-- Fin del panel -->
                                        </div><!-- Fin del panel principal -->
                                        <!--Fin Codigo Para panel 5 o menos inputs --> 
                                    </div><!-- Fin del cuerpo del panel principal -->
                                    <form onclick="noFuncional()"><!--  onclick="vacio('mensaje'),vacio('asunto')"  -->
                                        <input class="btn btn-primary" type="submit" id="btnEnviar" value="Enviar">
                                    </form>
                                </div>
                            </div>
                        </div><!--Fin del tag de fila-->
                    </div><!-- Fin del tag del contenedor-->
                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- FIN DE CONTENIDO -->

        </div>
        <script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.0.js"></script>
        <!-- Bootstrap Core JavaScript -->
        <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script> 
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/js.js"></script>
        <!-- Morris Charts JavaScript -->
        <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/raphael.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/morris.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/morris-data.js"></script>		
        <script type="text/javascript" src="https://www.google.com/jsapi"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jsDireccion.js" type="text/javascript"></Script>
    </body>

</html>
