<%-- 
    Document   : HistorialUsuario
    Created on : 13/11/2014, 11:28:05 PM
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

            <div id="page-wrapper">
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Historial de Usuarios
                            </h1>
                        </div>
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-12 text-left">
                            <ul id="myTab" class="nav nav-tabs" role="tablist">
                                <li class="active"><a href="#rh" role="tab" data-toggle="tab">Recursos Humanos</a></li>
                                <li><a href="#activos" role="tab" data-toggle="tab">Activos</a></li>
                                <li><a href="#almacen" role="tab" data-toggle="tab">Almacén</a></li>
                                <li><a href="#compras" role="tab" data-toggle="tab">Compras</a></li>
                                <li><a href="#direccion" role="tab" data-toggle="tab">Dirección</a></li>
                                <li><a href="#finanzas" role="tab" data-toggle="tab">Finanzas</a></li>
                                <li><a href="#ventas" role="tab" data-toggle="tab">Ventas</a></li> 
                            </ul>
                            <div id="myTabContent" class="tab-content">
                                <div class="tab-pane fade in active" id="rh">
                                    <table id="rhTabla" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Nombre(s)</th>
                                                <th>Apellido Paterno</th>
                                                <th>Apellido Materno</th>
                                                <th>Puesto</th>
                                                <th>Estado</th>
                                                <th>Ver detalles</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>113</td>
                                                <td>LAURA MIREYA</td>
                                                <td>GUTIERREZ</td>
                                                <td>QUINTAL</td>
                                                <td>EMPLEADO</td>
                                                <td>Alta</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>453</td>
                                                <td>GERARDO</td>
                                                <td>ARIZMENDI</td>
                                                <td>ECHEGARAY</td>
                                                <td>GERENTE</td>
                                                <td>Alta</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>354</td>
                                                <td>GUSTAVO</td>
                                                <td>SALAZAR</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td>Baja</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>785</td>
                                                <td>SOFIA</td>
                                                <td>ORTEGA</td>
                                                <td>CASTILLO</td>
                                                <td>EMPLEADO</td>
                                                <td>Alta</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>285</td>
                                                <td>ANDRES</td>
                                                <td>ARANDA</td>
                                                <td>LOPEZ</td>
                                                <td>EMPLEADO</td>
                                                <td>Baja</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>965</td>
                                                <td>MONICA ITZURI</td>
                                                <td>DELGADO</td>
                                                <td>CARRILLO</td>
                                                <td>EMPLEADO</td>
                                                <td>Alta</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>786</td>
                                                <td>JORGE ARMANDO</td>
                                                <td>MORENO</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td>Alta</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>345</td>
                                                <td>ADOLFO</td>
                                                <td>RAMOS</td>
                                                <td>SÁNCHEZ</td>
                                                <td>EMPLEADO</td>
                                                <td>Baja</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>285</td>
                                                <td>ANDRES</td>
                                                <td>ARANDA</td>
                                                <td>LOPEZ</td>
                                                <td>EMPLEADO</td>
                                                <td>Alta</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>965</td>
                                                <td>MONICA ITZURI</td>
                                                <td>DELGADO</td>
                                                <td>CARRILLO</td>
                                                <td>EMPLEADO</td>
                                                <td>Alta</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>786</td>
                                                <td>JORGE ARMANDO</td>
                                                <td>MORENO</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td>Alta</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>345</td>
                                                <td>ADOLFO</td>
                                                <td>RAMOS</td>
                                                <td>SÁNCHEZ</td>
                                                <td>EMPLEADO</td>
                                                <td>Alta</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="tab-pane fade" id="activos">
                                    <table id="activosTabla" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Nombre(s)</th>
                                                <th>Apellido Paterno</th>
                                                <th>Apellido Materno</th>
                                                <th>Puesto</th>
                                                <th>Ver detalles</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>354</td>
                                                <td>GUSTAVO</td>
                                                <td>SALAZAR</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>785</td>
                                                <td>SOFIA</td>
                                                <td>ORTEGA</td>
                                                <td>CASTILLO</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>285</td>
                                                <td>ANDRES</td>
                                                <td>ARANDA</td>
                                                <td>LOPEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>965</td>
                                                <td>MONICA ITZURI</td>
                                                <td>DELGADO</td>
                                                <td>CARRILLO</td>
                                                <td>GERENTE</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>786</td>
                                                <td>JORGE ARMANDO</td>
                                                <td>MORENO</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>345</td>
                                                <td>ADOLFO</td>
                                                <td>RAMOS</td>
                                                <td>SÁNCHEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>285</td>
                                                <td>ANDRES</td>
                                                <td>ARANDA</td>
                                                <td>LOPEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>965</td>
                                                <td>MONICA ITZURI</td>
                                                <td>DELGADO</td>
                                                <td>CARRILLO</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>786</td>
                                                <td>JORGE ARMANDO</td>
                                                <td>MORENO</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>345</td>
                                                <td>ADOLFO</td>
                                                <td>RAMOS</td>
                                                <td>SÁNCHEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="tab-pane fade" id="almacen">
                                    <table id="almacenTabla" class="table table-striped table-bordered" cellspacing="0" width="100%"">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Nombre(s)</th>
                                                <th>Apellido Paterno</th>
                                                <th>Apellido Materno</th>
                                                <th>Puesto</th>
                                                <th>Ver detalles</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>113</td>
                                                <td>LAURA MIREYA</td>
                                                <td>GUTIERREZ</td>
                                                <td>QUINTAL</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>453</td>
                                                <td>GERARDO</td>
                                                <td>ARIZMENDI</td>
                                                <td>ECHEGARAY</td>
                                                <td>GERENTE</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>354</td>
                                                <td>GUSTAVO</td>
                                                <td>SALAZAR</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>785</td>
                                                <td>SOFIA</td>
                                                <td>ORTEGA</td>
                                                <td>CASTILLO</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>965</td>
                                                <td>MONICA ITZURI</td>
                                                <td>DELGADO</td>
                                                <td>CARRILLO</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>786</td>
                                                <td>JORGE ARMANDO</td>
                                                <td>MORENO</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>345</td>
                                                <td>ADOLFO</td>
                                                <td>RAMOS</td>
                                                <td>SÁNCHEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>285</td>
                                                <td>ANDRES</td>
                                                <td>ARANDA</td>
                                                <td>LOPEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>965</td>
                                                <td>MONICA ITZURI</td>
                                                <td>DELGADO</td>
                                                <td>CARRILLO</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>786</td>
                                                <td>JORGE ARMANDO</td>
                                                <td>MORENO</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>345</td>
                                                <td>ADOLFO</td>
                                                <td>RAMOS</td>
                                                <td>SÁNCHEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="tab-pane fade" id="compras">
                                    <table id="comprasTabla" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Nombre(s)</th>
                                                <th>Apellido Paterno</th>
                                                <th>Apellido Materno</th>
                                                <th>Puesto</th>
                                                <th>Ver detalles</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>113</td>
                                                <td>LAURA MIREYA</td>
                                                <td>GUTIERREZ</td>
                                                <td>QUINTAL</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>453</td>
                                                <td>GERARDO</td>
                                                <td>ARIZMENDI</td>
                                                <td>ECHEGARAY</td>
                                                <td>GERENTE</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>354</td>
                                                <td>GUSTAVO</td>
                                                <td>SALAZAR</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>785</td>
                                                <td>SOFIA</td>
                                                <td>ORTEGA</td>
                                                <td>CASTILLO</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>285</td>
                                                <td>ANDRES</td>
                                                <td>ARANDA</td>
                                                <td>LOPEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>965</td>
                                                <td>MONICA ITZURI</td>
                                                <td>DELGADO</td>
                                                <td>CARRILLO</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>786</td>
                                                <td>JORGE ARMANDO</td>
                                                <td>MORENO</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>345</td>
                                                <td>ADOLFO</td>
                                                <td>RAMOS</td>
                                                <td>SÁNCHEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>345</td>
                                                <td>ADOLFO</td>
                                                <td>RAMOS</td>
                                                <td>SÁNCHEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="tab-pane fade" id="direccion">
                                    <table id="direccionTabla" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Nombre(s)</th>
                                                <th>Apellido Paterno</th>
                                                <th>Apellido Materno</th>
                                                <th>Puesto</th>
                                                <th>Ver detalles</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>965</td>
                                                <td>MONICA ITZURI</td>
                                                <td>DELGADO</td>
                                                <td>CARRILLO</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>786</td>
                                                <td>JORGE ARMANDO</td>
                                                <td>MORENO</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>345</td>
                                                <td>ADOLFO</td>
                                                <td>RAMOS</td>
                                                <td>SÁNCHEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>285</td>
                                                <td>ANDRES</td>
                                                <td>ARANDA</td>
                                                <td>LOPEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>965</td>
                                                <td>MONICA ITZURI</td>
                                                <td>DELGADO</td>
                                                <td>CARRILLO</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>786</td>
                                                <td>JORGE ARMANDO</td>
                                                <td>MORENO</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>345</td>
                                                <td>ADOLFO</td>
                                                <td>RAMOS</td>
                                                <td>SÁNCHEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="tab-pane fade" id="finanzas">
                                    <table id="finanzasTabla" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Nombre(s)</th>
                                                <th>Apellido Paterno</th>
                                                <th>Apellido Materno</th>
                                                <th>Puesto</th>
                                                <th>Ver detalles</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>113</td>
                                                <td>LAURA MIREYA</td>
                                                <td>GUTIERREZ</td>
                                                <td>QUINTAL</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>453</td>
                                                <td>GERARDO</td>
                                                <td>ARIZMENDI</td>
                                                <td>ECHEGARAY</td>
                                                <td>GERENTE</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>354</td>
                                                <td>GUSTAVO</td>
                                                <td>SALAZAR</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>785</td>
                                                <td>SOFIA</td>
                                                <td>ORTEGA</td>
                                                <td>CASTILLO</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>285</td>
                                                <td>ANDRES</td>
                                                <td>ARANDA</td>
                                                <td>LOPEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>965</td>
                                                <td>MONICA ITZURI</td>
                                                <td>DELGADO</td>
                                                <td>CARRILLO</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>786</td>
                                                <td>JORGE ARMANDO</td>
                                                <td>MORENO</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>345</td>
                                                <td>ADOLFO</td>
                                                <td>RAMOS</td>
                                                <td>SÁNCHEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>285</td>
                                                <td>ANDRES</td>
                                                <td>ARANDA</td>
                                                <td>LOPEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>965</td>
                                                <td>MONICA ITZURI</td>
                                                <td>DELGADO</td>
                                                <td>CARRILLO</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>786</td>
                                                <td>JORGE ARMANDO</td>
                                                <td>MORENO</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>345</td>
                                                <td>ADOLFO</td>
                                                <td>RAMOS</td>
                                                <td>SÁNCHEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="tab-pane fade" id="ventas">
                                    <table id="ventasTabla" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Nombre(s)</th>
                                                <th>Apellido Paterno</th>
                                                <th>Apellido Materno</th>
                                                <th>Puesto</th>
                                                <th>Ver detalles</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>113</td>
                                                <td>LAURA MIREYA</td>
                                                <td>GUTIERREZ</td>
                                                <td>QUINTAL</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>453</td>
                                                <td>GERARDO</td>
                                                <td>ARIZMENDI</td>
                                                <td>ECHEGARAY</td>
                                                <td>GERENTE</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>354</td>
                                                <td>GUSTAVO</td>
                                                <td>SALAZAR</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>785</td>
                                                <td>SOFIA</td>
                                                <td>ORTEGA</td>
                                                <td>CASTILLO</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>285</td>
                                                <td>ANDRES</td>
                                                <td>ARANDA</td>
                                                <td>LOPEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>965</td>
                                                <td>MONICA ITZURI</td>
                                                <td>DELGADO</td>
                                                <td>CARRILLO</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>786</td>
                                                <td>JORGE ARMANDO</td>
                                                <td>MORENO</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>345</td>
                                                <td>ADOLFO</td>
                                                <td>RAMOS</td>
                                                <td>SÁNCHEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>285</td>
                                                <td>ANDRES</td>
                                                <td>ARANDA</td>
                                                <td>LOPEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>965</td>
                                                <td>MONICA ITZURI</td>
                                                <td>DELGADO</td>
                                                <td>CARRILLO</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>786</td>
                                                <td>JORGE ARMANDO</td>
                                                <td>MORENO</td>
                                                <td>MONJARAS</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr>
                                                <td>345</td>
                                                <td>ADOLFO</td>
                                                <td>RAMOS</td>
                                                <td>SÁNCHEZ</td>
                                                <td>EMPLEADO</td>
                                                <td><a href="#"><i class="glyphicon glyphicon-search" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Modal -->
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                <h4 class="modal-title" id="myModalLabel">Historial del usuario actual</h4>
                            </div>
                            <div class="modal-body">
                                <table class="table table-striped">
                                    <tbody>
                                        <tr>
                                            <td>Departamento</td>
                                            <td>Finanzas</td>
                                        </tr>
                                        <tr>
                                            <td>Jefe inmediato</td>
                                            <td>GERARDO	ARIZMENDI ECHEGARAY</td>
                                        </tr>
                                        <tr>
                                            <td>Puesto</td>
                                            <td>Empleado</td>
                                        </tr>
                                        <tr>
                                            <td>Nombre(s)</td>
                                            <td>LAURA MIREYA</td>
                                        </tr>
                                        <tr>
                                            <td>Apellido Paterno</td>
                                            <td>GUTIERREZ</td>
                                        </tr>
                                        <tr>
                                            <td>Apellido Materno</td>
                                            <td>QUINTAL</td>
                                        </tr>
                                        <tr>
                                            <td>RFC</td>
                                            <td>CUPU800825569</td>
                                        </tr>
                                        <tr>
                                            <td>Fecha de contratación</td>
                                            <td>05/06/2013</td>
                                        </tr>
                                        <tr>
                                            <td>Fecha de baja</td>
                                            <td>18/09/2014</td>
                                        </tr>
                                        <tr>
                                            <td>Motivo de la baja</td>
                                            <td>No cumplir con los requerimientos de productividad</td>
                                        </tr>
                                        <tr>
                                            <td>Periodos de Vacaciones</td>
                                            <td>01/01/2014 - 05/04/2014</td>
                                        </tr>
                                        <tr>
                                            <td>Incapacidades</td>
                                            <td>Ninguna</td>
                                        </tr>
                                        <tr>
                                            <td>RFC</td>
                                            <td>CUPU800825569</td>
                                        </tr>
                                        <tr>
                                            <td>Sexo</td>
                                            <td>Femenino</td>
                                        </tr>
                                        <tr>
                                            <td>Fecha de Nacimiento</td>
                                            <td>12/12/1981</td>
                                        </tr>
                                        <tr>
                                            <td>Calle</td>
                                            <td>Carranza</td>
                                        </tr>
                                        <tr>
                                            <td>Colonia</td>
                                            <td>Centro</td>
                                        </tr>
                                        <tr>
                                            <td>Ciudad</td>
                                            <td>Toluca</td>
                                        </tr>
                                        <tr>
                                            <td>Código Postal</td>
                                            <td>50478</td>
                                        </tr>
                                        <tr>
                                            <td>Número</td>
                                            <td>104</td>
                                        </tr>
                                        <tr>
                                            <td>Población</td>
                                            <td>Estado de México</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                            </div>
                        </div>
                    </div>
                </div>
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
