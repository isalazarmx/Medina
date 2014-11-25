/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function searchName() {

    var Nombre = document.getElementById("Nombre").value;

    if (Nombre.length !== 0) {
        if (Nombre === "coca-cola") {
            document.getElementById('block-br').style.display = "none";
            document.getElementById('tabla_codigo').style.display = "none";
            document.getElementById('tabla_name').removeAttribute('style');

        } else {
            alert("producto no encontrado");
        }


    } else {
        alert("Ingrese un nombre");
    }

    document.getElementById("Nombre").value = "";
}

function searchCode() {
    var Codigo = document.getElementById("Codigo").value;

    if (Codigo.length !== 0) {
        if (Codigo === "1028") {
            document.getElementById('block-br').style.display = "none";
            document.getElementById('tabla_name').style.display = "none";
            document.getElementById('tabla_codigo').removeAttribute('style');

        } else {
            alert("producto no encontrado");
        }


    } else {
        alert("Ingrese un codigo");
    }

    document.getElementById("Codigo").value = "";

}
function limpiarBusqueda() {

    document.getElementById('tabla_codigo').style.display = "none";
    document.getElementById('tabla_name').style.display = "none";
    document.getElementById('block-br').removeAttribute('style');

}

function displayBlockEmployee() {
    document.getElementById('block-employee').removeAttribute('style');
}
function agregarVenta() {
    var codigo = document.getElementById("claveProducto").value;
    var bandera = true;
    if (codigo.length !== 0) {
        if (document.getElementById("claveProducto").value === "1028") {
            document.getElementById("tablaVentas").insertAdjacentHTML('afterend', '<td>1028</td> <td>Coca-Cola 600</td><td>$Coca Cola 600ml</td><td>$11.30 </td><td>1</td>');
            bandera = false;
        }
        if (document.getElementById("claveProducto").value === "1029") {
            document.getElementById("tablaVentas").insertAdjacentHTML('afterend', '<td>1029</td> <td>Coca-Cola 1</td><td>$Refresco Coca Cola 1L</td><td>$25.30 </td><td>1</td>');
            bandera = false;
        }
        if (document.getElementById("claveProducto").value === "1030") {
            document.getElementById("tablaVentas").insertAdjacentHTML('afterend', '<td>1030</td> <td>Coca-Cola L</td><td>Refresco Coca-Cola Lata</td><td>$6.30 </td><td>1</td>');
            bandera = false;
        }
        if(bandera === true){
            alert("Producto no encontrado");
            document.getElementById("claveProducto").value="";
        }
    } else {
        alert("Ingrese un codigo");
    }

}


function validaRFC() {

    var f = document.getElementById('rfc').value;
    if (f.length !== 13 && f.length > 0) {
        alert("La longitud del RFC es incorrecta debe de tener 13 caracteres");
        document.getElementById('rfc').value = "";
    }
}
function validarfecha()
{
    var temp = document.getElementById('fecha').value;
    if (temp === '')
        alert("DEBE SELECCIONAR UNA FECHA VALIDA");
}

function validarselect()
{
    var temp = document.getElementById('fecha').value;
    var aux = document.getElementById('cajas').value;
    if (temp === '')
        alert("DEBE SELECCIONAR UNA FECHA VALIDA");
    if (aux === '0')
        alert("DEBE SELECCIONAR UN ELEMENTO VALIDO");
}
function validarselect2()
{

    var tem = document.getElementById('fecha').value;
    var tem2 = document.getElementById('fecha1').value;
    var aux = document.getElementById('cajas').value;
    if (tem === '')
        alert("DEBE SELECCIONAR UNA FECHA DE INICIO VALIDA");
    if (tem2 === '')
        alert("DEBE SELECCIONAR UNA FECHA DE TERMINO VALIDA");
    if (aux === '0')
        alert("DEBE SELECCIONAR UN ELEMENTO VALIDO");
}



$(document).ready(function() {
    var selectmenu = $('#panel-botones'),
            seleccionado = selectmenu.find('a');

    seleccionado.click(function(e) {
        $(this).siblings('a.active').removeClass("active");
        $(this).addClass("active");
        var index = $(this).index();
        $("div.user-menu>div.user-menu-content").removeClass("active");
        $("div.user-menu>div.user-menu-content").eq(index).addClass("active");
    });
});


