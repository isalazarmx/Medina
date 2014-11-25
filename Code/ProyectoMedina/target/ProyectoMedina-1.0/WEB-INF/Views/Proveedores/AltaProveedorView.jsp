<%-- 
    Document   : AltaProveedorView
    Created on : 13/11/2014, 10:35:20 PM
    Author     : Pablo RosHdz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
    <head>


        <title>SAC</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">


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
                            <h1 class="page-header">
                                <spring:message code="nuevo"></spring:message>
                            </h1>
                        </div>
                    </div>
                            <form method="POST" action="${pageContext.request.contextPath}/Proveedores/guardarProveedor" >
                        <!-- /.row -->
                        <div class="row">
                            <div class="col-lg-12 text-left">
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <div class="panel panel-primary">
                                            <div class="panel-heading">
                                                <h3 class="panel-title"> <spring:message code="datosFisc" /></h3>
                                            </div>
                                            <div class="panel-body">
                                                <div class="col-lg-12 text-left">
                                                    <div class="form-group">
                                                        <label><spring:message code="razonSoc"/></label>
                                                        <input class="form-control" placeholder="<spring:message code="razonSoc"/>" onkeypress="return soloTexto(event);" maxlength="40" name="razonSocial" required="required">
                                                    </div>
                                                </div>

                                                <div class="col-lg-12 text-left">
                                                    <div class="form-group">
                                                        <label>RFC</label>
                                                        <input class="form-control"  placeholder="RFC" name="rFC" maxlength="20" required>
                                                    </div>  
                                                </div>
                                            </div>

                                        </div>

                                        <div class="row">
                                            <div class="col-lg-12 text-left">
                                                <div class="panel panel-primary">
                                                    <div class="panel-heading">
                                                        <h3 class="panel-title"><spring:message code="refDat"/></h3>
                                                    </div>
                                                    <div class="panel-body">
                                                        <div class="col-lg-6 text-left">
                                                            <div class="form-group">
                                                                <label><spring:message code="calle"/></label>
                                                                <input class="form-control" name="calle" placeholder="<spring:message code="calle"/>" onkeypress="return soloTexto(event);"  maxlength="30" required="required">
                                                            </div>  
                                                            <div class="form-group">
                                                                <label><spring:message code="col"/></label>
                                                                <input class="form-control" name="colonia" placeholder="<spring:message code="col"/>" onkeypress="return soloTexto(event);"  maxlength="20" required>
                                                            </div>  
                                                            <div class="form-group">
                                                                <label><spring:message code="numInt"/></label>
                                                                <input class="form-control" name="numInt" id="numInt"  placeholder="<spring:message code="numInt"/>"  maxlength="4" onkeypress="return soloNumeros(event);" required>
                                                            </div>
                                                        </div>


                                                        <div class="col-lg-6 text-left">
                                                            <div class="form-group">
                                                                <label><spring:message code="codigo_postal"/></label>
                                                                <input class="form-control" name="codigoPostal"  placeholder="<spring:message code="codigo_postal"/>"  maxlength="5" onkeypress="return soloNumeros(event);" required>
                                                            </div>  
                                                            <div class="form-group">
                                                                <label><spring:message code="numExt"/></label>
                                                                <input class="form-control" name="numExt" placeholder="<spring:message code="numExt"/>" onkeypress="return soloNumeros(event);" maxlength="4" required>
                                                            </div>


                                                            <div class="text-left col-span-6">
                                                                <label><spring:message code="poblacion"/></label>
                                                                <div class="form-group" >
                                                                    <select id="Dropdown1" class="form-control" name="poblacion">
                                                                        <option>Aguascalientes</option>
                                                                        <option>Baja California</option>
                                                                        <option>Baja California Sur</option>
                                                                        <option>Campeche</option>
                                                                        <option>Coahuila</option>
                                                                        <option>Colima</option>
                                                                        <option>Chiapas</option>
                                                                        <option>Chihuahua</option>
                                                                        <option>Distrito Federal</option>
                                                                        <option>Durango</option>
                                                                        <option>Guanajuato</option>
                                                                        <option>Guerrero</option>
                                                                        <option>Hidalgo</option>
                                                                        <option>Jalisco</option>
                                                                        <option>Mexico</option>
                                                                        <option>Michoacán</option>
                                                                        <option>Morelos</option>
                                                                        <option>Nayarit</option>
                                                                        <option>Nuevo León</option>
                                                                        <option>Oaxaca</option>
                                                                        <option>Puebla</option>
                                                                        <option>Querétaro</option>
                                                                        <option>Quintana Roo</option>
                                                                        <option>San Luis Potosí</option>
                                                                        <option>Sinaloa</option>
                                                                        <option>Sonora</option>
                                                                        <option>Tabasco</option>
                                                                        <option>Tamaulipas</option>
                                                                        <option>Tlaxcala</option>
                                                                        <option>Veracruz</option>
                                                                        <option>Yucatán</option>
                                                                        <option>Zacatecas</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>     
                                        </div>





                                        <div class="row">
                                            <div class="col-lg-12 text-left">
                                                <div class="panel panel-primary">
                                                    <div class="panel-heading">
                                                        <h3 class="panel-title"><spring:message code="contDat"/></h3>
                                                    </div>
                                                    <div class="panel-body">
                                                        <div class="col-lg-6 text-left">
                                                            <div class="form-group">
                                                                <label><spring:message code="nombres"/></label>
                                                                <input class="form-control" name="nombre" placeholder="<spring:message code="nombres"/>"  maxlength="15" onkeypress="return soloTexto(event);" required>
                                                            </div>
                                                            <div class="form-group">
                                                                <label><spring:message code="apellido_paterno"/></label>
                                                                <input class="form-control" name="aPaterno"  placeholder="<spring:message code="apellido_paterno"/>"  maxlength="15" onkeypress="return soloTexto(event);" required>
                                                            </div> 
                                                            <div class="form-group">
                                                                <label><spring:message code="apellido_materno"/></label>
                                                                <input class="form-control" name="aMaterno" placeholder="<spring:message code="apellido_materno"/> " maxlength="15" onkeypress="return soloTexto(event);" required>
                                                            </div>
                                                            <div class="form-group">
                                                                <label><spring:message code="telefono"/></label>
                                                                <input class="form-control" id="Telefono" name="telefono" placeholder="<spring:message code="telefono"/>"  minlength="10" maxlength="10" onkeypress="return soloNumeros();" required>
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-6 text-left">
                                                            <div class="form-group">
                                                                <label><spring:message code="e-mail"/></label>
                                                                <input class="form-control" name="email" type="<spring:message code="e-mail"/>" placeholder="E-mail"  maxlength="20" required>
                                                            </div>
                                                            <div class="form-group">
                                                                <label>IP</label>
                                                                <input class="form-control" id="IP" placeholder="IP"   name="ip" maxlength="20" required> 
                                                            </div>
                                                            <div class="form-group">
                                                                <label><spring:message code="comPort"/></label>
                                                                <input class="form-control" name="puertoComu" placeholder="<spring:message code="comPort"/>"  maxlength="4" onkeypress="return soloNumeros(event);" required>
                                                            </div>  
                                                        </div>
                                                    </div>
                                                </div>
                                                <div align="right">

                                                    <button type="submit" onclick="ValidateIPaddress(IP);" class="btn btn-success"><spring:message code="aceptar"/></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </form>
                            </div>



                        </div> 


                        <!-- FIN DE CONTENIDO -->

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

                </body>

                </html>

                 <script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.0.js" rel="stylesheet" />
                <script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
                <!--<script type="text/javascript" charset="UTF-8"
                         src="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js">-->

                <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/js.js"></script>
                <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/Proveedor/AltaView/AltaView.js"></script>
                </body>
                </html>
                <!-- /.row -->
