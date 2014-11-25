<%-- 
    Document   : ConsultaProductoView
    Created on : 13/11/2014, 11:54:52 PM
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
                    <li >
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

                        <!-- Page Heading -->
                        <div class="row">
                            <div class="col-lg-12">
                                <h1 class="page-header">
                                    <spring:message code="consultar"/>
                                </h1>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-lg-12 text-left">
                                <div class="panel panel-default">
                                    <div class="panel-body">

                                        <div class="panel panel-primary">
                                            <div class="panel-heading">
                                                <h3 class="panel-title"><spring:message code="consultar"/></h3>
                                            </div>

                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-lg-12 text-left">
                                                        <form onsubmit="noFuncional();">
                                                        <div class="form-group input-group">
                                                            <input class="form-control" type="text" placeholder="<spring:message code="codigonombre"/>" maxlength="50" required>
                                                            <span class="input-group-btn">
                                                                <button class="btn btn-default form-control" type="submit">
                                                                    <span class="glyphicon glyphicon-search"></span>
                                                                </button>
                                                            </span>
                                                        </div> 
                                                        </form>                                                       
                                                        <div class="form-group">
                                                            <select id="dropdown2" class="form-control"  onchange="noFuncional();">
                                                                <option><spring:message code="consultarcategoria"/></option>
                                                                <option><spring:message code="ropa"/></option>
                                                                <option><spring:message code="electronica"/></option>
                                                                <option><spring:message code="comestibles"/></option> 
                                                                <option><spring:message code="iluminacion"/></option>                                                               
                                                            </select>
                                                           
                                                        </div>
                                                    </div>   
                                                </div>
                                            </div>
                                        </div>

                                                                                    
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-lg-12 text-left">
                                                        <div class="table-responsive">
                                                            <table class="table table-bordered ">
                                                                <thead>
                                                                    <tr>                                                                       
                                                                        <th><spring:message code="nombre"/></th>
                                                                        <th><spring:message code="categoria"/></th>
                                                                        <th><spring:message code="codigo"/></th>
                                                                        <th><spring:message code="existencias"/></th>
                                                                        <th><spring:message code="minimo"/></th>
                                                                        <th><spring:message code="maximo"/></th>
                                                                        <th><spring:message code="costo"/></th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr class="success">
                                                                        
                                                                        <td>Lampara LED</td>
                                                                        <td>Iluminación</td>
                                                                        <td>LAMIL89</td>
                                                                        <td>115</td>
                                                                        <td>20</td>
                                                                        <td>200</td>
                                                                        <td>$73.57</td>


                                                                    </tr>
                                                                    <tr class="info">
                                                                        
                                                                        <td>Foco Halógeno</td>
                                                                        <td>Iluminación</td>
                                                                        <td>FIIL05</td>
                                                                        <td>54</td>
                                                                        <td>10</td>
                                                                        <td>100</td>
                                                                        <td>$25.86</td>

                                                                    </tr>
                                                                    <tr class="warning">
                                                                        
                                                                        <td>Lampara Solar</td>
                                                                        <td>Iluminación</td>
                                                                        <td>LAMIL05</td>
                                                                        <td>14</td>
                                                                        <td>10</td>
                                                                        <td>50</td>
                                                                        <td>$245.50</td>

                                                                    </tr>
                                                                    <tr class="danger">
                                                                        
                                                                        <td>Foquito</td>
                                                                        <td>Iluminación</td>
                                                                        <td>FOOO01</td>
                                                                        <td>05</td>
                                                                        <td>01</td>
                                                                        <td>10</td>
                                                                        <td>$1</td>
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
                    <!-- /.container-fluid -->                
            </div>
            <!-- /#page-wrapper -->
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
