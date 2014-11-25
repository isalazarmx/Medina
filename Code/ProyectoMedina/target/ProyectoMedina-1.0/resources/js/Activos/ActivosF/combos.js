
function Registro() {
    var categoria = document.getElementById('categoria').selectedIndex;
    var subcategoria = document.getElementById('subcategoria').selectedIndex;   
    

    if (categoria == null || categoria == 0) {
        alert("Selecciona una categoría");
        return false;
    }
    if (subcategoria == null || subcategoria == 0 || subcategoria == 1 || subcategoria == 8 || subcategoria == 14 || subcategoria == 21 || subcategoria == 22) {
        alert("Selecciona una subcategoría");
        return false;
    }
    
    alert("Operación Exitosa");
    return true;
}

function VerActivos() {
    var categoria = document.getElementById('categoria').selectedIndex;
    var subcategoria = document.getElementById('subcategoria').selectedIndex;

    if (categoria == null || categoria == 0) {
        alert("Selecciona una categoría");
        return false;
    }
    if (subcategoria == null || subcategoria == 0 || subcategoria == 1 || subcategoria == 8 || subcategoria == 14 || subcategoria == 21 || subcategoria == 22) {
        alert("Selecciona una subcategoría");
        return false;
    }
alert("Esta función no esta disponible por el momento");
    return true;
}

function soloNumeros(e) {
    e = e || event;
    var chr = getChar(e);

    if (e.which === 32) {
        return false;
    } else if (!isNumeric(chr) && chr !== null) {
        return false;
    }
}



function Motivo() {
    var valor = document.getElementById('motivo').value;
    if (valor == '') {
        return false;
    }
    var opt=confirm("Se eliminará el producto "+ valor + " de almacen\n\
                     ¿Esta seguro de realizar esta operación?");
        if (opt===true) {
            alert("Operación Exitosa");
        }else{
            return false;
        }    
}

function Reevaluacion() {
    var valor = document.getElementById('valuacion').value;  
    var fecha1=document.getElementById('fecha').value;
    if (isNaN(valor) || valor == '') {
        return false;
    }
    if (fecha1==null || fecha1==''){
    alert('Seleccione una Fecha ');
    return false;
}
    alert("Operación Exitosa");
    return true;
}
function Solicitud() {
    var categoria = document.getElementById('categoria').selectedIndex;
    var subcategoria = document.getElementById('subcategoria').selectedIndex;    

   if (categoria == null || categoria == 0) {
        alert("Selecciona una categoría");
        return false;
    }
    if (subcategoria == null || subcategoria == 0 || subcategoria == 1 || subcategoria == 8 || subcategoria == 14 || subcategoria == 21 || subcategoria == 22) {
        alert("Selecciona una subcategoría");
        return false;
    }

alert("Operación Exitosa");
    return true;
}



