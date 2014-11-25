<%-- 
    Document   : Pagina
    Created on : 13/11/2014, 04:51:31 PM
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
                    <a class="navbar-brand" href="new">SAC</a>
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
                            <a href="new"><i class=" fa fa-fw fa-user-md"></i> Recursos Humanos</a>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#empleados"> Empleados <i class="fa fa-fw fa-caret-down pull-right"></i></a>
                            <ul id="empleados" class="collapse">
                                <li>
                                    <a href="rh/NuevoUsuario">Nuevo usuario</a>
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
                                    <a href="rh/AltaIncapacidadesView">Solicitar incapacidades</a>
                                </li>
                                <li>
                                    <a href="rh/AdministraIncapacidadesView">Administar incapacidades</a>
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
                                Administrar 
                            </h1>                        
                        </div>
                    </div>        


                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="col-lg-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-hover table-striped" align="center">
                                            <thead>
                                                <tr>
                                                    <th>ID</th><th>Nombre</th><th>Apellido Paterno</th><th>Apellido Materno</th><th>Sexo</th><th>NSS</th><th>Departamento</th><th>Fecha de Inicio</th><th>Fecha de Fin</th><th>Estado(Autorizaci&oacute;n)</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr class="success"><td>3546</td><td>Juan</td><td>Montes</td><td>Aldama</td><td>Masculino</td><td>12345678</td><td>Recursos Humanos</td><td>29/10/2014</td><td>29/10/2014</td><td><select class="form-control" required><option>Autorizar</option><option>Rechazar</option></select></td></tr>
                                                <tr class="info"><td>7385</td><td>Pedro</td><td>Ortega</td><td>Contreras</td><td>Masculino</td><td>87685944</td><td>Almac&eacute;n</td><td>28/10/2014</td><td>29/10/2014</td><td><select class="form-control" required><option>Autorizar</option><option>Rechazar</option></select></td></tr>
                                                <tr class="warning"><td>0987</td><td>Roberto</td><td>Ibarra</td><td>Fuentes</td><td>Masculino</td><td>09345668</td><td>Recursos Humanos</td><td>27/10/2014</td><td>29/10/2014</td><td><select class="form-control" required><option>Autorizar</option><option>Rechazar</option></select></td></tr>
                                                <tr class="danger"><td>2756</td><td>Israel</td><td>Barrera</td><td>Altamirano</td><td>Masculino</td><td>14695678</td><td>Almac&eacute;n</td><td>26/10/2014</td><td>29/10/2014</td><td><select class="form-control" required><option>Autorizar</option><option>Rechazar</option></select></td></tr>
                                                <tr class="success"><td>1322</td><td>Enrique</td><td>Orozco</td><td>Acevedo</td><td>Masculino</td><td>34345999</td><td>Compras</td><td>25/10/2014</td><td>29/10/2014</td><td><select class="form-control" required><option>Autorizar</option><option>Rechazar</option></select></td></tr>
                                                <tr class="info"><td>9455</td><td>Antonio</td><td>D&iacute;az</td><td>Tinoco</td><td>Masculino</td><td>12175478</td><td>Direcci&oacute;n</td><td>24/10/2014</td><td>29/10/2014</td><td><select class="form-control" required><option>Autorizar</option><option>Rechazar</option></select></td></tr>
                                                <tr class="warning"><td>0875</td><td>Miguel</td><td>Mora</td><td>Navarrete</td><td>Masculino</td><td>80975678</td><td>Compras</td><td>23/10/2014</td><td>29/10/2014</td><td><select class="form-control" required><option>Autorizar</option><option>Rechazar</option></select></td></tr>
                                                <tr class="danger"><td>1123</td><td>Carlos</td><td>S&aacute;nchez</td><td>Reyes</td><td>Masculino</td><td>15788678</td><td>Ventas</td><td>22/10/2014</td><td>29/10/2014</td><td><select class="form-control" required><option>Autorizar</option><option>Rechazar</option></select></td></tr>
                                                <tr class="success"><td>1213</td><td>Armando</td><td>Garc&iacute;a</td><td>Fern&aacute;ndez</td><td>Masculino</td><td>45845678</td><td>Recursos Humanos</td><td>21/10/2014</td><td>29/10/2014</td><td><select class="form-control" required><option>Autorizar</option><option>Rechazar</option></select></td></tr>
                                                <tr class="info"><td>2435</td><td>Jos&eacute;</td><td>G&oacute;mez</td><td>Palma</td><td>Masculino</td><td>09801228</td><td>Recursos Humanos</td><td>20/10/2014</td><td>29/10/2014</td><td><select class="form-control" required><option>Autorizar</option><option>Rechazar</option></select></td></tr>
                                            </tbody>
                                        </table>
                                        
                                        <div align="right">
                                            <button class="btn btn-success" type="button" onclick="confirmar()">
                                                Aceptar
                                            </button>
                                        </div>
                                    </div>
                                    <!--Fin  inputs/!-->
                                    
                                </div>
                                
                            </div>
                        </div>
                    </div>

                </div><!--Fin del tag de fila-->
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
