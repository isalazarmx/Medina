<%-- 
    Document   : verClientes
    Created on : 13/11/2014, 03:31:06 PM
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

            <div id="page-wrapper">

                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                <spring:message code="cliente"></spring:message> Clientes
                            </h1>                        
                        </div>
                    </div>        

                    <div class="row">
                        <div class="col-lg-12 text-left">
                            <div class="panel panel-default">
                                <div class="container-fluid">
                                    <br>
                                    <div class="row-fluid col-md-12 col-lg-offset-0">
                                        <div class="panel panel-primary">
                                            <div class="panel-heading">
                                                <h3 class="panel-title "><spring:message code="seleccionarcliente"></spring:message>Seleccionar cliente</h3>
                                            </div> 
                                            <div class="panel-body " ><!-- Codigo del cuerpo de la aplicación**************************************************************+************************************************-->
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <table class="table table-striped custab">
                                                            <thead>
                                                            <tr>
                                                                <th><spring:message code="clave"></spring:message>Clave</th>
                                                                <th><spring:message code="nombre"></spring:message>Nombre</th>
                                                                <th><spring:message code="fechaalta"></spring:message>Fecha Alta</th>
                                                                <th class="text-center"><spring:message code="accion"></spring:message>Action</th>
                                                            </tr>
                                                            </thead>
                                                            <tr class="success">
                                                                <td>1</td>
                                                                <td>Jorge Luis Martinez Harcel</td>
                                                                <td>06/11/2014</td>
                                                                <td class="text-center"><a class='btn btn-info btn-xs' onclick="noFuncional();" href="#"><spring:message code="detalles"></spring:message>Detalles</a></td>
                                                            </tr>
                                                            <tr class="warning">
                                                                <td>2</td>
                                                                <td>Roberto Flores Reyes </td>
                                                                <td>10/12/2014</td>
                                                                <td class="text-center"><a class='btn btn-info btn-xs' onclick="noFuncional();" href="#"><spring:message code="detalles"></spring:message>Detalles</a></td>
                                                            </tr>
                                                            <tr class="danger">
                                                                <td>3</td>
                                                                <td>Alicia Garcia Espinoza</td>
                                                                <td>23/09/2014</td>
                                                                <td class="text-center"><a class='btn btn-info btn-xs' onclick="noFuncional();"  href="#"><spring:message code="detalles"></spring:message>Detalles</a> </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class=" row-fluid  col-md-12 col-lg-offset-0" >


                                        <div class="panel panel-primary">
                                            <div class="panel-heading">
                                                <h3 class="panel-title"><spring:message code="datosdelcliente"></spring:message>Datos del cliente</h3>
                                            </div>
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-md-3 col-lg-3 " align="center"> <img alt="User Pic" src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=100" class="img-circle"> </div>
                                                    <div class=" col-md-9 col-lg-9 "> 
                                                        <table class="table table-user-information">
                                                            <tbody>
                                                                <tr>
                                                                    <td><spring:message code="departamento"></spring:message>Departmento:</td>
                                                                    <td>Ventas</td>
                                                                </tr>
                                                                <tr>
                                                                    <td><spring:message code="fechaalta"></spring:message>Fecha Alta:</td>
                                                                    <td>06/23/2013</td>
                                                                </tr>
                                                                <tr>
                                                                    <td><spring:message code="cumpleaños"></spring:message>Cumpleaños:</td>
                                                                    <td>01/24/1988</td>
                                                                </tr>

                                                                <tr>
                                                                <tr>
                                                                    <td><spring:message code="genero"></spring:message>Genero:</td>
                                                                    <td>Masculino</td>
                                                                </tr>
                                                                <tr>
                                                                    <td><spring:message code="domicilio"></spring:message>Domicilio:</td>
                                                                    <td>Av. Centenario, Los Cedros</td>
                                                                </tr>
                                                                <tr>
                                                                    <td><spring:message code="email"></spring:message>Email:</td>
                                                                    <td><a href="mailto:info@support.com">info@support.com</a></td>
                                                                </tr>
                                                            <td><spring:message code="numerotelefonico"></spring:message>Numero Telefonico:</td>
                                                            <td>722-121-23-23<br>
                                                            </td>

                                                            </tr>

                                                            </tbody>
                                                        </table>
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
        </div>
        <script type="text/javascript">
            var d = new Date();
            document.getElementById('fechaVenta').value = d.getDate() + " / " + d.getUTCMonth() + " / " + d.getUTCFullYear();
        </script> 
        <script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.0.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/Ventas/ActionVentas.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/js.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
