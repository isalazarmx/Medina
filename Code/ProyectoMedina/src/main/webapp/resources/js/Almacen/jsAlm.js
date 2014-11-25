/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function validaLlegadas(idD){      
    var b=validarDropDown(idD); 

    if (b===0) {
        return 0;
    };
       
}

function confirmarAltas(idD){
    var res=validarDropDown(idD);
    if (res!==0) {
             alert("Operación Exitosa");
    }else{
        return false;
    }
}


function confirmModificaciones1(idD){
    var res=validarDropDown(idD);
    if(res!==0){        
            alert("Operación Exitosa");        
    }else{
        return false;
    }     
}

function confirmModificaciones2(idI){    
    var res=document.getElementById(idI).value;

    if (res!=='') {
        var opt=confirm("Se eliminará el producto "+ res + " de almacen\n\
                     ¿Esta seguro de realizar esta operación?");
        if (opt===true) {
            alert("Operación Exitosa");
            location.reload();
        }else{
            return false;
        }        

    }else{
        alert("Sin nada que eliminar");
        return false;
    }
     
}

function confirmarLlegadas(idD){
    var res=validaLlegadas(idD);
    if (res!==0) {
            alert("Operación Exitosa");            
    }else{
        return false;
    }
    
}

