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

        <script type='text/javascript' src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>

        <script type="text/javascript">
            $(document).ready(function () {
                $("select[name=dia]").change(function () {
                    $('input[name=valor1]').val($(this).val());
                });
                $("select[name=mes]").change(function () {
                    $('input[name=valor2]').val($(this).val());
                });
                $("select[name=anio]").change(function () {
//                    alert($('select[name=anio]').val());
                    $('input[name=valor3]').val($(this).val());
                });
            });
        </script>

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
                                            <p class="small text-muted"><i class="fa fa-clock-o"></i> Hoy a las 4:32 PM</p>
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
                                            <p class="small text-muted"><i class="fa fa-clock-o"></i> Antier a las 11:45 AM</p>
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
                                            <p class="small text-muted"><i class="fa fa-clock-o"></i> Ayer a las 4:32 PM</p>
                                            <p>Se solicita su presencia el dia de...</p>
                                        </div>
                                    </div>
                                </a>
                            </li>>
                            <li class="message-footer">
                                <a href="historial.html">Ver todos los mensajes</a>
                            </li>
                            <li class="message-footer">
                                <a href="edicionNotificaciones.html">Enviar un mensaje</a>
                            </li>
                        </ul>
                    </li>
                    <!--nuevo panel -->


                    <!--fin panel -->



                    <li class="dropdown">
                        <a href="#" onclick="noFuncional()" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
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

                srdtcfyvgubhnijmokp,lñ
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

                        <div class="row ">
                            <div style="width:100%; margin:0 auto;">
                                <h1 class="page-header">
                                    Historial de notificaciones
                                </h1>                        
                            </div>
                        </div>        
                        <div style="width:100%; margin:0 auto;">
                            <div class="col-lg-12 text-center">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover table-striped">
                                        <thead>
                                            <tr>
                                                <th>Asunto</th>
                                                <th>Remitente</th>
                                                <th>Vista Previa de Contenido</th>
                                                <th>Fecha</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="success" onclick="noFuncional()">
                                                <td>Fiesta de fin de mes</td>
                                                <td>Compras</td>
                                                <td>FIESTA!...</td>
                                                <td>15 Nov</td>
                                            </tr>
                                            <tr class="info"  onclick="noFuncional()">
                                                <td>Presupuesto</td>
                                                <td>Almacen</td>
                                                <td>Por medio del siguiente se quiere solicitar...</td>
                                                <td>10 Nov</td>
                                            </tr>
                                            <tr class="warning"  onclick="noFuncional()">
                                                <td>Urgencia</td>
                                                <td>Activos Fijos</td>
                                                <td>Se solicita su presencia el dia de...</td>
                                                <td>8 Nov</td>
                                            </tr>
                                            <tr class="danger"  onclick="noFuncional()">
                                                <td>Falta de personal</td>
                                                <td>Almacen</td>
                                                <td>Es urgente que se revisen los siguientes...</td>
                                                <td>7 Nov</td>
                                            </tr>
                                            <tr class="success"  onclick="noFuncional()">
                                                <td>Presupuesto para mantenimiento</td>
                                                <td>Activos Fijos</td>
                                                <td>Por tercera vez solicitamos que se asigne...</td>
                                                <td>7 Nov</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <i class="fa fa-arrow-circle-left" onclick="noFuncional()"></i>
                                ...
                                <i class="fa fa-arrow-circle-right" onclick="noFuncional()"></i>
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
        <script type="${pageContext.request.contextPath}/resources/text/javascript" src="js/js.js"></script>
        <!-- Morris Charts JavaScript -->
        <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/raphael.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/morris.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/morris-data.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jsDireccion.js" type="text/javascript"></script>

    </body>

</html>
