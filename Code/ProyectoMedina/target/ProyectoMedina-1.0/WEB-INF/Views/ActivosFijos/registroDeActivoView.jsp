<%-- 
    Document   : registroDeActivoView
    Created on : 13/11/2014, 07:38:42 AM
    Author     : Monse
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://www.springframework.org/tags" prefix="spring"%>
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
                                <spring:message code="nuevo"/>                               
                            </h1>
                            <div class="col-lg-12">
                                <div class="panel panel-default">
                                    <div class="panel-body">                                                                                
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="table-responsive">
                                                        <table class="table table-bordered table-hover table-striped">
                                                            <thead>
                                                            <th><spring:message code="nombre"/></th>     
                                                            <th>Cantidad a Registrar</th>    
                                                            <th><spring:message code="marca"/></th>       
                                                            <th><spring:message code="costo"/></th>   
                                                            <th><spring:message code="fechadeingreso"/></th>                                                         
                                                            </thead>
                                                            <tbody>
                                                                <tr class="success">
                                                                    <td>Escritorio</td>
                                                                    <td>10</td>
                                                                    <td>LEP</td>
                                                                    <td>$300</td> 
                                                                    <td>18/10/2013</td>                                                                                                                                                                                                                       
                                                                </tr>
                                                                <tr class="info">
                                                                    <td>Lampara</td>
                                                                    <td>10</td>
                                                                    <td>ELP</td>
                                                                    <td>$209</td>
                                                                    <td>18/11/2013</td>                                                                    
                                                                </tr>
                                                                <tr class="warning">
                                                                    <td>Computadora</td>
                                                                    <td>10</td>
                                                                    <td>CSP</td>
                                                                    <td>$134</td>
                                                                    <td>18/11/2013</td>                                                                    
                                                                </tr>
                                                                <tr class="danger">
                                                                    <td>Mesa</td>
                                                                    <td>10</td>
                                                                    <td>BGT</td>
                                                                    <td>$230</td>
                                                                    <td>16/11/2013</td>                                                                    
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>                                       

                                    </div>
                                    <div class="panel-body">
                                        <form onsubmit="return Registro('categoria', 'subcategoria');">
                                            <div class="panel panel-primary">
                                                <div class="panel-heading">
                                                    <h3 class="panel-title"><spring:message code="datosdelactivo"/></h3>
                                                </div>
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <div>
                                                                <label for="disabledSelect"><spring:message code="nombre"/></label>
                                                                <input class="form-control" id="nombre" type="text" placeholder="<spring:message code="nombre"/>" disabled>
                                                            </div>
                                                            <br>
                                                            <div>
                                                                <label for="disabledSelect"><spring:message code="costo"/></label>
                                                                <input class="form-control" id="costo" type="text" placeholder="<spring:message code="costo"/>" disabled>
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
                                                                <label for="disabledSelect"><spring:message code="id"/></label>
                                                                <input class="form-control" id="disabledInput" type="text" placeholder="<spring:message code="id"/>" disabled>
                                                            </div>
                                                            <br>                                                              

                                                        </div>
                                                        <div class="col-lg-6">
                                                            <div>
                                                                <label for="disabledSelect"><spring:message code="marca"/></label>
                                                                <input class="form-control" id="disabledInput" type="text" placeholder="<spring:message code="marca"/>" disabled>
                                                            </div>
                                                            <br>

                                                            <div>
                                                                <label for="disabledSelect"><spring:message code="fechadeingreso"/></label>
                                                                <input class="form-control" id="disabledInput" type="text" placeholder="dd/mm/aaaa" disabled>
                                                            </div>

                                                            <br>

                                                            <div>
                                                                <label><spring:message code="subcategoria"/></label> 
                                                                <select class="form-control" id="subcategoria">
                                                                    <option><spring:message code="seleccioneunasubcategoria"/></option>
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
                                                                <label for="disabledSelect"><spring:message code="cantidadaregistrar"/></label>
                                                                <input class="form-control" id="disabledInput" type="text" placeholder="<spring:message code="cantidadaregistrar"/>" disabled>
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
                            </div>
                        </div>                         
                    </div>

                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

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