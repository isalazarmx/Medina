<%-- 
    Document   : ReportePorPeriodo
    Created on : 13/11/2014, 03:34:09 PM
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
            <div id="page-wrapper">  <!-- Codigo del cuerpo de la aplicación**************************************************************+************************************************-->
              
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                               <spring:message code="porperiododetiempo"></spring:message> Por periodo de tiempo
                            </h1>                        
                        </div>
                    </div>        
                    <div class="row">
                        <div class="col-lg-12 text-center">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="panel panel-primary">
                                        <div class="panel-heading" align="left">
                                            <h3 class="panel-title"><spring:message code="datosdereporte"></spring:message>Datos de Reporte</h3>
                                        </div>
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-lg-12 text-left">
                                                    <div class="form-group" align="left">
                                                        <label><spring:message code="reportedel"></spring:message>Reporte del</label> <input type="date" min="2014-10-28"  name="fechainicio" class="form-control" id="fecha"> 
                                                        <label><spring:message code="hastael"></spring:message>Hasta el </label><input type="date" name="fechafinal" min="2014-10-28" class="form-control" id="fecha1">
                                                        <label><spring:message code="delacaja"></spring:message>De la caja</label>
                                                        <select class="form-control" id="cajas" >
                                                            <option value="0"><spring:message code="seleccioneunacaja"></spring:message>Seleccione una caja</option>
                                                            <option value="1"><spring:message code="caja1"></spring:message>CAJA 1</option>
                                                            <option value="2"><spring:message code="caja2"></spring:message>CAJA 2</option>
                                                            <option value="3"><spring:message code="caja3"></spring:message>CAJA 3</option>
                                                            <option value="4"><spring:message code="caja4"></spring:message>CAJA 4</option>
                                                            <option value="TODOS"><spring:message code="todos "></spring:message>TODOS</option>
                                                        </select>
                                                    </div>
                                                </div>  
                                            </div>
                                        </div>
                                        </div>
                                    <div class="col-md-6">   
                                        <table class="table table-bordered table-hover table-striped">
                                            <thead >
                                                <tr>
                                                    <th><spring:message code="totaldeventas"></spring:message>Total de ventas</th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr class="success">
                                                    <td><spring:message code="dineroencaja"></spring:message>Dinero en caja:</td>
                                                    <td>$ 50.00 </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="col-md-6">
                                        <table class="table table-bordered table-hover table table-bordered table-responsive table-striped">
                                            <thead>
                                                <tr>
                                                    <th><spring:message code="ventas"></spring:message>Ventas</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr class="active">
                                                    <td><spring:message code="enefectivo"></spring:message>En Efectivo:</td>
                                                    <td>$ 150.00 </td>
                                                </tr>
                                                <tr class="active">
                                                    <td><spring:message code="contarjeta"></spring:message>Con Tarjeta:</td>
                                                    <td>$ 350</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <br>
                                        <br>
                                        <div align="right">
                                            <button type="submit" class="btn btn-primary" onclick='validarselect()'><spring:message code="imprimir"></spring:message>Imprimir</button>
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
