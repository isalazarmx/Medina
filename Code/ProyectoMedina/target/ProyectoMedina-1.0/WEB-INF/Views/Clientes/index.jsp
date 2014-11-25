<%-- 
    Document   : index
    Created on : 13/11/2014, 11:32:24 PM
    Author     : Behto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
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
                    <a class="navbar-brand" href="index.html">SAC</a>
                </div>
                <!-- Top Menu Items -->
                <ul class="nav navbar-right top-nav">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" onClick="return noFuncional();"><i class="fa fa-envelope"></i> <b class="caret"></b></a>
                        <!--   <ul class="dropdown-menu message-dropdown">
                               <li class="message-preview">
                                   <a href="#">
                                       <div class="media">
                                           <span class="pull-left">
                                               <img class="media-object" src="http://placehold.it/50x50" alt="">
                                           </span>
                                                                                   
                                           <div class="media-body">
                                               <h5 class="media-heading"><strong>Nuevo Mensaje</strong>
                                               </h5>
                                               <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                               <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                           </div> 
                                       </div>
                                   </a>
                               </li>
                               <li class="message-footer">
                                   <a href="#">Leer todos los mensajes</a>
                               </li>
                           </ul>  -->
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" onClick="return noFuncional();"><i class="fa fa-bell"></i> <b class="caret"></b></a>
                        <!--   <ul class="dropdown-menu alert-dropdown">
                               <li>
                                   <a href="#">Alerta <span class="label label-default">Nueva Alerta</span></a>
                               </li>
                               <li>
                                   <a href="#">Alerta <span class="label label-primary">Nueva Alerta</span></a>
                               </li>
                               <li>
                                   <a href="#">Alerta <span class="label label-success">Nueva Alerta</span></a>
                               </li>
                               <li>
                                   <a href="#">Alerta <span class="label label-info">Nueva Alerta</span></a>
                               </li>
                               <li>
                                   <a href="#">Alerta <span class="label label-warning">Nueva Alerta</span></a>
                               </li>
                               <li>
                                   <a href="#">Alerta <span class="label label-danger">Nueva Alerta</span></a>
                               </li>
                               <li class="divider"></li>
                               <li>
                                   <a href="#">View All</a>
                               </li>
                           </ul> -->
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" onClick="return noFuncional();"><i class="fa fa-user"></i> Username <b class="caret"></b></a>
                        <!-- <ul class="dropdown-menu">
                             <li>
                                 <a href="#"><i class="fa fa-fw fa-user"></i> Perfil</a>
                             </li>
                             <li>
                                 <a href="#"><i class="fa fa-fw fa-envelope"></i> Mensajes</a>
                             </li>
                             <li>
                                 <a href="#"><i class="fa fa-fw fa-gear"></i> Configuración</a>
                             </li>
                             <li class="divider"></li>
                             <li>
                                 <a href="#"><i class="fa fa-fw fa-power-off"></i> Salir</a>
                             </li>
                         </ul>  -->
                    </li>
                </ul>
                <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav side-nav">
                        <li class="active">
                            <a href="index.html"><i class=" fa fa-fw fa-user-md"></i> <spring:message code="clientes"/></a>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#empleados" ><spring:message code="clientes"/><i class="fa fa-fw fa-caret-down pull-right"></i></a>
                            <ul id="empleados" class="collapse">
                                <li>
                                    <a href="AltaClienteView.html" ><spring:message code="nuevo"/></a>
                                </li>
                                <li>
                                    <a href="ModificarClienteView.html" ><spring:message code="modificar"/></a>
                                </li>
                                <li>
                                    <a href="BuscarClienteView.html" ><spring:message code="buscar"/></a>
                                </li>
                                <!--<li>
                                       <a href="BusClienteView.html">Consultar cliente prueva****</a>
                                   </li>-->
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
                                SAC <small ><spring:message code="departamento_cliente"/></small>
                            </h1>
                            <ol class="breadcrumb">
                                <li class="active" >
                                    <spring:message code="bienvenido"/>
                                </li>
                            </ol>
                            <br>
                            <br>
                            <br>
                            <div class="row">
                                <div class="col-md-offset-1 col-lg-4">
                                    <!--<img src="img/inicio.jpg" class="img-rounded">-->
                                    <img src="${pageContext.request.contextPath}/resources/image/ini.jpg" class="img-rounded" height="400px" width="700px">
                                    <br>
                                    <br>
                                    <br>
                                    <br>
                                </div>
                            </div>  
                        </div>
                    </div>
                </div>
            </div>
        </div>    

        <!-- FIN DE CONTENIDO -->



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
