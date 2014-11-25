<%-- 
    Document   : index
    Created on : 13/11/2014, 11:31:48 PM
    Author     : Carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>SAC</title>

       <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">        
        <link href="${pageContext.request.contextPath}/resources/css/sb-admin.css" rel="stylesheet">        
        <link href="${pageContext.request.contextPath}/resources/css/plugins/morris.css" rel="stylesheet">       
        <link href="${pageContext.request.contextPath}/resources/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"> 
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
                    <a class="navbar-brand" href="index">SAC</a>
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
                                            <h5 class="media-heading"><strong>Sin Mensajes</strong>
                                            </h5>
                                            <p class="small text-muted"><i class="fa fa-clock-o"></i></p>
                                            <p>Sin mensajes</p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="message-footer">
                                <a href="#">Leer todos los mensajes</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
                        <ul class="dropdown-menu alert-dropdown">
                            <li>
                                <a href="#"><span class="label label-default">Sin alertas</span></a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Administrador RH <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="#"><i class="fa fa-fw fa-user"></i> Perfil</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-fw fa-envelope"></i> Mensajes</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-fw fa-gear"></i> Configuración</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="../index"><i class="fa fa-fw fa-power-off"></i> Salir</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav side-nav">
                        <li class="active">
                            <a href="index"><i class=" fa fa-fw fa-user-md"></i> Recursos Humanos</a>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#empleados"><i class="fa fa-fw fa-users"></i> Empleados <i class="fa fa-fw fa-caret-down pull-right"></i></a>
                            <ul id="empleados" class="collapse">
                                <li>
                                    <a href="NuevoUsuario">Nuevo</a>
                                </li>
                                <li>
                                    <a href="ModificarUsuario">Modifcar</a>
                                </li>
                                <li>
                                    <a href="AdministrarUsuarios">Administrar</a>
                                </li>
                                <li>
                                    <a href="HistorialUsuario">Historial</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#vacaciones"><i class="fa fa-fw fa-taxi"></i> Vacaciones <i class="fa fa-fw fa-caret-down pull-right"></i></a>
                            <ul id="vacaciones" class="collapse">
                                <li>
                                    <a href="SolicitudVacaciones">Solicitar</a>
                                </li>
                                <li>
                                    <a href="ConsultarVacaciones">Administrar</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#incapacidades"><i class="fa fa-fw fa-plus"></i> Incapacidades <i class="fa fa-fw fa-caret-down pull-right" ></i></a>
                            <ul id="incapacidades" class="collapse">
                                <li>
                                    <a href="#">Solicitar</a>
                                </li>
                                <li>
                                    <a href="#">Administar</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#reportes"><i class="fa fa-fw fa-file-text"></i> Reportes <i class="fa fa-fw fa-caret-down pull-right"></i></a>
                            <ul id="reportes" class="collapse">
                                <li>
                                    <a href="EmpleadosActuales">Empleados Actuales</a>
                                </li>
                                <li>
                                    <a href="AltaEmpleados">Altas de empleados</a>
                                </li>
                                <li>
                                    <a href="BajaEmpleados">Baja de empleados</a>
                                </li>
                                <li>
                                    <a href="Nomina">Reportes de nómina</a>
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

                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                SAC <small>Departamento de Recursos Humanos</small>
                            </h1>
                            <ol class="breadcrumb">
                                <li class="active">
                                    Bienvenido
                                </li>
                            </ol>
                            <br>
                            <br>
                            <br>
                            <div class="row">
                                <div class="col-md-offset-1 col-lg-4" align="right">
                                    <img src="../img/imagen.jpg" class="img-rounded" width="700" height="400"> 
                                    <br>
                                    <br>
                                    <br>
                                    <br>
                                </div>
                            </div>  
                        </div>
                    </div>

                </div>
            </div>
            <!-- FIN DE CONTENIDO -->

        </div>
        <!-- jQuery Version 1.11.0 -->
            <script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.0.js"></script>

            <!-- Bootstrap Core JavaScript -->
            <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/js/js.js"></script>

            <!-- Morris Charts JavaScript -->
            <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/raphael.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/morris.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/morris-data.js"></script>
            <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/RecursosHumanos/recursosh.js"></script>

    </body>

</html>

