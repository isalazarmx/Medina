<%-- 
    Document   : ModificarClienteView
    Created on : 13/11/2014, 11:33:00 PM
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
                            <a href="index.html"><i class=" fa fa-fw fa-user-md"></i><spring:message code="clientes"/></a> 
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#empleados"><spring:message code="clientes"/><i class="fa fa-fw fa-caret-down pull-right"></i></a>
                            <ul id="empleados" class="collapse">
                                <li>
                                    <a href="AltaClienteView.html"><spring:message code="nuevo"/></a> 
                                </li>
                                <li>
                                    <a href="ModificarClienteView.html"><spring:message code="modificar"/></a> 
                                </li>
                                <li>
                                    <a href="BuscarClienteView.html"><spring:message code="buscar"/></a> 
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
                <!--- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                <spring:message code="modificar"/>
                            </h1> 
                        </div>
                    </div>        

                    <div class="row">
                        <div class="col-lg-12 text-left">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <!--TODO aqui abajo    Pagina en General--><br>
                                    <!--Codigo Para panel 5 o menos inputs -->
                                    <!-- ###########PANEL 2 ######################################################## -->
                                    <div class="panel panel-primary">
                                        <div class="panel-heading">
                                            <h3 class="panel-title"><spring:message code="buscar"/></h3> 
                                        </div>
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-lg-12 text-left">                                                  
                                                    <!-- ################################################################### -->
                                                    <form onsubmit="noFuncional();">
                                                        <div class="form-group input-group">
                                                            <input class="form-control" type="text" maxlength="50" placeholder="<spring:message code="nombre"/>" required>
                                                            <span class="input-group-btn">
                                                                <button class="btn btn-default form-control" type="submit">
                                                                    <span class="glyphicon glyphicon-search"></span>
                                                                </button>
                                                            </span>
                                                        </div>
                                                    </form>														

                                                    <!-- ################################################################### -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- ########### FIN PANEL 2 ######################################################## -->




                                    <!-- ###########PANEL 1 ######################################################## -->
                                    <form onsubmit="return confirmModificaciones();">  <!-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
                                        <div class="panel panel-primary">
                                            <div class="panel-heading">
                                                <h3 class="panel-title"><spring:message code="datos_personales"/></h3> 
                                            </div>
                                            <div class="panel-body">
                                                <div class="row">
                                                    <!-- ################################################################### -->
                                                    <div class="col-lg-6 text-left">
                                                        <div class="form-group">
                                                            <label><spring:message code="nombre"/></label> 
                                                            <input class="form-control" placeholder="<spring:message code="nombre"/>"  maxlength="50" onkeypress="return soloTexto(event);" required>
                                                        </div>
                                                        <div class="form-group">
                                                            <label><spring:message code="apellido_paterno"/></label> 
                                                            <input class="form-control" placeholder="<spring:message code="apellido_paterno"/>"  maxlength="50" onkeypress="return soloTexto(event);" required>
                                                        </div> 
                                                        <div class="form-group">
                                                            <label><spring:message code="apellido_materno"/></label> 
                                                            <input class="form-control" placeholder="<spring:message code="apellido_materno"/>"  maxlength="50" onkeypress="return soloTexto(event);" required>
                                                        </div>
                                                        <div class="form-group">
                                                            <label><spring:message code="direccion"/></label> 
                                                            <input class="form-control" placeholder="<spring:message code="direccion"/>"  maxlength="50" required>
                                                        </div>

                                                    </div>                                        
                                                    <div class="col-lg-6 text-left">
                                                        <div class="form-group">
                                                            <label><spring:message code="codigo_postal"/></label> 
                                                            <input class="form-control" id="Telefono" placeholder="<spring:message code="codigo_postal"/>"  minlength="5" maxlength="5" onkeypress="return soloNumeros(event);" required>
                                                        </div>	
                                                        <div class="form-group">
                                                            <label><spring:message code="telefono"/></label> 
                                                            <input class="form-control" id="Telefono" placeholder="<spring:message code="telefono"/>"  minlength="10" maxlength="10" onkeypress="return soloNumeros(event);" required>
                                                        </div>
                                                        <div class="form-group">
                                                            <label><spring:message code="e-mail"/></label> 
                                                            <input class="form-control" type="email" placeholder="<spring:message code="e-mail"/>"  maxlength="20" required>
                                                        </div>
                                                        <div class="form-group">
                                                            <label><spring:message code="fax"/></label> 
                                                            <input class="form-control" id="Telefono" placeholder="<spring:message code="fax"/>"  minlength="10" maxlength="10" onkeypress="return soloNumeros(event);" required>
                                                        </div>


                                                    </div>
                                                    <!-- ################################################################### --> 
                                                </div>
                                                <!-- ################################################################### -->
                                            </div>
                                        </div>

                                        <!-- ########### FIN PANEL 1 ######################################################## -->
                                        <!-- ###########PANEL 2 ######################################################## -->
                                        <!--    <div class="panel panel-primary">
                                           <div class="panel-heading">
                                               <h3 class="panel-title">Datos Adicionales</h3>
                                           </div>
                                           <div class="panel-body">
                                               <div class="row">
                                                   <div class="col-lg-12 text-left">    -->                                               
                                        <!-- ################################################################### -->
                                        <!--        <div class="form-group">
                                                                                                               <label>Tel&eacute;fono 2</label>
                                                                                                               <input class="form-control" id="Telefono" placeholder="Tel&eacute;fono 2"  minlength="10" maxlength="10" onkeypress="return soloNumeros(event);" required>
                                                                                                        </div>
                                                                                                        <div class="form-group">
                                                                                                               <label>Tel&eacute;fono 3</label>
                                                                                                               <input class="form-control" id="Telefono" placeholder="Tel&eacute;fono 3"  minlength="10" maxlength="10" onkeypress="return soloNumeros(event);" required>
                                                                                                       </div>-->
                                        <!-- ################################################################### -->
                                        <!--    </div>
                                        </div>
                                    </div>
                                </div>-->
                                        <!-- ########### FIN PANEL 2 ######################################################## -->
                                        <!-- ###########PANEL 3 ######################################################## -->
                                        <div class="panel panel-primary">
                                            <div class="panel-heading">
                                                <h3 class="panel-title"><spring:message code="prioridad"/></h3> 
                                            </div>
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-lg-12 text-left">
                                                        <!--Inputs aqui -->
                                                        <!-- ################################################################### -->     
                                                        <label class="radio-inline">
                                                            <input type="radio" name="pri1" id="pr1" value="pr1" required checked><spring:message code="alta"/>
                                                        </label> 
                                                        <label class="radio-inline">
                                                            <input type="radio" name="pr2" id="pr2" value="pr2" required> <spring:message code="media"/>
                                                        </label> 
                                                        <label class="radio-inline">
                                                            <input type="radio" name="pr3" id="pr3" value="pr3" required> <spring:message code="baja"/>
                                                        </label> 
                                                        <!--Fin Input 1 -->   
                                                        <!-- ################################################################### -->
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- ########### FIN PANEL 3 ######################################################## -->
                                        <!-- ###########PANEL 4 ######################################################## -->
                                        <div class="panel panel-primary">
                                            <div class="panel-heading">
                                                <h3 class="panel-title"><spring:message code="datos_empresa"/></h3> 
                                            </div>
                                            <div class="panel-body">
                                                <div class="row">


                                                    <!-- ################################################################### -->
                                                    <div class="col-lg-6 text-left">
                                                        <div class="form-group">
                                                            <label><spring:message code="nombre"/></label> 
                                                            <input class="form-control" placeholder="<spring:message code="nombre"/>"  maxlength="50" onkeypress="return soloTexto(event);" required>
                                                        </div>
                                                        <div class="form-group">
                                                            <label><spring:message code="razon_social"/></label> 
                                                            <input class="form-control" placeholder="<spring:message code="razon_social"/>"  maxlength="50" onkeypress="return soloTexto(event);" required>
                                                        </div> 
                                                        <div class="form-group">
                                                            <label><spring:message code="rfc"/></label> 
                                                            <input class="form-control" placeholder="<spring:message code="rfc"/>"  minlength="15" maxlength="15"  required>
                                                        </div>
                                                        <div class="form-group">
                                                            <label><spring:message code="direccion"/></label> 
                                                            <input class="form-control" placeholder="direccion"  maxlength="50" required>
                                                        </div>

                                                    </div>                                        
                                                    <div class="col-lg-6 text-left">
                                                        <div class="form-group">
                                                            <label><spring:message code="codigo_postal"/></label> 
                                                            <input class="form-control" id="Telefono" placeholder="<spring:message code="codigo_postal"/>"  minlength="5" maxlength="5" onkeypress="return soloNumeros(event);" required>
                                                        </div>
                                                        <div class="form-group">
                                                            <label><spring:message code="telefono_principal"/></label> 
                                                            <input class="form-control" id="Telefono" placeholder="<spring:message code="telefono"/>"  minlength="10" maxlength="10" onkeypress="return soloNumeros(event);" required>
                                                        </div>
                                                        <div class="form-group">
                                                            <label><spring:message code="telefono2"/></label> 
                                                            <input class="form-control" id="Telefono" placeholder="<spring:message code="telefono2"/>"  minlength="10" maxlength="10" onkeypress="return soloNumeros(event);" required>
                                                        </div>
                                                        <div class="form-group">
                                                            <label><spring:message code="telefono3"/></label> 
                                                            <input class="form-control" id="Telefono" placeholder="<spring:message code="telefono3"/>"  minlength="10" maxlength="10" onkeypress="return soloNumeros(event);" required>
                                                        </div>

                                                    </div>
                                                    <!-- ################################################################### -->

                                                </div>
                                            </div>
                                        </div>
                                        <!-- ########### FIN PANEL 4 ######################################################## -->
                                        <!-- ###########PANEL 5 ######################################################## -->                                    
                                        <!-- ########### FIN PANEL 5 ######################################################## -->                            
                                        <!-- ###########PANEL 6 ######################################################## -->
                                        <div class="panel panel-primary">
                                            <div class="panel-heading">
                                                <h3 class="panel-title"><spring:message code="credito"/></h3> 
                                            </div>
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-lg-12 text-left">
                                                        <!--Inputs aqui -->
                                                        <!-- ################################################################### -->                           

                                                        <label class="radio-inline">
                                                            <input type="radio" name="crsi" id="crsi" value="crsi" required checked><spring:message code="si"/>
                                                        </label>
                                                        <label class="radio-inline">
                                                            <input type="radio" name="crno" id="crno" value="crno" required> <spring:message code="no"/>
                                                        </label>
                                                        <!-- ################################################################### -->
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- ########### FIN PANEL 6 ######################################################## -->
                                        <!--Fin Codigo Para panel 5 o menos inputs --> 

                                        <div align="right">
                                            <!-- <button type="submit" class="btn btn-success" onclick="return confirmBorrado()();"('dropdown1')">Aceptar</button>-->
                                            <button type="submit" class="btn btn-success" ><spring:message code="aceptar"/></button>
                                            <button class="btn btn-primary" type="button" onclick="return confirmBorrado();"><spring:message code="eliminar"/></button>
                                            <!--<button type="button" class="btn btn-danger">Cancelar</button>-->
                                        </div>
                                </div>
                                <!--Fin TODO aqui abajo-->

                            </div>
                        </div>
                    </div>
                </div>

                <!-- /.container-fluid -->       
                </form> <!-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1-->                      
                <!-- FIN DE CONTENIDO -->

            </div>

            <!-- /#wrapper -->

            <!-- jQuery Version 1.11.0 -->
            <script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.0.js"></script>

            <!-- Bootstrap Core JavaScript -->
            <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/js/js.js"></script>
            <script src="${pageContext.request.contextPath}/resources/Clientes/jsClientes/jsClie.js"></script>

            <!-- Morris Charts JavaScript -->
            <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/raphael.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/morris.min.js"></script>
            <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/morris-data.js"></script>
            <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/Proveedor/AltaView/AltaView.js"></script>

    </body>
</html>
