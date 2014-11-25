/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function validarDropDownOne(id, od) {
    var c = document.getElementById(id).selectedIndex;
     var d = document.getElementById(od).selectedIndex;
    if (c === 0) {
        alert("No ha seleccionado Mes");
        return false;
    }
     else if (d === 0) {
        alert("No ha seleccionado Año");
        return false;
    }
    return true;
}


function validarDropDownTwo(id, od) {
    var c = document.getElementById(id).selectedIndex;
   var d = document.getElementById(od).selectedIndex;
    if (c === 0) {
        alert("No ha seleccionado Periodo Inicio");
        return false;
    }
   else if (d === 0) {
        alert("No ha seleccionado Periodo Fin");
        return false;
    }
    return true;
}

function validarDropDownTree(id) {
    var c = document.getElementById(id).selectedIndex;
    if (c === 0) {
        alert("Seleccionar una Orden");
        return false;
    }
    return true;
}

function confirmEliminarCuenta(){
     var opt=confirm("Se eliminará esta cuenta\n\
                     ¿Esta seguro de realizar esta operación?");
    if (opt===true) {
        alert("Operación Realizada Exitosamente");
    }else{
        return false;
    }  
}

