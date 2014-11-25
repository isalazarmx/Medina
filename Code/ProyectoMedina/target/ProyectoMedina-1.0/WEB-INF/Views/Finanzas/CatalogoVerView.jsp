<%-- 
    Document   : index
    Created on : Nov 13, 2014, 1:01:06 PM
    Author     : Jesus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>SAC</title>

        <!-- Bootstrap Core CSS -->
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="${pageContext.request.contextPath}/resources/css/sb-admin.css" rel="stylesheet">

        <!-- Morris Charts CSS -->
        <link href="${pageContext.request.contextPath}/resources/css/plugins/morris.css" rel="stylesheet">

        <!-- Custom Fonts -->
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
                    <a class="navbar-brand">SAC</a>
                </div>
                <!-- Top Menu Items -->
                <ul class="nav navbar-right top-nav">
                    <li class="dropdown">
                        <a href="#" onclick="noFuncional();"><i class="fa fa-envelope"></i> <b class="caret"></b></a>
                    </li>
                    <li class="dropdown">
                        <a href="#" onclick="noFuncional();"><i class="fa fa-bell"></i> <b class="caret"></b></a>
                    </li>
                    <li class="dropdown">
                        <a href="#" onclick="noFuncional();"><i class="fa fa-user"></i> Username <b class="caret"></b></a>
                    </li>
                </ul>
                <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav side-nav">
                        <li class="active">
                            <a href="${pageContext.request.contextPath}/Finanzas/index"><i class="fa fa-fw fa-usd"></i><spring:message code="finan"/></a>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#cuentas"><spring:message code="cat"/><i class="fa fa-fw fa-caret-down pull-right"></i></a>
                            <ul id="cuentas" class="collapse">
                                <li>
                                    <a href="${pageContext.request.contextPath}/Finanzas/CatalogoCuentasView"><spring:message code="nuevo"/></a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/Finanzas/CatalogoVerView"><spring:message code="buscar"/></a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#reportes"><spring:message code="reportes"/> <i class="fa fa-fw fa-caret-down pull-right"></i></a>
                            <ul id="reportes" class="collapse">
                                <li>
                                    <a href="${pageContext.request.contextPath}/Finanzas/EstadoResultadosView"><spring:message code="estadoResultados"/></a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/Finanzas/BalanceGeneralView"><spring:message code="balanceGeneral"/></a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/Finanzas/FlujoEfectivoView"><spring:message code="flujoEfectivo"/></a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#autorizacion"><spring:message code="autorizacion"/><i class="fa fa-fw fa-caret-down pull-right"></i></a>
                            <ul id="autorizacion" class="collapse">
                                <li>
                                    <a href="${pageContext.request.contextPath}/Finanzas/SeleccionAutorizacionView"><spring:message code="autorizacionSel"/></a>
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
                                <spring:message code="buscar"/>
                            </h1>
                        </div>
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-12 text-left">
                            <ul id="myTab" class="nav nav-tabs" role="tablist">
                                <li class="active"><a href="#activoCirculante" role="tab" data-toggle="tab"><spring:message code="activoCirculante"/></a></li>
                                <li><a href="#activoFijo" role="tab" data-toggle="tab"><spring:message code="activoFijo"/></a></li>
                                <li><a href="#activoFijo2" role="tab" data-toggle="tab"><spring:message code="pasivos"/></a></li>
                                <li><a href="#cuenta" role="tab" data-toggle="tab"><spring:message code="cuentasCompActivos"/></a></li>

                            </ul>
                            <div id="myTabContent" class="tab-content">
                                <div class="tab-pane fade in active" id="activoCirculante">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th><spring:message code="numero"/></th>
                                                <th><spring:message code="cuenta"/></th>
                                                <th><spring:message code="eliminar"/></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="active">
                                                <td>1001</td>
                                                <td><spring:message code="caja"/></td>                                                
                                                <td><a href="#"><i class="glyphicon glyphicon-trash" onclick="return confirmEliminarCuenta();" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr class="success">

                                                <td>1002</td>
                                                <td><spring:message code="bancos"/></td>
                                                <td><a href="#"><i class="glyphicon glyphicon-trash" onclick="return confirmEliminarCuenta();" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr class="warning">                                                
                                                <td>1003</td>
                                                <td><spring:message code="mercancias"/></td>
                                                <td><a href="#"><i class="glyphicon glyphicon-trash" onclick="return confirmEliminarCuenta();" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr class="danger">                                                
                                                <td>1004</td>
                                                <td><spring:message code="clientes"/></td>
                                                <td><a href="#"><i class="glyphicon glyphicon-trash" onclick="return confirmEliminarCuenta();" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr class="active">                                                
                                                <td>1005</td>
                                                <td><spring:message code="mercanciasTransito"/></td>
                                                <td><a href="#"><i class="glyphicon glyphicon-trash" onclick="return confirmEliminarCuenta();" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="tab-pane fade" id="activoFijo">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th><spring:message code="numero"/></th>
                                                <th><spring:message code="cuenta"/></th>
                                                <th><spring:message code="eliminar"/></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="active">
                                                <td>2001</td>
                                                <td><spring:message code="terrenos"/></td>                                                
                                                <td><a href="#"><i class="glyphicon glyphicon-trash" onclick="return confirmEliminarCuenta();" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr class="success">

                                                <td>2002</td>
                                                <td><spring:message code="edificios"/></td>
                                                <td><a href="#"><i class="glyphicon glyphicon-trash" onclick="return confirmEliminarCuenta();" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr class="warning">                                                
                                                <td>2003</td>
                                                <td><spring:message code="mobiliario"/></td>
                                                <td><a href="#"><i class="glyphicon glyphicon-trash" onclick="return confirmEliminarCuenta();" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr class="danger">                                                
                                                <td>2004</td>
                                                <td><spring:message code="equipo"/></td>
                                                <td><a href="#"><i class="glyphicon glyphicon-trash" onclick="return confirmEliminarCuenta();" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr class="active">                                                
                                                <td>2005</td>
                                                <td><spring:message code="equipoReparto"/></td>
                                                <td><a href="#"><i class="glyphicon glyphicon-trash" onclick="return confirmEliminarCuenta();" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>                                            
                                            <tr class="success">
                                                <td>2006</td>
                                                <td><spring:message code="acciones"/></td>                                                
                                                <td><a href="#"><i class="glyphicon glyphicon-trash" onclick="return confirmEliminarCuenta();" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                                <div class="tab-pane fade" id="activoFijo2">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th><spring:message code="numero"/></th>
                                                <th><spring:message code="cuenta"/></th>
                                                <th><spring:message code="eliminar"/></th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <tr class="active">
                                                <td>3001</td>
                                                <td><spring:message code="gastosOrg"/></td>                                                
                                                <td><a href="#"><i class="glyphicon glyphicon-trash" onclick="return confirmEliminarCuenta();" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr class="success">

                                                <td>3002</td>
                                                <td><spring:message code="gastosIns"/></td>
                                                <td><a href="#"><i class="glyphicon glyphicon-trash" onclick="return confirmEliminarCuenta();" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr class="warning">                                                
                                                <td>3003</td>
                                                <td><spring:message code="papeleria"/></td>
                                                <td><a href="#"><i class="glyphicon glyphicon-trash" onclick="return confirmEliminarCuenta();" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr class="danger">                                                
                                                <td>3004</td>
                                                <td><spring:message code="propaganda"/></td>
                                                <td><a href="#"><i class="glyphicon glyphicon-trash" onclick="return confirmEliminarCuenta();" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr class="active">                                                
                                                <td>3005</td>
                                                <td><spring:message code="rentas"/></td>
                                                <td><a href="#"><i class="glyphicon glyphicon-trash" onclick="return confirmEliminarCuenta();" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                                <div class="tab-pane fade" id="cuenta">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th><spring:message code="numero"/></th>
                                                <th><spring:message code="cuenta"/></th>
                                                <th><spring:message code="eliminar"/></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="active">
                                                <td>4001</td>
                                                <td><spring:message code="depAcuEdi"/></td>                                                
                                                <td><a href="#"><i class="glyphicon glyphicon-trash" onclick="return confirmEliminarCuenta();" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr class="success">

                                                <td>4002</td>
                                                <td><spring:message code="depAcuMob"/></td>
                                                <td><a href="#"><i class="glyphicon glyphicon-trash" onclick="return confirmEliminarCuenta();" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr class="warning">                                                
                                                <td>4003</td>
                                                <td><spring:message code="depAcuEquipo"/></td>
                                                <td><a href="#"><i class="glyphicon glyphicon-trash" onclick="return confirmEliminarCuenta();" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr class="danger">                                                
                                                <td>4004</td>
                                                <td><spring:message code="depAcuRep"/></td>
                                                <td><a href="#"><i class="glyphicon glyphicon-trash" onclick="return confirmEliminarCuenta();" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>
                                            <tr class="active">                                                
                                                <td>4005</td>
                                                <td><spring:message code="depAcuGas"/></td>
                                                <td><a href="#"><i class="glyphicon glyphicon-trash" onclick="return confirmEliminarCuenta();" data-toggle="modal" data-target="#myModal"></i></a></td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>


                            </div>
                        </div>
                    </div>

                </div>
                <!-- /#page-wrapper -->

            </div>
            <!-- /#wrapper -->
            <!-- jQuery Version 1.11.0 -->
            <script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.0.js"></script>

            <!-- Bootstrap Core JavaScript -->
            <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
            <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/js.js"></script>
            <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/Finanzas/Finanzas.js"></script>

            <!-- Morris Charts JavaScript -->
            <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/raphael.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/morris.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/morris-data.js"></script>
</html>