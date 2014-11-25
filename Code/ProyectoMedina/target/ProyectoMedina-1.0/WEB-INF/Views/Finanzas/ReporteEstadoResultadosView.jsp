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
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                <spring:message code="reportes"/>
                            </h1>                        
                        </div>
                    </div>        

                    <div class="row">
                        <div class="col-lg-12 text-center">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="panel panel-primary">
                                        <div class="panel-heading">
                                            <h3 class="panel-title text-left">Estado de Resultados Septiembre 2014</h3>
                                        </div>
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-lg-12 col-md-offset-3">


                                                    <div class="row">
                                                        <div class="col-md-2 col-md-offset-2">
                                                            <H4><strong><spring:message code="cuenta"/></strong></H4>
                                                        </div>
                                                        <div class="col-md-2">
                                                            <H4><strong><spring:message code="monto"/></strong></H4>
                                                        </div>  
                                                    </div>
                                                    <!-- FilaIngresos -->
                                                    <div class="row">
                                                        <div class="col-md-2 text-left">
                                                            <H4><strong><spring:message code="ingresos"/></strong></H4>
                                                        </div>
                                                    </div>
                                                    <!-- /.row -->
                                                    <!--Fila Ingporservicio -->
                                                    <div class="row">
                                                        <div class="col-md-2 text-left">
                                                            <H4><spring:message code="ingSer"/></H4>
                                                        </div>
                                                        <div class="col-md-2 col-md-offset-2 col-lg-2">
                                                            <div class="form-group input-group">
                                                                <span class="input-group-addon">
                                                                    $
                                                                </span>
                                                                <input class="form-control" type="text" value="300,000.00" disabled></input>
                                                            </div>  
                                                        </div>
                                                    </div>
                                                    <!-- /.row -->
                                                    <!-- FilaGastos -->
                                                    <div class="row">
                                                        <div class="col-md-2 text-left">
                                                            <H4><strong><spring:message code="gastos"/></strong></H4>
                                                        </div>
                                                    </div>
                                                    <!-- /.row -->
                                                    <!--Fila Gastoporsueldo -->
                                                    <div class="row">
                                                        <div class="col-md-2 text-left">
                                                            <H4><spring:message code="expSal"/></H4>
                                                        </div>
                                                        <div class="col-md-2 col-lg-2">
                                                            <div class="form-group input-group">
                                                                <span class="input-group-addon">
                                                                    $
                                                                </span>
                                                                <input class="form-control" type="text" value="45,000.00" disabled></input>
                                                            </div>  
                                                        </div>
                                                    </div>
                                                    <!-- /.row -->
                                                    <!--Fila Gastoporagua -->
                                                    <div class="row">
                                                        <div class="col-md-2 text-left">
                                                            <H4><spring:message code="expWat"/></H4>
                                                        </div>
                                                        <div class="col-md-2 col-lg-2">
                                                            <div class="form-group input-group">
                                                                <span class="input-group-addon">
                                                                    $
                                                                </span>
                                                                <input class="form-control" type="text" value="20,000.00" disabled></input>
                                                            </div>  
                                                        </div>
                                                    </div>
                                                    <!-- /.row -->
                                                    <!--Fila Gastoporluz -->
                                                    <div class="row">
                                                        <div class="col-md-2 text-left">
                                                            <H4><spring:message code="expLig"/></H4>
                                                        </div>
                                                        <div class="col-md-2 col-lg-2">
                                                            <div class="form-group input-group">
                                                                <span class="input-group-addon">
                                                                    $
                                                                </span>
                                                                <input class="form-control" type="text" value="28,200.00" disabled></input>
                                                            </div>  
                                                        </div>
                                                    </div>
                                                    <!-- /.row -->
                                                    <!--Fila Gastoporgas -->
                                                    <div class="row">
                                                        <div class="col-md-2 text-left">
                                                            <H4><spring:message code="expGas"/></H4>
                                                        </div>
                                                        <div class="col-md-2 col-lg-2">
                                                            <div class="form-group input-group">
                                                                <span class="input-group-addon">
                                                                    $
                                                                </span>
                                                                <input class="form-control" type="text" value="26,300.00" disabled></input>
                                                            </div>  
                                                        </div>
                                                    </div>
                                                    <!-- /.row -->
                                                    <!--Fila Otrosgastos -->
                                                    <div class="row">
                                                        <div class="col-md-2 text-left">
                                                            <H4><spring:message code="otExp"/></H4>
                                                        </div>
                                                        <div class="col-md-2 col-lg-2">
                                                            <div class="form-group input-group">
                                                                <span class="input-group-addon">
                                                                    $
                                                                </span>
                                                                <input class="form-control" type="text" value="26,300.00" disabled></input>
                                                            </div>  
                                                        </div>
                                                    </div>
                                                    <!-- /.row -->
                                                    <!--Fila Total -->
                                                    <div class="row">
                                                        <div class="col-md-2 text-left">
                                                            <H4><strong><spring:message code="total"/></strong></H4>
                                                        </div>
                                                        <div class="col-md-2 col-lg-2">
                                                            <div class="form-group input-group">
                                                                <span class="input-group-addon">
                                                                    <strong>$</strong>
                                                                </span>
                                                                <input class="form-control" type="text" value="145,800.00" disabled></input>
                                                            </div>  
                                                        </div>
                                                        <div class="col-md-2 col-lg-2">
                                                            <div class="form-group input-group">
                                                                <span class="input-group-addon">
                                                                    <strong>$</strong>
                                                                </span>
                                                                <input class="form-control" type="text" value="300,000.00" disabled></input>
                                                            </div>  
                                                        </div>
                                                    </div>
                                                    <!-- /.row -->
                                                    <br>
                                                    <br>
                                                    <!--Fila UtilidadNeta -->
                                                    <div class="row">
                                                        <div class="col-md-2 text-left">
                                                            <H4><strong><spring:message code="netPro"/> </strong></H4>
                                                        </div>
                                                        <div class="col-md-2 col-md-offset-1 col-lg-2">
                                                            <div class="form-group input-group">
                                                                <span class="input-group-addon">
                                                                    <strong>$</strong>
                                                                </span>
                                                                <strong><input class="form-control" type="text" value="154,200.00" disabled></input></strong>
                                                            </div>  
                                                        </div>
                                                    </div>
                                                    <!-- /.row -->

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--Fila Botones -->
                                    <div class="row">
                                        <a href="Reporte.pdf" target="_blank" class="btn btn-primary active col-md-offset-11" type="button" role="button">
                                            <spring:message code="des"/>
                                        </a>
                                    </div>
                                    <!-- /.row -->
                                </div>
                            </div>
                        </div>
                    </div><!--Fin del tag de fila-->

                </div>
                <!-- /.container-fluid -->
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script><!--NO TOCAR-->
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->
        <!-- jQuery Version 1.11.0 -->
        <script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.0.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/js.js"></script>

        <!-- Morris Charts JavaScript -->
        <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/raphael.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/morris.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/morris-data.js"></script>
</html>
