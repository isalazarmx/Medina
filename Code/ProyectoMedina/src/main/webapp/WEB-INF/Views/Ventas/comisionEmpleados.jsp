<%-- 
    Document   : comisionEmpleados
    Created on : 13/11/2014, 03:33:17 PM
    Author     : Salvadorjr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>SAC</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <!--<link href="../../css/bootstrap.min.css" rel="stylesheet">-->
        <!-- Custom CSS and JavaScript de Bootstrap CDN-->
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/sb-admin.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/morris.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/mainVentas.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    </head>
     <div id="wrapper">
          <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp">SAC</a>
                </div>
                <!-- Top Menu Items -->
                <ul class="nav navbar-right top-nav">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" onclick="noFuncional();" data-toggle="dropdown"><i class="fa fa-envelope"></i> <b class="caret"></b></a>

                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" onclick="noFuncional();" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" onclick="noFuncional();" data-toggle="dropdown"><i class="fa fa-user"></i> Username <b class="caret"></b></a>
                    </li>
                </ul>
                <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav side-nav">
                        <li class="active">
                            <a href="index.jsp"><i class="glyphicon glyphicon-home"></i> &nbsp; <spring:message code="ventas"></spring:message>VENTAS</a>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#demo"><spring:message code="ventas"></spring:message>Ventas&nbsp;<i class="fa fa-fw fa-caret-down"></i></a>
                            <ul id="demo" class="collapse">
                                <li>
                                    <a href="AltaVentas.jsp"><spring:message code="altaventa"></spring:message>Alta Venta</a>
                                </li>
                                <li>
                                    <a href="ConsultaVenta.jsp"><spring:message code="consultarventas "></spring:message>Consultar Ventas</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#demo2"><spring:message code="cliente "></spring:message>Clientes &nbsp;<i class="fa fa-fw fa-caret-down"></i></a>
                            <ul id="demo2" class="collapse">
                                <li>
                                    <a href="AltaClientes.jsp">&nbsp; <spring:message code="altacliente"></spring:message>Alta Cliente</a>
                                </li>
                                <li>
                                    <a href="verClientes.jsp">&nbsp; <spring:message code="verclientes "></spring:message>Ver Clientes</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#demo3"> <spring:message code="facturas"></spring:message>Facturas &nbsp; <i class="fa fa-fw fa-caret-down"></i></a>
                            <ul id="demo3" class="collapse">
                                <li>
                                    <a href="ConsultarFactura.jsp">&nbsp; <spring:message code="verfacturas"></spring:message>Ver Facturas</a>
                                </li>
                                <li>
                                    <a href="RealizarFactura.jsp">&nbsp;<spring:message code="realizarfactura"></spring:message> Realizar Factura</a>
                                </li>
                            </ul>
                        </li>                       
                        <li>
                            <a href="CatalogoProductos.jsp"><spring:message code="catalogodeproductos"></spring:message>Catalogo De Productos</a>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#demo6"><spring:message code="ordenesdeventa "></spring:message>Ordenes de Venta &nbsp;<i class="fa fa-fw fa-caret-down"></i></a>
                            <ul id="demo6" class="collapse">
                                <li>
                                    <a href="OrdenVentaAceptada.jsp">&nbsp; <spring:message code="aceptadas"></spring:message>Aceptadas</a>
                                </li>
                                <li>
                                    <a href="OrdenVentaPendiente.jsp">&nbsp; <spring:message code="porevaluar"></spring:message> Por evaluar</a>
                                </li>
                                <li>
                                    <a href="OrdenVentaRechazada.jsp">&nbsp; <spring:message code="rechazadas"></spring:message>Rechazadas</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#demo5"><spring:message code="reportesdeventas "></spring:message>Reportes de Venta &nbsp;<i class="fa fa-fw fa-caret-down"></i></a>
                            <ul id="demo5" class="collapse">
                                <li>
                                    <a href="ReportePorDia.jsp">&nbsp;<spring:message code="pordia"></spring:message> Por dia</a>
                                </li>
                                <li>
                                    <a href="ReportePorPeriodo.jsp">&nbsp; <spring:message code="porperiododetiempo"></spring:message>Por Periodo de Tiempo</a>
                                </li>
                                <li>
                                    <a href="GraficoVentas.jsp">&nbsp;<spring:message code="graficasdeventas"></spring:message>Graficas de ventas</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="comisionEmpleados.jsp"><spring:message code="comisiones"></spring:message>Comisiones</a>
                        </li>           
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>
            <div id="page-wrapper"><!-- Codigo del cuerpo de la aplicación**************************************************************+************************************************-->


                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Comisiones
                            </h1>                        
                        </div>
                    </div>        
                    <div class="row">
                        <div class="col-lg-12 text-center">
                            <div class="panel panel-default">
                                <h4 align="left">
                                    <spring:message code="porcentaje"></spring:message>Porcentaje de comisiones de los empleados del departamento de ventas por mes:
                                </h4>
                                <div class="panel-body">
                                    <div class="panel panel-primary">
                                        <div class="panel-heading" align="left">
                                            <h3 class="panel-title"><spring:message code="datospersonales "></spring:message>Datos Personale</h3>
                                        </div>
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-lg-12 text-left">
                                                    <div class="form-group" align="left">
                                                        <div class="panel-body">
                                                            <div class="container col-md-11">
                                                                <br>
                                                                <span class="label label-danger  ">Enrique Gomez Perez</span>
                                                                <br>
                                                                <br>
                                                                <div class="progress">
                                                                    <div class="progress-bar progress-bar-striped active"  role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                                                    </div>
                                                                    <span class="progress-completed">80%</span>
                                                                </div>
                                                                <span class="label label-danger">Gibran Hernandez Mendoza</span>
                                                                <br>
                                                                <br>
                                                                <div class="progress">
                                                                    <div class="progress-bar progress-bar-striped active"  role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                                                    </div>
                                                                    <span class="progress-completed">60%</span>
                                                                </div>
                                                                <span class="label label-danger ">Roberto Hernandez Mendoza</span>
                                                                <br>
                                                                <br>
                                                                <div class="progress">
                                                                    <div class="progress-bar progress-bar-striped active"  role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 23%">
                                                                    </div>
                                                                    <span class="progress-completed">23%</span>
                                                                </div>
                                                                <span class="label label-danger  ">Daniel Mendez Zaragoza</span>
                                                                <br>
                                                                <br>
                                                                <div class="progress">
                                                                    <div class="progress-bar progress-bar-striped active"  role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
                                                                    </div>
                                                                    <span class="progress-completed">45%</span>
                                                                </div>
                                                            </div> 

                                                        </div>                           
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div align="Right">
                                        <a href="#" id="employeeMonth" onclick="displayBlockEmployee()" class="btn btn-primary"><spring:message code="enviar "></spring:message>Enviar</a>
                                    </div>
                                    <div class="row-fluid col-md-offset-1" id="block-employee" style="display:none;">
                                        <div class="row user-menu-container square col-md-11">
                                            <div class="col-md-7 user-details">
                                                <div class="row coralbg white">
                                                    <div class="col-md-6 no-pad">
                                                        <div class="user-pad">
                                                            <h3>Enrique Gomez Peres</h3>
                                                            <h4 class="white"><i class="fa fa-check-circle-o"></i><spring:message code="felicitaciones "></spring:message> Felicitaciones</h4>
                                                            <h4 class="white"><i class="fa fa-twitter"></i><spring:message code="empleadodelmes"></spring:message>Empleado del mes</h4>

                                                        </div>
                                                    </div>
                                                    <div class="col-md-6 no-pad">
                                                        <div class="user-image">
                                                            <img src="../img/employee.jpg" class="img-responsive thumbnail">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row overview">
                                                    <div class="col-md-4 user-pad text-center">
                                                        <h3><spring:message code="ventas"></spring:message>VENTAS</h3>
                                                        <h4>80%</h4>
                                                    </div>
                                                    <div class="col-md-4 user-pad text-center">
                                                        <h3><spring:message code="departamento"></spring:message>DEPARTAMENTO</h3>
                                                        <h4>Ventas</h4>
                                                    </div>
                                                    <div class="col-md-4 user-pad text-center">
                                                        <h3><spring:message code="periodo"></spring:message>PERIODO</h3>
                                                        <h4>Octubre</h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-1 user-menu-btns">
                                                <div class="btn-group-vertical square" id="panel-botones">
                                                    <a href="#" class="btn btn-block active">
                                                        <i class="fa fa-bell-o fa-3x"></i>
                                                    </a>
                                                    <a href="#" class="btn">
                                                        <i class="fa fa-envelope-o fa-3x"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="col-md-4 user-menu user-pad">
                                                <div class="user-menu-content active">
                                                    <h3>
                                                       <spring:message code="empleadodelmesanterior "></spring:message> Empleado del mes anterior
                                                    </h3>
                                                    <ul class="user-menu-list">
                                                        <li>
                                                            <h4><i class="fa fa-user coral"></i> Andrea Velazquez Delgado</h4>
                                                        </li>
                                                        <li>
                                                            <h4><i class="fa fa-user coral"></i> Ventas:65%</h4>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="user-menu-content">
                                                    <h3>
                                                        <spring:message code="cumpleañosdelmes "></spring:message> Cumpleaños del Mes
                                                    </h3>
                                                    <ul class="user-menu-list">
                                                        <li>
                                                            <h4>Carmen Mondragon Valdez <small class="coral"><i class="fa fa-clock-o"></i> 26/10/2014</small></h4>
                                                        </li>
                                                        <li>
                                                            <h4>Kevin Garcia Peña <small class="coral"><i class="fa fa-clock-o"></i> 25/10/2014</small></h4>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>

                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.0.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/Ventas/ActionVentas.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/js.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    </body>
</html>