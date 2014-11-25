<%-- 
    Document   : ProductoFabricacionView
    Created on : 13/11/2014, 10:38:42 PM
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
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                <spring:message code="nuevo"/>
                            </h1>                        
                        </div>
                    </div>        

                    <div class="row">
                        <div class="col-lg-12 text-center">


                            <div class="panel panel-default">
                                <form onSubmit="exito();">

                                    <div class="panel-body">

                                        <div class="panel panel-primary">

                                            <div class="panel-heading" align="left">
                                                <h3 class="panel-title"><spring:message code="datos"/></h3>
                                            </div>
                                            <div class="panel-body">

                                                <div class="row">

                                                    <div class="col-lg-12 text-left">



                                                        <div class="form-group" align="left">
                                                            <label><spring:message code="producto"/></label>

                                                            <select id="comboProducto" class="form-control" required>
                                                                <option selected value=0> <spring:message code="seleccProd"/></option>
                                                                <option value="1">Lap-Top</option>
                                                                <option value="2">All in One</option>
                                                                <option value="3">Desktop PC</option>
                                                                <option value="4">Server</option>
                                                                <option value="5">Switch</option>
                                                            </select>
                                                        </div>
                                                        <div class="form-group"  align="left">
                                                            <label><spring:message code="componente"/></label>

                                                            <select id="comboComponente" class="form-control" >
                                                                <option selected value=0> <spring:message code="selComp"/></option>
                                                                <option value="1">Tornillo</option>
                                                                <option value="2">Tuerca</option>
                                                                <option value="3">Monitor</option>
                                                                <option value="4">Mouse</option>
                                                                <option value="5">HDD</option>
                                                            </select>
                                                        </div>

                                                        <div class="form-group " align="left"> 
                                                            <label   ><spring:message code="cantidad"/></label>
                                                            <input type="text" class="form-control" id="cantidad" maxlength="6" placeholder="<spring:message code="cantidad"/>" onKeyPress=" return soloNumeros(event);" required>
                                                        </div>
                                                        <span class="input-group-btn"></span>
                                                        <div align="right">
                                                            <button type="submit" class="btn btn-primary" onclick="return noFuncional2();"><spring:message code="agregar"/></button>														</form>

                                                        </div>
                                                    </div>


                                                </div>

                                            </div>

                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12 text-left">
                                                <div class="table-responsive">
                                                    <table class="table table-bordered table-hover table-striped">
                                                        <thead>
                                                            <tr><th>ID</th>
                                                                <th><spring:message code="producto"/></th>
                                                                <th><spring:message code="cantReq"/></th>

                                                            </tr></thead>
                                                        <tbody>
                                                            <tr class="success">
                                                                <td>0001</td>
                                                                <td>Tornillo</td>
                                                                <td>20</td>

                                                            </tr>

                                                            <tr class="info">
                                                                <td>0002</td>
                                                                <td>Tuerca</td>
                                                                <td>32</td>

                                                            </tr>
                                                            <tr class="warning">
                                                                <td>1002</td>
                                                                <td>Monitor</td>
                                                                <td>1</td>


                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        <div align="right">
                                            <button type="submit" class="btn btn-success" onClick="return noFuncional();"><spring:message code="aceptar"/></button >
                                        </div>
                                    </div> 
                                </form>                                            
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
        <script src="../js/Proveedor/ProductoFabricacionView/ProductoFabricacionView.js"></script>

        <!-- Morris Charts JavaScript -->
        <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/raphael.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/morris.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/morris-data.js"></script>

    </body>

</html>