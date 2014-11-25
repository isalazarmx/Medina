<%-- 
    Document   : solicitudDeActivoView
    Created on : 13/11/2014, 07:39:24 AM
    Author     : Monse
--%>
<%@taglib  uri="http://www.springframework.org/tags" prefix="spring"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" onclick="noFuncional();"><i class="fa fa-envelope"></i> <b class="caret"></b></a>                        
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" onclick="noFuncional();"><i class="fa fa-bell"></i> <b class="caret"></b></a>                        
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" onclick="noFuncional();" data-toggle="dropdown"><i class="fa fa-user"></i> Username <b class="caret"></b></a>                        
                    </li>
                </ul>
                <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav side-nav">
                        <li class="active">
                            <a href="index"><i class="fa fa-fw fa-building"></i><spring:message code="activosfijos"/></a>
                        </li>
                        <li>                        
                            <a href="javascript:;" data-toggle="collapse" data-target="#demo"><spring:message code="activofijo"/><i class="fa fa-fw fa-caret-down"></i></a>
                            <ul id="demo" class="collapse">
                                <li>
                                    <a href="registroDeActivoView"><spring:message code="nuevo"/></a>
                                </li>

                                <li>
                                    <a href="bajaDeActivoView"><spring:message code="borrar"/></a>
                                </li>
                                <li>
                                    <a href="solicitudDeActivoView"><spring:message code="solicitar"/></a>
                                </li>
                                <li>
                                    <a href="reevaluacionDeActivoView"><spring:message code="reevaluar"/></a>
                                </li>

                                <li>
                                    <a href="informacionDeActivoView"><spring:message code="buscar"/></a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>
            <!-- /#page-wrapper -->
            <div id="page-wrapper">

                <div class="container-fluid">
                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                <spring:message code="solicitar"/>
                            </h1>

                            <div class="col-lg-12">
                                <div class="panel panel-default">
                                    <div class="panel-body">   
                                        <form onsubmit="return Solicitud('categoria', 'subcategoria');">
                                            <div class="panel panel-primary">                                                 
                                                <div class="panel-heading">
                                                    <h3 class="panel-title"><spring:message code="datosdelactivo"/></h3>
                                                </div>
                                                <div class="panel-body">
                                                    <div class="row">                                                    
                                                        <div class="col-lg-12 text-left">
                                                            <div>
                                                                <label><spring:message code="nombre"/></label>
                                                                <input class="form-control" type="text" placeholder="<spring:message code="nombre"/>" id="nombre" onkeypress="return soloTexto(event);" maxlength="30" required>
                                                            </div>
                                                            <br>
                                                            <div>
                                                                <label><spring:message code="marca"/></label>
                                                                <input class="form-control" type="text" placeholder="<spring:message code="marca"/>" id="marca" maxlength="30" required>
                                                            </div>
                                                            <br>
                                                            <div>
                                                                <label><spring:message code="categoria"/></label> 
                                                                <select class="form-control" id="categoria">
                                                                    <option><spring:message code="seleccioneunacategoria"/></option>
                                                                    <option>Equipo electrico</option>
                                                                    <option>Equipo de estante</option>
                                                                    <option>Equipo de computo</option>
                                                                    <option>Instalaciones</option>
                                                                    <option>Medios de transporte</option>
                                                                    <option>Construcciones</option>
                                                                </select>
                                                            </div>
                                                            <br>
                                                            <div>
                                                                <label><spring:message code="seleccioneunasubcategoria"/></label> 
                                                                <select class="form-control" id="subcategoria">
                                                                    <option><spring:message code="seleccioneunasubcategoria" /></option>
                                                                    <option>-Equipo electrico-</option>
                                                                    <option>Iluminacion</option>
                                                                    <option>Sonido</option>
                                                                    <option>Refrigeradores</option>
                                                                    <option>Herramientas</option>
                                                                    <option>Maquinaria</option>
                                                                    <option>Otros</option>
                                                                    <option>-Equipo de estante-</option>
                                                                    <option>Anaqueles</option>
                                                                    <option>Mostradores</option>
                                                                    <option>Utileria compra</option>
                                                                    <option>Maquinaria</option>
                                                                    <option>Otros</option>
                                                                    <option>-Equipo de computo-</option>
                                                                    <option>Computadoras</option>
                                                                    <option>Impresoras</option>
                                                                    <option>Cajas registradoras</option>
                                                                    <option>Lectores codigo</option>
                                                                    <option>Scanner</option>
                                                                    <option>Otros</option>
                                                                    <option>-Instalaciones-</option>
                                                                    <option>-Medios de transporte-</option>
                                                                    <option>Camiones de carga</option>
                                                                    <option>Otros</option>
                                                                    <option>-Construcciones-</option>
                                                                </select>
                                                            </div> 
                                                            <br>
                                                            <div>
                                                                <label><spring:message code="unidadesasolicitar" /></label> 
                                                                <input class="form-control" type="text" placeholder="<spring:message code="unidades" />" id="cantidad" onkeypress="return soloNumeros(event);" maxlength="2" required>
                                                            </div>                                                            
                                                        </div>
                                                    </div>
                                                </div>                                                 
                                            </div>
                                            <div align="right">
                                                <button type="submit" class="btn btn-success" ><spring:message code="aceptar"/></button>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="panel-body">
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!-- /#wrapper -->

        <!-- jQuery Version 1.11.0 -->
        <script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.0.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/js.js"></script>

        <!-- Morris Charts JavaScript -->
        <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/raphael.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/morris.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/morris-data.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/Activos/ActivosF/combos.js"></script>



    </body>

</html>
