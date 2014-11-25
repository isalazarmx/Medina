<%-- 
    Document   : ModificarUsuario
    Created on : 13/11/2014, 11:28:32 PM
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
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> <b class="caret"></b></a>
                        <ul class="dropdown-menu message-dropdown">
                            <li class="message-preview">
                                <a href="#">
                                    <div class="media">
                                        <span class="pull-left">
                                            <img class="media-object" src="http://placehold.it/50x50" alt="">
                                        </span>
                                        <div class="media-body">
                                            <h5 class="media-heading"><strong>Sin Mensajes</strong>
                                            </h5>
                                            <p class="small text-muted"><i class="fa fa-clock-o"></i></p>
                                            <p>Sin mensajes</p>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="message-footer">
                                <a href="#">Leer todos los mensajes</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
                        <ul class="dropdown-menu alert-dropdown">
                            <li>
                                <a href="#"><span class="label label-default">Sin alertas</span></a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Administrador RH <b class="caret"></b></a>
                        <ul class="dropdown-menu">
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
                                <a href="../index"><i class="fa fa-fw fa-power-off"></i> Salir</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav side-nav">
                        <li class="active">
                            <a href="index"><i class=" fa fa-fw fa-user-md"></i> Recursos Humanos</a>
                        </li>
                        <li>
                            <a href="javascript:;" data-toggle="collapse" data-target="#empleados"><i class="fa fa-fw fa-users"></i> Empleados <i class="fa fa-fw fa-caret-down pull-right"></i></a>
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
                            <a href="javascript:;" data-toggle="collapse" data-target="#vacaciones"><i class="fa fa-fw fa-taxi"></i> Vacaciones <i class="fa fa-fw fa-caret-down pull-right"></i></a>
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
                            <a href="javascript:;" data-toggle="collapse" data-target="#incapacidades"><i class="fa fa-fw fa-plus"></i> Incapacidades <i class="fa fa-fw fa-caret-down pull-right" ></i></a>
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
                            <a href="javascript:;" data-toggle="collapse" data-target="#reportes"><i class="fa fa-fw fa-file-text"></i> Reportes <i class="fa fa-fw fa-caret-down pull-right"></i></a>
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
                                Modificar Usuario
                            </h1>
                        </div>
                    </div>
                    <!-- /.row -->
                    <form method="POST" action="exitosa" onsubmit="return elementoSeleccionado()">
                        <div class="row">
                            <div class="col-lg-12 text-left">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Buscar Usuario</h3>
                                    </div>
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-lg-12 text-left">
                                                <div class="form-group input-group">
                                                    <input type="search" class="form-control" placeholder="ID del empleado" onkeypress="return soloNumeros(event);" maxlength="10">
                                                    <span class="input-group-btn">
                                                        <button type="button" class="btn btn-info" data-toggle="popover" title="Popover title" data-content="And here's some amazing content. It's very engaging. Right?"><i class="fa fa-search"></i></button>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Departamento</h3>
                                    </div>
                                    <div class="panel-body">
                                        <div class="col-lg-6 text-left">
                                            <div class="form-group">
                                                <label>Departamento actual</label>
                                                <div class="form-group input-group">
                                                    <select id="departamentosLista" class="form-control selectpicker" disabled="">
                                                        <option>Seleccione departamento</option>
                                                        <option>Recursos Humanos</option>
                                                        <option>Contabilidad</option>
                                                        <option>Ventas</option>
                                                        <option>Compras</option>
                                                        <option>Dirección</option>
                                                        <option selected>Almacén</option>
                                                        <option>Proveedor</option>
                                                        <option>Clientes</option>
                                                        <option>Activos fijos</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label>Puesto actual</label>
                                                <div class="form-group input-group">
                                                    <select id="disabledSelect" class="form-control selectpicker" disabled>
                                                        <option>Seleccione rol</option>
                                                        <option>Director</option>
                                                        <option selected>Gerente</option>
                                                        <option>Empleado</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 text-left">
                                            <div class="form-group">
                                                <label>Transferir a nuevo departamento</label>
                                                <div class="form-group input-group">
                                                    <select id="departamentosLista" class="form-control selectpicker">
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
                                        </div>
                                        <div class="col-lg-6 text-left">
                                            <div class="form-group">
                                                <label>Asignar nuevo perfil</label>
                                                <div class="form-group input-group">
                                                    <select id="disabledSelect" class="form-control selectpicker">
                                                        <option>Seleccione rol</option>
                                                        <option>Director</option>
                                                        <option>Gerente</option>
                                                        <option>Empleado</option>
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
                                        <h3 class="panel-title">Datos personales</h3>
                                    </div>
                                    <div class="panel-body">
                                        <div class="col-lg-6 text-left">
                                            <div class="form-group">
                                                <label>Nombre(s)</label>
                                                <input class="form-control" placeholder="Nombre(s)" onkeypress="return soloTexto(event);" maxlength="40" required>
                                            </div>
                                            <div class="form-group">
                                                <label>Apellido Paterno</label>
                                                <input class="form-control" placeholder="Apellido Paterno" onkeypress="return soloTexto(event);" maxlength="40" required>
                                            </div>
                                            <h5>Sexo</h5>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
                                                    Masculino
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                                                    Femenino
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 text-left">
                                            <div class="form-group">
                                                <label>Apellido Materno</label>
                                                <input class="form-control" placeholder="Apellido Materno"  maxlength="20" required>
                                            </div>  
                                        </div>
                                        <div class="col-lg-6 text-left">
                                            <div class="form-group">
                                                <label>RFC</label>
                                                <input class="form-control" placeholder="RFC"  maxlength="20" required>
                                            </div>  
                                        </div>
                                        <div class="col-lg-6 text-left">
                                            <div class="form-group">
                                                <label>Fecha de nacimiento</label>
                                                <input type="date" class="form-control" value="2013-01-08" disabled>
                                            </div>  
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12 text-left">
                                        <div class="panel panel-primary">
                                            <div class="panel-heading">
                                                <h3 class="panel-title">Datos de Referencia</h3>
                                            </div>
                                            <div class="panel-body">
                                                <div class="col-lg-6 text-left">
                                                    <div class="form-group">
                                                        <label>Calle</label>
                                                        <input class="form-control" placeholder="Calle" onkeypress="return soloTexto(event);"  maxlength="30" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Colonia</label>
                                                        <input class="form-control" placeholder="Colonia" onkeypress="return soloTexto(event);"  maxlength="20" required>
                                                    </div>  
                                                    <div class="form-group">
                                                        <label>N&uacute;mero de Interior</label>
                                                        <input class="form-control" id="numInt" placeholder="N&uacute;mero de interior"  maxlength="4" onkeypress="return soloNumeros(event);"required>
                                                    </div>
                                                </div>
                                                <div class="col-lg-6 text-left">
                                                    <div class="form-group">
                                                        <label>C&oacute;digo Postal</label>
                                                        <input class="form-control" placeholder="C.P."  maxlength="5" onkeypress="return soloNumeros(event);" required>
                                                    </div>  
                                                    <div class="form-group">
                                                        <label>N&uacute;mero Exterior</label>
                                                        <input class="form-control" placeholder="N&uacute;mero exterior" onkeypress="return soloNumeros(event);" maxlength="4" required>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Poblaci&oacute;n</label>
                                                        <div class="form-group input-group">
                                                            <select id="etados" class="form-control selectpicker jaja show-tick show-menu-arrow" data-size="6">
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
                                                                <option>México</option>
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
                                        <div align="right">
                                            <button type="submit" class="btn btn-success aceptar">Guardar cambios</button>
                                            <button type="button" class="btn btn-danger cancelar" onclick="prueba()">Cancelar</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
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
