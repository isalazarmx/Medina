<%-- 
    Document   : AltaIncapacidades
    Created on : 13/11/2014, 10:02:08 PM
    Author     : Carlos
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
                    <a class="navbar-brand" href="new.html">SAC</a>
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
                        <a href="#" class="dropdown-toggle" onclick="noFuncional();" data-toggle="dropdown"><i class="fa fa-user"></i> Administrador RH <b class="caret"></b></a>


                    </li>
                </ul>
                <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav side-nav">
                        <li class="active">
                            <a href="new.html"><i class=" fa fa-fw fa-user-md"></i> Recursos Humanos</a>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#empleados"> Empleados <i class="fa fa-fw fa-caret-down pull-right"></i></a>
                            <ul id="empleados" class="collapse">
                                <li>
                                    <a href="rh/NuevoUsuario.html">Nuevo usuario</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#vacaciones"> Vacaciones <i class="fa fa-fw fa-caret-down pull-right"></i></a>
                            <ul id="vacaciones" class="collapse">
                                <li>
                                    <a href="#">Solicitar vacaciones</a>
                                </li>
                                <li>
                                    <a href="#">Administrar vacaciones</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#incapacidades"> Incapacidades <i class="fa fa-fw fa-caret-down pull-right"></i></a>
                            <ul id="incapacidades" class="collapse">
                                <li>
                                    <a href="rh/AltaIncapacidadesView.html">Solicitar incapacidades</a>
                                </li>
                                <li>
                                    <a href="rh/AdministraIncapacidadesView.html">Administar incapacidades</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#permisos"> Permisos <i class="fa fa-fw fa-caret-down pull-right"></i></a>
                            <ul id="permisos" class="collapse">
                                <li>
                                    <a href="#">Solicitud de permisos</a>
                                </li>
                                <li>
                                    <a href="#">Administrar permisos</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#reportes"> Reportes <i class="fa fa-fw fa-caret-down pull-right"></i></a>
                            <ul id="reportes" class="collapse">
                                <li>
                                    <a href="#">Empleados Actuales</a>
                                </li>
                                <li>
                                    <a href="#">Altas de empleados</a>
                                </li>
                                <li>
                                    <a href="#">Baja de empleados</a>
                                </li>
                                <li>
                                    <a href="#">Reportes de n?mina</a>
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
                                Solicitar
                            </h1>                        
                        </div>
                    </div>        

                    <form role="form" name="incapacidadesForm" method="POST" onsubmit="return checarFecha()">
                        <div class="row">
                            <div class="col-lg-12 text-left">
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <!--TODO aqui abajo    Pagina en General--><br>
                                        <!--Codigo Para panel 5 o menos inputs -->
                                        <!-- ###########PANEL 1 ######################################################## -->
                                        <div class="panel panel-primary">
                                            <div class="panel-heading">
                                                <h3 class="panel-title">Datos de Empleado</h3>
                                            </div>
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-lg-6 text-left">
                                                        <!--Inputs aqui -->
                                                        <!-- ################################################################### -->
                                                        <!--Input 1 -->
                                                        <div class="form-group">
                                                            <label>N&uacute;mero de Empleado</label>
                                                            <input id="nemp" type="text" class="form-control" onkeypress="return soloNumeros(event)" placeholder="N&uacute;mero de Empleado" maxlength="6" required>
                                                        </div>
                                                        <!--Fin Input 1 -->
                                                        <!--Input 4 -->
                                                        <div class="form-group">
                                                            <label>Nombre(s)</label>
                                                            <input  id="nombre" type="text" class="form-control" onkeypress="return soloTexto(event)" placeholder="Nombre(s)" maxlength="15" required>
                                                        </div>
                                                        <!--Fin Input 4 -->
                                                        <!--Input 2 -->
                                                        <div class="form-group">
                                                            <label>Apellido Paterno</label>
                                                            <input id="paterno" type="text" class="form-control" onkeypress="return soloTexto(event)"  placeholder="Apellido Paterno" maxlength="15" required>
                                                        </div>
                                                        <!--Fin Input 2 -->
                                                        <!--Input 3 -->
                                                        <div class="form-group">
                                                            <label>Apellido Materno</label>
                                                            <input id="materno" type="text" class="form-control" onkeypress="return soloTexto(event)" placeholder="Apellido Materno" maxlength="15" required>
                                                        </div>
                                                        <!--Fin Input 3 -->
                                                        <!--Input 5 -->
                                                        <div class="form-group">
                                                            <label>Sexo </label>
                                                            <label class="radio-inline">
                                                             <input type="radio" name="sexo" id="radio1" value="opcion_1" checked> Masculino
                                                            </label>
                                                            <label class="radio-inline">
                                                                <input type="radio" name="sexo" id="radio2" value="opcion_2"> Femenino
                                                            </label>
                                                            
                                                        </div>
                                                        <!--Fin Input 5 -->
                                                        <!-- ################################################################### -->
                                                    </div>



                                                    <div class="col-lg-6 text-left">
                                                        <!--Inputs aqui -->
                                                        <!-- ################################################################### -->

                                                        <!--Input 6 -->
                                                        <div class="form-group">
                                                            <label>N&uacute;mero de Seguro Social</label>
                                                            <input id="nss" type="text" class="form-control" onkeypress="return soloNumeros(event)" placeholder="N&uacute;mero de Seguro Social" maxlength="15" required>
                                                        </div>
                                                        <!--Fin Input 6 -->
                                                        <!--Input 7 -->

                                                        <label>Duraci&oacute;n</label>  

                                                        <div class="form-group">
                                                            <label>Fecha de Inicio</label>
                                                            <input id="fecha1" type="date" class="form-control" required>
                                                        </div>
                                                        <!--Fin Input 7 -->
                                                        <!--Input 8 -->
                                                        <div class="form-group">
                                                            <label>Fecha de Fin</label>
                                                            <input id="fecha2" type="date" class="form-control" required>
                                                            <br>
                                                            <br>
                                                        </div>
                                                        <!--Fin Input 8 -->
                                                        <!--Input 9 -->
                                                        <div class="form-group">
                                                            <label>Autorizaci&oacute;n IMSS</label>
                                                            <button type="button" class="btn btn-default" onclick="noFuncional()">Adjuntar archivo</button>        
                                                        </div>
                                                        <!--Fin Input 9 -->
                                                        <!-- ################################################################### -->
                                                    </div>



                                                </div>
                                            </div>
                                        </div>
                                        <!-- ########### FIN PANEL 1 ######################################################## -->
                                        <!--Fin Codigo Para panel 5 o menos inputs --> 
                                        <div align="right">
                                            <button type="submit" class="btn btn-success">Aceptar</button>
                                        </div>
                                    </div>
                                    <!--Fin TODO aqui abajo-->

                                </div>
                            </div>
                        </div><!--Fin del tag de fila-->
                    </form>

                </div><!-- Fin del tag del contenedor-->
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
            <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/RecursosHumanos/recursosh.js"></script>

    </body>

</html>

