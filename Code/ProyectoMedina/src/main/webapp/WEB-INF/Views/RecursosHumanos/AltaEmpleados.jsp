<%-- 
    Document   : AltaEmpleados
    Created on : 13/11/2014, 11:25:55 PM
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
                            <a href="index"><i class=" fa fa-fw fa-user-md"></i> Recursos Humanos</a>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#empleados">Empleados <i class="fa fa-fw fa-caret-down pull-right"></i></a>
                            <ul id="empleados" class="collapse">
                                <li>
                                    <a href="NuevoUsuario">Nuevo</a>
                                </li>
                                <li>
                                    <a href="ModificarUsuario">Modifcar</a>
                                </li>
                                <li>
                                    <a href="AdministrarUsuarios">Administrar</a>
                                </li>
                                <li>
                                    <a href="HistorialUsuario">Historial</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#vacaciones"> Vacaciones <i class="fa fa-fw fa-caret-down pull-right"></i></a>
                            <ul id="vacaciones" class="collapse">
                                <li>
                                    <a href="SolicitudVacaciones">Solicitar</a>
                                </li>
                                <li>
                                    <a href="ConsultarVacaciones">Administrar</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#incapacidades">Incapacidades <i class="fa fa-fw fa-caret-down pull-right" ></i></a>
                            <ul id="incapacidades" class="collapse">
                                <li>
                                    <a href="#">Solicitar</a>
                                </li>
                                <li>
                                    <a href="#">Administar</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#reportes">Reportes <i class="fa fa-fw fa-caret-down pull-right"></i></a>
                            <ul id="reportes" class="collapse">
                                <li>
                                    <a href="EmpleadosActuales">Empleados Actuales</a>
                                </li>
                                <li>
                                    <a href="AltaEmpleados">Altas de empleados</a>
                                </li>
                                <li>
                                    <a href="BajaEmpleados">Baja de empleados</a>
                                </li>
                                <li>
                                    <a href="Nomina">Reportes de nómina</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>

            <div id="page-wrapper">
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Reporte
                            </h1>

                            <!-- /.row -->

                            <div class="col-lg-12">
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Consulta de alta de empleados</h3>
                                    </div>
                                    <div class="panel-body">
                                        <div class="col-lg-12 text-left">
                                            <div class="form-group">
                                                <label class="control-label" >Departamento</label>
                                                <select class="form-control">
                                                    <option>Seleccione departamento</option>
                                                    <option>Recursos Humanos</option>
                                                    <option>Contabilidad</option>
                                                    <option>Ventas</option>
                                                    <option>Compras</option>
                                                    <option>Dirección</option>
                                                    <option>Almacén</option>
                                                    <option>Proveedor</option>
                                                    <option>Clientes</option>
                                                    <option>Activos fijos</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="col-lg-12 text-left">
                                            <div class="form-group">
                                                <label class="control-label">Tipo de usuario </label>
                                                <select class="form-control">
                                                    <option>Seleccione puesto</option>
                                                    <option>Director</option>
                                                    <option>Gerente</option>
                                                    <option>Empleado</option>
                                                </select>
                                            </div>
                                        </div>



                                        <div class="col-lg-12 text-left">
                                            <!-- inputs/!-->
                                            <div class="form-group">
                                                <label class="control-label" for="inputError" >Inicio</label>
                                                <input id="fecha" type=date class="form-control" >
                                            </div>
                                            <!--Fin  inputs/!-->
                                        </div>
                                        <div class="col-lg-12 text-left">
                                            <!-- inputs/!-->
                                            <div class="form-group">
                                                <label class="control-label" for="inputError" >Fin</label>
                                                <input id="fecha" type=date class="form-control" >
                                            </div> 
                                            <!--Fin  inputs/!-->
                                        </div>

                                        
                                    </div>
                                </div>
                                         <div align="right"> 
                                            <button type="submit" class="btn btn-success" onclick="noFuncional();">Consultar</button>
                                        </div>


                           <div class="panel-body">
                            <div class="col-lg-12">
                                 <div class="table-responsive">
                                    <table class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Nombre (s)</th>
                                                <th>Apellido Paterno</th>
                                                <th>Apellido Materno</th>
                                                <th>Sexo</th>
                                                <th>Fecha de Contratación</th>
                                                <th>RFC</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="success"><td>665</td><td>Alejandra</td><td >Morales</td><td>Montiel</td><td>F</td><td>12/06/2014</td><td>8674</td></tr>
                                            <tr class="info"><td>356</td><td>Mario</td><td>Estrada</td><td>Antonio</td><td>M</td><td>14/05/2014</td><td>9475</td></tr>
                                            <tr class="warning"><td>346</td><td>Cesar</td><td >Mendoza</td><td>Montiel</td><td>M</td><td>11/02/2014</td><td>2534</td></tr>
                                            <tr class="danger"><td>874</td><td>Luis</td><td >Camargo</td><td>Cano</td><td>M</td><td>23/08/2014</td><td>2635</td></tr>
                                            <tr class="success"><td>768</td><td>Antonio</td><td >Aristeo</td><td>Rojas</td><td>M</td><td>24/02/2014</td><td>8364</td></tr>
                                            <tr class="info"><td>468</td><td>Marco</td><td >Morales</td><td>Campos</td><td>M</td><td>14/06/2014</td><td>2635</td></tr>
                                            <tr class="warning"><td>535</td><td>Emmanuel</td><td >Montiel</td><td>Montiel</td><td>M</td><td>12/01/2014</td><td>1423</td></tr>
                                            <tr class="danger"><td>260</td><td>Jorge</td><td >Mora</td><td>Lara</td><td>M</td><td>18/06/2014</td><td>7462</td></tr>
                                            <tr class="success"><td>235</td><td>Victor</td><td >Ramos</td><td>Montiel</td><td>M</td><td>13/04/2014</td><td>5243</td></tr>
                                        </tbody>
                                    </table>
                                </div>
</div>
                                




                            </div>
                                        <div align="right">
                                    <a href="Reporte_alta_emp.pdf" target="_blank" class="btn btn-success" type="submit">
                                        Aceptar
                                    </a>
                                </div>
 </div>


                            </div>
                            <!--Fin  inputs/!-->
                        
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
            <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/RecursosHumanos/recursosh.js"></script>

      </html>

