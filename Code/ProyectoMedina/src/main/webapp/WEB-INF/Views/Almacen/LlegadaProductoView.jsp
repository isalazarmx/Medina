<%-- 
    Document   : LlegadaProductoView
    Created on : 13/11/2014, 11:55:05 PM
    Author     : Eddy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://www.springframework.org/tags" prefix="spring"%>
﻿<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
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


        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

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
                    <a class="navbar-brand" href="index.jsp">SAC</a>
                </div>
                <!-- Top Menu Items -->
                <ul class="nav navbar-right top-nav">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" onclick="noFuncional();"><i class="fa fa-envelope"></i> <b class="caret"></b></a>
                    
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" onclick="noFuncional();"><i class="fa fa-bell"></i> <b class="caret"></b></a>                        
                    </li>
                    <li>
                        <a href="#" onclick="noFuncional();"><i class="fa fa-user"></i> Username <b class="caret"></b></a>                        
                    </li>
                </ul>
                <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav side-nav">
                        <li class="active">
                            <a href="index.jsp"><i class="glyphicon glyphicon-barcode"></i> &nbsp;<spring:message code="almacen"/></a>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#demo"><spring:message code="productos"/> <i class="fa fa-fw fa-caret-down"></i></a>
                            <ul id="demo" class="collapse">
                               <li>
                                    <a href="AltaProductoView.html"><i></i><spring:message code="nuevo"/></a>
                                </li>
                                <li>
                                    <a href="ConsultaProductoView.html"><i></i><spring:message code="consultar"/></a>
                                </li>
                                <li>
                                    <a href="LlegadaProductoView.html"><i></i><spring:message code="llegadas"/></a>
                                </li>
                                <li>
                                    <a href="ModificaProductoView.html"><i></i><spring:message code="modificar"/></a>
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
                                    <spring:message code="llegadas"/>
                                </h1>                        
                            </div>
                        </div>  


                        <div class="row">
                            <div class="col-lg-12 text-left">
                                <div class="panel panel-default">
                                    <div class="panel-body">                                        
                                        <!--> <!-->                                                               
                                        <div class="panel panel-primary">

                                            <div class="panel-heading">
                                                <h3 class="panel-title"><spring:message code="buscarproducto"/></h3>
                                            </div>
                                            
                                            <div class="panel-body">
                                                <div class="row">
                                                <div class="col-lg-12">
                                                    <form onsubmit="noFuncional();">
                                                    <div class="form-group input-group">
                                
                                                        <input type="text" class="form-control" maxlength="50"placeholder="<spring:message code="nombrecodigo"/>" required>
                                                        <span class="input-group-btn">
                                                            <button class="btn btn-default form-control" type="submit"><span class="glyphicon glyphicon-search"></span></button>
                                                        </span>
                                                    </div>
                                                </form>
                                                </div>
                                            </div>

                                        </div>
                                    
                                    </div>
                                        <form onsubmit="return confirmarLlegadas('dropdown4');">
                                        <div class="panel panel-primary">

                                            <div class="panel-heading">
                                                <h3 class="panel-title"><spring:message code="datos"/></h3>
                                            </div>


                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-lg-12 text-left">

                                                        <div class="form-group ">
                                                            <label class="control-label"><spring:message code="nombre"/></label>
                                                            <input id='inputDisable' class="form-control"  maxlength="50" placeholder="<spring:message code="nombre"/>" onkeypress="return soloTexto(event);" required disabled >
                                                        </div>
                                                                                                                <div class="form-group ">
                                                            <label class="control-label" for="inputError"><spring:message code="cantidad"/></label>
                                                            <input id="inpCant" class="form-control" maxlength="6" placeholder="<spring:message code="cantidad"/>" onkeypress="return validaDecimales(event,'inpCant');" required>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="control-label" for="inputError"><spring:message code="unidad"/></label>
                                                            <select id="dropdown4" class="form-control" submit> 
                                                                <option><spring:message code="seleccioneunidad"/> </option> 
                                                                <option><spring:message code="cajas"/></option>
                                                                <option><spring:message code="kilos"/></option>
                                                                <option><spring:message code="pieza"/></option>
                                                                <option><spring:message code="toneladas"/></option>
                                                                <option><spring:message code="lote"/></option>                                   

                                                            </select>
                                                        </div>
                                                        <div class="form-group ">
                                                            <label class="control-label" for="inputError"><spring:message code="observaciones"/></label>

                                                            <textarea class="form-control" maxlength="1000" rows="3" placeholder="<spring:message code="observaciones"/>" required></textarea>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div align="right">

                                            <button type="submit" class="btn btn-success"><spring:message code="aceptar"/></button>                                            
                                    </div>
                                    </form>
                                </div>
                            </div>                
                        </div><!--Fin del tag de fila-->
                        <!-- /.container-fluid -->

                    </div>
                    <!-- /#page-wrapper -->
                </form>
                `            </div>
        </div>
       <!-- /#wrapper -->

        <script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.0.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/js.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/Almacen/finanzas.js"></script>

        <!-- Morris Charts JavaScript -->
        <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/raphael.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/morris.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/morris-data.js"></script>

    </body>

</html>
