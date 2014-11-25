<%-- 
    Document   : BusquedaProveedorView
    Created on : 13/11/2014, 10:36:40 PM
    Author     : Pablo RosHdz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en"><head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>SAC</title>

        <!-- Bootstrap Core CSS -->
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" />



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
                            <a href="index"><i class=" fa fa-fw fa-user-md"></i> <spring:message code="proveedores"/></a>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#empleados"> <spring:message code="proveedor"></spring:message>
                                <i class="fa fa-fw fa-caret-down"></i>
                            </a>
                            <ul id="empleados" class="collapse">
                                <li>
                                    <a href="AltaProveedorView"><spring:message code="nuevo"/></a>
                                </li>
                                <li>
                                    <a href="ModificarProveedorView"><spring:message code="modificar"/></a>
                                </li>
                                <li>
                                    <a href="BusquedaProveedorView"><spring:message code="Buscar"/></a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#vacaciones"> <spring:message code="productos"/>
                                <i class="fa fa-fw fa-caret-down"></i>
                            </a>
                            <ul id="vacaciones" class="collapse">
                                <li>
                                    <a href="ProductoFabricacionView"><spring:message code="prodFab"/></a>
                                </li>

                            </ul>
                        </li>



                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>
            <!-- CONTENIDO -->
            <div id="page-wrapper">
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header"> <spring:message code="provBusc"/>
                               
                            </h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12 text-left">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="panel panel-primary">
                                        <div class="panel-heading">
                                            <h3 class="panel-title"><spring:message code="buscar"/></h3>
                                        </div>
                                        <div class="panel-body">
                                            <div class="row">


                                                <div class="col-lg-12 text-left">
                                                    <form>


                                                        <div class="form-group">
                                                            <div class="form-group input-group">
                                                                <input type="text" class="form-control" id="nombProv" name="Nombre Proveedor" placeholder="<spring:message code="nombres"/>" autocomplete="on" required/>
                                                                <span class="input-group-btn">
                                                                    <button type="submit" class="btn btn-primary" onclick="noFuncional();">
                                                                        <i class="fa fa-search"></i>
                                                                    </button>
                                                                </span>

                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="row">
                                        <div class="col-lg-12 text-left">

                                            <div class="panel panel-primary">
                                                <div class="panel-heading">
                                                    <h3 class="panel-title"><spring:message code="dat"/></h3>
                                                </div>


                                                <div class="panel-body">
                                                    <div class="col-lg-6 text-left">

                                                        <div class="form-group">
                                                            <label><spring:message code="razonSoc"/></label>
                                                            <input class="form-control" id="disabledInput" type="text" placeholder="<spring:message code="razonSoc"/>" disabled="">
                                                        </div>
                                                        <div class="form-group">
                                                            <label><spring:message code="direccion"/></label>
                                                            <input class="form-control" id="disabledInput" type="text" placeholder="<spring:message code="direccion"/>" disabled="">
                                                        </div>  
                                                        <div class="form-group">
                                                            <label><spring:message code="codigo_postal"/></label>
                                                            <input class="form-control" id="disabledInput" type="text" placeholder="<spring:message code="codigo_postal"/>" disabled="">
                                                        </div>
                                                        <div class="form-group">
                                                            <label><spring:message code="telefono"/></label>
                                                            <input class="form-control" id="disabledInput" type="text" placeholder="<spring:message code="telefono"/>" disabled="">
                                                        </div>
                                                    </div>



                                                    <div class="col-lg-6 text-left">
                                                        <div class="form-group">
                                                            <label><spring:message code="nombres"/></label>
                                                            <input class="form-control" id="disabledInput" type="text" placeholder="<spring:message code="nombres"/>" disabled="">
                                                        </div>  
                                                        <div class="form-group">
                                                            <label><spring:message code="apellido_paterno"/></label>
                                                            <input class="form-control" id="disabledInput" type="text" placeholder="<spring:message code="apellido_paterno"/>" disabled="">
                                                        </div>
                                                        <div class="form-group">
                                                            <label><spring:message code="apellido_materno"/></label>
                                                            <input class="form-control" id="disabledInput" type="text" placeholder="<spring:message code="apellido_materno"/>" disabled="">
                                                        </div>
                                                        <div class="form-group">
                                                            <label><spring:message code="e-mail"/></label>
                                                            <input class="form-control" id="disabledInput" type="text" placeholder="<spring:message code="e-mail"/>" disabled="">
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>


                                            <div class="panel panel-primary">
                                                <div class="panel-heading">
                                                    <h3 class="panel-title"><spring:message code="connDat"/></h3>
                                                </div>
                                                <div class="panel-body">
                                                    <div class="col-lg-6 text-left">

                                                        <div class="form-group">
                                                            <label>IP</label>
                                                            <input disabled="" class="form-control" id="disabledInput" type="text" placeholder="IP">
                                                        </div>
                                                    </div>




                                                    <div class="col-lg-6 text-left">
                                                        <div class="form-group">
                                                            <label><spring:message code="comPort"/></label>
                                                            <input disabled="" class="form-control" id="disabledInput" type="text" placeholder="<spring:message code="comPort"/>">
                                                        </div>  
                                                    </div>
                                                </div>

                                            </div>








                                            <!-- FIN DE CONTENIDO -->



                                        </div>
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
        <script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.0.js" rel="stylesheet" />

    </body>

</html>
