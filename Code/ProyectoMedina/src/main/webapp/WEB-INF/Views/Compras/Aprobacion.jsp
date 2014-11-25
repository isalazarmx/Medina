<!DOCTYPE html>

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
                    <a class="navbar-brand" href="index.html">SAC</a>
                </div>
                <!-- Top Menu Items -->
                <ul class="nav navbar-right top-nav">
                    <li class="dropdown">
                        <a href="" onClick="noFuncional();" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> <b class="caret"></b></a>
                        <ul class="dropdown-menu message-dropdown">

                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#"  onClick="noFuncional();" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
                        <ul class="dropdown-menu alert-dropdown">

                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#"  onClick="noFuncional();" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i>&nbsp Username <b class="caret"></b></a>
                        <ul class="dropdown-menu">

                        </ul>
                    </li>
                </ul>
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav side-nav">
                        <li class="active">
                            <a href="index.html"><i class="fa fa-fw fa-dashboard"></i> Compras</a>
                        </li>
                        <li class="active">
                            <a href="OrdenesCompra.html">Estado de Ãrdenes</a>
                        </li>
                        <li class="active">
                            <a href="Aprobacion.html">Aprobaciones</a>
                        </li>
                        <li class="active">
                            <a href="Busqueda.html">BÃºsqueda</a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
                <!-- /.navbar-collapse -->
            </nav>
            <div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Aprobaciones
                            </h1>                        
                        </div>
                    </div>        
                    <div class="row">
                        <div class="col-lg-12 text-rigth">
                            <div class="panel panel-default">
                                <form>
                                    <div class="panel-body">
                                        <div class="panel panel-primary">
                                            <div class="panel-heading">
                                                <h3 class="panel-title">Datos de Orden</h3>
                                            </div>
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-lg-12 text-left">
                                                        <div class="form-group" align="left">
                                                            <label>Orden</label>
                                                            <div class="form-group input-group">
                                                                <select id="disabledSelect" class="form-control">
                                                                    <option>Orden</option>
                                                                    <option value="bimbo">101402</option>
                                                                    <option value="coca">101403</option>
                                                                    <option value="sabritas">101404</option>
                                                                    <option value="marinela">101405</option>
                                                                    <option value="barcel">101406</option>
                                                                </select>
                                                                <span class="input-group-btn"><button type="button" class="btn btn-info"><i class="fa fa-search"></i></button></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                </form> 
                                <div class="row">
                                    <div class="col-lg-12 text-left">
                                        <div class="table-responsive">
                                            <table class="table table-bordered table-hover table-striped">
                                                <thead>
                                                    <tr>
                                                        <th>ID</th>
                                                        <th>Fecha de EmisiÃ³n</th>
                                                        <th>Proveedor</th>
                                                        <th>Total</th>
                                                    </tr>    
                                                </thead>
                                                <tbody>
                                                    <tr class="success">
                                                        <td>1128</td>
                                                        <td>20/10/2014</td>
                                                        <td>FEMSA</td>
                                                        <td>$657.36</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-12" align="right">
                                    <a href="#"><button type="button" onclick="return confirmarSelect('disabledSelect');" class="btn btn-success">Aceptar</button></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>               
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script><!--NO TOCAR-->
            </div>
            <!-- /#page-wrapper -->

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
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/Compras/Aprobacion/Apobacion.js"></script>

    </body>

</html>