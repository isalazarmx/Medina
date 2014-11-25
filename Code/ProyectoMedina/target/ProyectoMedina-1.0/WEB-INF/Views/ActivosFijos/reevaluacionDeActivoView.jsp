<%-- 
    Document   : reevaluacionDeActivoView
    Created on : 13/11/2014, 07:38:04 AM
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
                                <spring:message code="reevaluar"/>
                            </h1>

                            <div class="col-lg-12">
                                <div class="panel panel-default">
                                    <div class="panel-body">

                                        <div class="panel panel-primary">
                                            <div class="panel-heading">
                                                <h3 class="panel-title"><spring:message code="buscar"/></h3>
                                            </div>
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-lg-12">                                                            
                                                        <form onsubmit="noFuncional();">
                                                            <div class="form-group input-group">                                
                                                                <input type="text" class="form-control" maxlength="50" placeholder="<spring:message code="buscarpornombreocodigo"/>" required>
                                                                <span class="input-group-btn">
                                                                    <button class="btn btn-default form-control" type="submit"><span class="glyphicon glyphicon-search"></span></button>
                                                                </span>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="panel-body">                                                                                       
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="table-responsive">
                                                        <table class="table table-bordered table-hover table-striped">
                                                            <thead>
                                                            <th><spring:message code="id"/></th>     
                                                            <th><spring:message code="nombre"/></th>     
                                                            <th><spring:message code="marca"/></th>    
                                                            <th><spring:message code="costo"/></th>       
                                                            <th><spring:message code="fechadeingreso"/></th>                                                        
                                                            </thead>
                                                            <tbody>
                                                                <tr class="success">
                                                                    <td>ESGH56</td>
                                                                    <td>Escritorio</td>
                                                                    <td>LEP</td>
                                                                    <td>18/10/2015</td>
                                                                    <td>$300</td>                                                                                                                                                    
                                                                </tr>
                                                                <tr class="info">
                                                                    <td>LAMPI34</td>
                                                                    <td>Lampara</td>
                                                                    <td>ELP</td>
                                                                    <td>18/11/2015</td>
                                                                    <td>$209</td>
                                                                </tr>
                                                                <tr class="warning">
                                                                    <td>COMP44</td>
                                                                    <td>Computadora</td>
                                                                    <td>CSP</td>
                                                                    <td>18/11/2015</td>
                                                                    <td>$134</td>
                                                                </tr>
                                                                <tr class="danger">
                                                                    <td>MES23</td>
                                                                    <td>Mesa</td>
                                                                    <td>BGT</td>
                                                                    <td>16/11/2015</td>
                                                                    <td>$230</td>
                                                                </tr>  
                                                            </tbody>    
                                                        </table>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>


                                    </div> 
                                    <div class="panel-body">
                                        <form>
                                            <div class="panel panel-primary">
                                                <div class="panel-heading">
                                                    <h3 class="panel-title"><spring:message code="datosdelactivo"/></h3>
                                                </div>
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <div>
                                                                <label><spring:message code="nombre"/></label>
                                                                <input class="form-control" type="text" placeholder="<spring:message code="nombre"/>" disabled>
                                                            </div>
                                                            <br>
                                                            <div>
                                                                <label for="disabledSelect"><spring:message code="costo"/></label>
                                                                <input class="form-control" id="disabledInput" type="text" placeholder="<spring:message code="costo"/>" disabled>
                                                            </div>
                                                            <br>

                                                            <fieldset disabled>
                                                                <div class="form-group">
                                                                    <label for="disabledSelect"><spring:message code="categoria"/></label> 
                                                                    <select id="disabledSelect" class="form-control">
                                                                        <option><spring:message code="categoria"/></option>
                                                                    </select> 
                                                                </div>
                                                            </fieldset>
                                                            <br>

                                                            <div>
                                                                <label for="disabledSelect"><spring:message code="id"/></label>
                                                                <input class="form-control" id="disabledInput" type="text" placeholder="<spring:message code="id"/>" disabled>
                                                            </div>
                                                            <br>

                                                            <div>
                                                                <label><spring:message code="valuacion"/></label>
                                                                <input class="form-control" placeholder="<spring:message code="valuacion"/>" maxlength="6" id="valuacion" onkeypress="return soloNumeros(event);" required>
                                                            </div>
                                                            <br>

                                                        </div>
                                                        <div class="col-lg-6">
                                                            <div>
                                                                <label><spring:message code="marca"/></label>
                                                                <input class="form-control" type="text" placeholder="<spring:message code="marca"/>" disabled>
                                                            </div>
                                                            <br>

                                                            <div>
                                                                <label for="disabledSelect"><spring:message code="fechadeingreso"/></label>
                                                                <input class="form-control" id="disabledInput" type="text" placeholder="<spring:message code="fechadeingreso"/>" disabled>
                                                            </div>
                                                            <br>

                                                            <fieldset disabled>
                                                                <div class="form-group">
                                                                    <label for="disabledSelect"><spring:message code="subcategoria"/></label> 
                                                                    <select id="disabledSelect" class="form-control">
                                                                        <option><spring:message code="subcategoria"/></option>
                                                                    </select> 
                                                                </div>
                                                            </fieldset>
                                                            <br>
                                                            <div class="form-group ">
                                                                <label class="control-label" for="inputError"><spring:message code="fechaderenovacion"/></label>
                                                                <input id="fecha" type=date class="form-control" required>
                                                            </div>
                                                            <br>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div align="right" >
                                                <button type="submit"  class="btn btn-success" onclick="Reevaluacion();"><spring:message code="aceptar"/></button>
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
