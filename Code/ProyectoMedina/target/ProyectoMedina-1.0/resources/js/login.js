$(document).ready(function () {
    $('#rhTabla').dataTable({
        "language": {
            "url": "https://cdn.datatables.net/plug-ins/380cb78f450/i18n/Spanish.json"
        }
    });
    $('#activosTabla').dataTable({
        "language": {
            "url": "https://cdn.datatables.net/plug-ins/380cb78f450/i18n/Spanish.json"
        }
    });
    $('#almacenTabla').dataTable({
        "language": {
            "url": "https://cdn.datatables.net/plug-ins/380cb78f450/i18n/Spanish.json"
        }
    });
    $('#comprasTabla').dataTable({
        "language": {
            "url": "https://cdn.datatables.net/plug-ins/380cb78f450/i18n/Spanish.json"
        }
    });
    $('#direccionTabla').dataTable({
        "language": {
            "url": "https://cdn.datatables.net/plug-ins/380cb78f450/i18n/Spanish.json"
        }
    });
    $('#finanzasTabla').dataTable({
        "language": {
            "url": "https://cdn.datatables.net/plug-ins/380cb78f450/i18n/Spanish.json"
        }
    });
    $('#ventasTabla').dataTable({
        "language": {
            "url": "https://cdn.datatables.net/plug-ins/380cb78f450/i18n/Spanish.json"
        }
    });
    $('#vacacionesTabla').dataTable({
        "language": {
            "url": "https://cdn.datatables.net/plug-ins/380cb78f450/i18n/Spanish.json"
        }
    });
});

function redirectModificarEmp()
{
    window.location = "ModificarUsuario.html";
    alert("Esta función no está disponible por el momento");
}

function validaLogin()
{
    var usuario = document.forms["login"]["usuario"].value;
    var password = document.forms["login"]["password"].value;

    if (usuario !== "")
    {
        if (password !== "")
        {
            return true;
            
        } else {
            alert("Ingresa la contraseña.")
        }
    } else {
        alert("Ingresa el usuario.")
    }
}

function validaNuevoUsuario()
{
    var lista1 = $(".listaDepa").val();
    var lista2 = $(".listaPuesto").val();
    if (lista1 == "Seleccione departamento")
    {
        alert("Seleccione un departamento");
        return false;
    } else
    {
        if (lista2 == "Seleccione puesto")
        {
            alert("Seleccione el puesto");
            return false;
        }
        alert("Nuevo usuario dado de alta satisfactoriamente.");
    }
}

function validaModificaUsuario()
{
    var lista1 = $(".nuevoDepa").val();
    var lista2 = $(".nuevoPuesto").val();
    if (lista1 == "Seleccione departamento")
    {
        alert("Seleccione un departamento");
        return false;
    } else
    {
        if (lista2 == "Seleccione puesto")
        {
            alert("Seleccione el puesto");
            return false;
        }
        alert("Usuario modificado satisfactoriamente.");
    }
}

function checarFecha() {
    var fecha1 = document.getElementById("fecha1").value;
    console.log(fecha1);
    var fecha2 = document.getElementById("fecha2").value;
    console.log(fecha2);

    var date1 = new Date(fecha1);
    console.log(date1);
    var date2 = new Date(fecha2);
    console.log(date2);

    if (date1 < date2) {
        alert("Sus Vacaciones Se Asignaron Correctamente");
    } else {
        alert("Error En Los Campos De Fechas");
    }

}

function buscaNoValido()
{
    alert("Característica aún no implementada.");
}