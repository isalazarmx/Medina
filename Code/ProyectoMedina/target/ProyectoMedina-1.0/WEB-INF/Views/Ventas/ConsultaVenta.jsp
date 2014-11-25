<%-- 
    Document   : ConsultaVenta
    Created on : 13/11/2014, 03:42:19 PM
    Author     : Salvadorjr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>SAC</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--<link href="../../css/bootstrap.min.css" rel="stylesheet">-->
        <!-- Custom CSS and JavaScript de Bootstrap CDN-->
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/sb-admin.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/morris.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/mainVentas.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    </head>
    <body>
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
                    <a class="navbar-brand" href="index">SAC</a>
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
                            <a href="index"><i class="glyphicon glyphicon-home"></i> &nbsp; VENTAS</a>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#demo">Ventas&nbsp;<i class="fa fa-fw fa-caret-down"></i></a>
                            <ul id="demo" class="collapse">
                                <li>
                                    <a href="AltaVentas">Alta Venta</a>
                                </li>
                                <li>
                                    <a href="ConsultaVenta">Consultar Ventas</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#demo2">Clientes &nbsp;<i class="fa fa-fw fa-caret-down"></i></a>
                            <ul id="demo2" class="collapse">
                                <li>
                                    <a href="AltaClientes">&nbsp; Alta Cliente</a>
                                </li>
                                <li>
                                    <a href="verClientes">&nbsp; Ver Clientes</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#demo3">Facturas &nbsp; <i class="fa fa-fw fa-caret-down"></i></a>
                            <ul id="demo3" class="collapse">
                                <li>
                                    <a href="ConsultarFactura">&nbsp; Ver Facturas</a>
                                </li>
                                <li>
                                    <a href="RealizarFactura">&nbsp; Realizar Factura</a>
                                </li>
                            </ul>
                        </li>                       
                        <li>
                            <a href="CatalogoProductos">Catalogo De Productos</a>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#demo6">Ordenes de Venta &nbsp;<i class="fa fa-fw fa-caret-down"></i></a>
                            <ul id="demo6" class="collapse">
                                <li>
                                    <a href="OrdenVentaAceptada">&nbsp; Aceptadas</a>
                                </li>
                                <li>
                                    <a href="OrdenVentaPendiente">&nbsp; Por evaluar</a>
                                </li>
                                <li>
                                    <a href="OrdenVentaRechazada">&nbsp;Rechazadas</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#demo5">Reportes de Venta &nbsp;<i class="fa fa-fw fa-caret-down"></i></a>
                            <ul id="demo5" class="collapse">
                                <li>
                                    <a href="ReportePorDia">&nbsp; Por dia</a>
                                </li>
                                <li>
                                    <a href="ReportePorPeriodo">&nbsp; Por Periodo de Tiempo</a>
                                </li>
                                <li>
                                    <a href="GraficoVentas">&nbsp;Graficas de ventas</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="comisionEmpleados">Comisiones</a>
                        </li>           
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>

            <div id="page-wrapper">  <!-- Codigo del cuerpo de la aplicación**************************************************************+************************************************-->
               
              <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Consultar
                            </h1>                        
                        </div>
                    </div>        
                    <div class="row">
                        <div class="col-lg-12 text-center">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="panel panel-primary">
                                        <div class="panel-heading" align="left">
                                            <h3 class="panel-title">Datos de busqueda</h3>
                                        </div>
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-lg-12 text-left">
                                                    <div class="form-group" align="left">
                                                        <label>No.Ticket</label>
                                                        <input type="text"  placeholder="No. Ticket" class="form-control" maxlength="8" onkeypress="return soloNumeros(event);">
                                                    </div>
                                                </div>
                                                <div class="col-lg-12 text-left">
                                                    <div class="form-group">
                                                        <label>Fecha</label>
                                                        <input type="date" id="fecha" class="form-control" min="2014-10-30">
                                                    </div>
                                                </div>
                                                <div class="col-lg-12 text-left">
                                                    <div class="form-group">
                                                        <label>Caja</label>
                                                        <select class="form-control" id="cajas" name ='selectcaja'>
                                                            <option value="0">Seleccione una caja</option>
                                                            <option value="1">Caja 1</option>
                                                            <option value="2">Caja 2</option>
                                                            <option value="3">Caja 3</option>
                                                            <option value="4">Caja 4</option>
                                                            <option value="TODOS">Caja 5</option>
                                                        </select>
                                                    </div>
                                                </div> 
                                                <div class="col-lg-12 text-left">   
                                                    <div class="form-group">
                                                        <label>Empleado</label>
                                                        <input type="text" placeholder="Empleado" class="form-control" onkeypress="return soloNumeros(event);" maxlength="8">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                <div class="pull-right">
                                    <button type="submit" class="btn btn-success">Aceptar</button>
                                </div>
                            </div>
                        </div> 

                        <div class="row" id="block-br"><br><br><br><br><br></div>
                    </div>
                </div>
            </div>
        </div>
            </div>
        <script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.0.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/Ventas/ActionVentas.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/js.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
        <script type="text/javascript">
        var d = new Date();
        document.getElementById('fechaVenta').value = d.getDate() + " / " + d.getUTCMonth() + " / " + d.getUTCFullYear();
        </script> 
    </body>
</html>