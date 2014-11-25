/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function confirmEliminarProv(id){
     var opt=confirm("Se eliminará esta cuenta\n\
                     ¿Esta seguro de realizar esta operación?");
    if(id!=0)
    {
        if (opt===true) {
            alert("Operación Realizada Exitosamente");
        }else{
            return false;
        }
    }
}