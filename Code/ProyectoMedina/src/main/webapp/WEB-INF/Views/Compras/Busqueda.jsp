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
                        <a href="#"  onClick="noFuncional();" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Username <b class="caret"></b></a>
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
                            <a href="#">Estado de Órdenes</a>
                        </li>
                        <li class="active">
                            <a href="#">Aprobaciones</a>

                        </li>

                        <li class="active">
                            <a href="#">Búsqueda</a>
                        </li>

                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>

            <div id="page-wrapper">

                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">
                                Búsqueda
                            </h1>                        
                        </div>
                    </div>        

                    <div class="row">
                        <div class="col-lg-12 text-center">

                            <div class="panel panel-default">
                                <div class="panel-body">

                                    <div class="panel panel-primary">

                                        <div class="panel-heading" align="left">
                                            <h3 class="panel-title">Datos de Orden</h3>
                                        </div>
                                        <div class="panel-body">
                                            <form>
                                                <div class="row">

                                                    <div class="col-lg-12 text-center">  <div class="form-group" align="left">
                                                            <label>Orden</label>

                                                            <div class="form-group input-group">
                                                                <select id="comboOrden" class="form-control">
                                                                    <option selected>Orden</option>
                                                                    <option value="select1">1234</option>
                                                                    <option value="select2">2134</option>
                                                                    <option value="select3">4343</option>
                                                                    <option value="select4">5324</option>
                                                                    <option value="select5">6334</option>
                                                                </select>
                                                                <span class="input-group-btn"><button type="button" class="btn btn-info"><i class="fa fa-search"></i></button></span>

                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>

                                    <div class="table-responsive">
                                        <div align="left">
                                            <h4>Orden de Compra</h4>
                                        </div>
                                        <table class="table table-bordered table-hover table-striped">
                                            <thead>
                                                <tr><th>ID</th>
                                                    <th>Fecha de Compra</th>
                                                    <th>Fecha de Entrega</th>
                                                    <th>Proveedor</th>
                                                    <th>Activo Fijo</th>
                                                    <th>Forma de Pago</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr class="success">
                                                    <td>21</td>
                                                    <td>10/11/2014</td>
                                                    <td>20/11/2014</td>
                                                    <td>Barcel</td>
                                                    <td>No</td>
                                                    <td>Efectivo</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div> 
                                    <div class="table-responsive">
                                        <div align="left">
                                            <h4>Productos</h4>
                                        </div>
                                        <table class="table table-bordered table-hover table-striped">
                                            <thead>
                                                <tr><th>ID</th>
                                                    <th>Nombre</th>
                                                    <th>Marca</th>
                                                    <th>Unidad</th>
                                                    <th>Precio Unitario</th>
                                                    <th>Cantidad</th>
                                                    <th>Total</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr class="success">
                                                    <td>21</td>
                                                    <td>Chips</td>
                                                    <td>Barcel</td>
                                                    <td>Caja</td>
                                                    <td>8.50</td>
                                                    <td>24</td>
                                                    <td>204</td>

                                                </tr>
                                                <tr class="info">
                                                    <td>31</td>
                                                    <td>Ondas</td>
                                                    <td>Barcel</td>
                                                    <td>Caja</td>
                                                    <td>6.00</td>
                                                    <td>24</td>
                                                    <td>204</td>

                                                </tr>
                                                <tr class="warning">
                                                    <td>45</td>
                                                    <td>Runners</td>
                                                    <td>Barcel</td>
                                                    <td>Caja</td>
                                                    <td>8.50</td>
                                                    <td>24</td>
                                                    <td>204</td>

                                                </tr>
                                                <tr class="danger">
                                                    <td colspan="5"></td>
                                                    <td>Subtotal</td>
                                                    <td></td>                                       
                                                </tr>
                                                <tr class="success">
                                                    <td colspan="5"></td>
                                                    <td>Total</td>
                                                    <td></td>                                                  
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>                
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>                    
        </div>               
    </div>              
</div>
</div>
</div>
<script src="../js/js.js" type="text/javascript"></script>
<script src="../js/Compras/Busqueda/Busqueda.js" type="text/javascript"></script>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/Compras/Busqueda/Busqueda.js"></script>


</body>

</html>