<%-- 
    Document   : AltaVentas
    Created on : 13/11/2014, 03:28:23 PM
    Author     : Salvadorjr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://www.springframework.org/tags" prefix="spring"%>
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
                                Venta Nueva
                            </h1>                        
                        </div>
                    </div>        
                    <div class="row-fluid">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title ">Datos Venta </h3>
                            </div> 
                            <div class="panel-body " >
                                <div class="container-fluid">
                                    <div class="row">
                                        <!-- panel preview -->
                                        <div class="col-sm-12">

                                            <div class="panel">
                                                <div class="panel-body form-horizontal payment-form">
                                                    <label for="concept" class=" control-label">Còdigo del producto</label>
                                                    <div class="form-group">
                                                        <div class="col-sm-12">
                                                            <input type="text" id="claveProducto" placeholder="Còdigo del producto" class="form-control" id="concept" onkeypress="return soloNumeros(event);" name="concept">
                                                        </div>
                                                    </div>    
                                                    <label for="date" class="control-label">Fecha de la venta</label>
                                                    <div class="form-group">

                                                        <div class="col-sm-12">
                                                            <input type="date" id="fechaVenta" class="form-control" id="date" name="fecha" disabled>
                                                        </div>
                                                    </div>   
                                                    <div class="form-group">
                                                        <div class="col-sm-12 text-right">
                                                            <button type="button" class="btn btn-success" onclick="agregarVenta()">
                                                                Aceptar
                                                            </button>
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
                    <div class="panel-body">  
                        <div class="row "  > 
                            <div class="col-lg-12 text-left">
                                <div class="table-responsive" >
                                    <table class="table table-bordered custab">
                                        <thead>
                                            <tr>
                                                <th>Clave</th>
                                                <th>Nombre</th>
                                                <th>Descripcion</th>
                                                <th>Costo</th>
                                                <th>Cantidad</th>
                                            </tr>
                                        </thead>
                                        <tbody id="tablaVentas"  >
                                            <tr class="success"> 
                                            </tr>
                                        </tbody> <!-- preview content goes here-->
                                    </table>
                                </div>                            
                            </div>
                        </div>
                    </div>       
                    <div class="row-fluid text-right">
                        <div class="col-xs-9">
                            <h4>Total: <strong><span class="preview-total"></span></strong></h4>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-xs-2">
                            <legend class="col-lg-12"></legend>
                            <button type="button" class="btn btn-success" onclick="noFuncional()">Aceptar</button>
                            <button type="button" class="btn btn-primary " onclick="noFuncional()">Limpiar</button>
                        </div>                
                    </div>
                    <br>
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