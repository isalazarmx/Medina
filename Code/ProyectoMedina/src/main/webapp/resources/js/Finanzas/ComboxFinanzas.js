/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/** * Funcion que se ejecuta al seleccionar una opcion del primer select */ 
function cargarCategoria(valor) { 
    /** 
     * Este array contiene los valores sel segundo select 
     * Los valores del mismo son: 
     * - hace referencia al value del primer select. Es para saber que valores 
     * mostrar una vez se haya seleccionado una opcion del primer select 
     * - value que se asignara * - testo que se asignara */ 
    var arrayValores=new Array(
//            primer categoría
            new Array(1,1,"Circulante"), 
            new Array(1,2,"Fijo"), 
            new Array(1,3,"Otros Activos"), 
            new Array(1,4,"Diferido"), 
//            segunda categoría
            new Array(2,1,"A corto plazo"), 
            new Array(2,2,"Administración"),
            new Array(2,3,"Otros pasivos"),
//            tercera categoría
            new Array(3,1,"No presupuestales"), 
            new Array(3,2,"Egresos"), 
            new Array(3,3,"Ingresos y egresos")
        ); 
    if(valor==0) {
        // desactivamos el segundo select 
        document.getElementById("categoria").disabled=true; 
        document.getElementById("subCategoria").disabled=true; 
        document.getElementById("cuenta").disabled=true; 
    }else{ 
        // eliminamos todos los posibles valores que contenga el select2 
        document.getElementById("categoria").options.length=0; 
        //añadimos los nuevos valores al select2 
        document.getElementById("categoria").options[0]=new Option("Consultar por categoría", "0"); 
        for(i=0;i<arrayValores.length;i++) { 
            // unicamente añadimos las opciones que pertenecen al id seleccionado 
            // del primer select 
            if(arrayValores[i][0]==valor) { 
                document.getElementById("categoria").options[document.getElementById("categoria").options.length]
                        = new Option(arrayValores[i][2], arrayValores[i][1]); 
            } 
        } // habilitamos el segundo select 
        document.getElementById("categoria").disabled=false; 
    }
}

function cargarSubCategoria() { 
    /** 
     * Este array contiene los valores sel segundo select 
     * Los valores del mismo son: 
     * - hace referencia al value del primer select. Es para saber que valores 
     * mostrar una vez se haya seleccionado una opcion del primer select 
     * - value que se asignara * - testo que se asignara */ 
    var v1 = document.getElementById("tipo"); 
    var valor1 = v1.options[v1.selectedIndex].value;
    var v2 = document.getElementById("categoria"); 
    var valor = v2.options[v2.selectedIndex].value;
    if(valor1 == 1){
        var arrayValores=new Array(
    //            primer 1-categoría-1subcategoria
                new Array(1,1,"Erario"), 
                new Array(1,2,"Administración"), 
                new Array(1,3,"Inventarios"), 
                new Array(1,4,"Complementario"), 
    //            segunda 1-categoría-2subcategoria
                new Array(2,1,"Erario"), 
                new Array(2,2,"Bienes Muebles"),
                new Array(2,3,"Bienes Inmuebles"),
                new Array(2,4,"Arrendamiento financiero"),
                new Array(2,5,"Comodato"),
                new Array(2,7,"Complementario"),
                new Array(2,8,"Bienes nacionales"),
    //            tercera 1-categoría-3subcategoria
                new Array(3,1,"Administración"),
    //            cuarte 1-categoría-4subcategoria
                new Array(4,1,"Administración")
                        );
    }else if(valor1 == 2)
    {
        var arrayValores=new Array(
//            primer 2-categoría-1subcategoria
            new Array(1,1,"Erario"), 
            new Array(1,2,"Administración"), 
            new Array(1,3,"Inventarios"), 
            new Array(1,4,"Complementario"), 
//            segunda 2-categoría-2subcategoria
            new Array(2,1,"Intereses por pagar de arrendamiento financiero"), 
//            tercera 2-categoría-3subcategoria
            new Array(3,1,"Administración"),
            new Array(3,2,"Complementario")
        ); 
    }else if(valor1 == 3)
    {
        var arrayValores=new Array(
//            primer 2-categoría-1subcategoria
            new Array(1,1,"Beneficios diversos"),
//            segunda 2-categoría-2subcategoria
            new Array(2,1,"Presupuestarios"), 
            new Array(2,2,"No presupuestarios"), 
//            tercera 2-categoría-3subcategoria
            new Array(3,1,"No presupuestarios")
        ); 
    }
if(valor==0) {
    // desactivamos el segundo select 
    document.getElementById("subCategoria").disabled=true; 
    document.getElementById("cuenta").disabled=true; 
}else{ 
    // eliminamos todos los posibles valores que contenga el select2 
    document.getElementById("subCategoria").options.length=0; 
    //añadimos los nuevos valores al select2 
    document.getElementById("subCategoria").options[0]=new Option("Consultar por subcategoría", "0"); 
    for(i=0;i<arrayValores.length;i++) { 
        // unicamente añadimos las opciones que pertenecen al id seleccionado 
        // del primer select 
        if(arrayValores[i][0]==valor) { 
            document.getElementById("subCategoria").options[document.getElementById("subCategoria").options.length]
                    = new Option(arrayValores[i][2], arrayValores[i][1]); 
        } 
    } // habilitamos el segundo select 
    document.getElementById("subCategoria").disabled=false; 
}
}

function cargarCuenta() { 
    /** 
     * Este array contiene los valores sel segundo select 
     * Los valores del mismo son: 
     * - hace referencia al value del primer select. Es para saber que valores 
     * mostrar una vez se haya seleccionado una opcion del primer select 
     * - value que se asignara * - testo que se asignara */ 
    var v2 = document.getElementById("subCategoria"); 
    var valor = v2.options[v2.selectedIndex].value;
    var arrayValores=new Array(
//            primer categoría
            new Array(1,1,"Caja"), 
            new Array(1,2,"Bancos"), 
            new Array(1,3,"Mercancias, Inventarios, Almacen"), 
            new Array(1,4,"Clientes"), 
//            segunda categoría
            new Array(2,1,"Terrenos"), 
            new Array(2,2,"Edificos O Construcciones"),
            new Array(2,3,"Mobiliario y Equipo"),
            new Array(2,4,"Equipo de Cómputo Electrónico"),
//            tercera categoría
            new Array(3,1,"Gastos de Organización"), 
            new Array(3,2,"Gastos de instalación"), 
            new Array(3,3,"Papelería y Útiles"),
            new Array(3,4,"Propaganda y publicidad")
        ); 
    if(valor==0) {
        // desactivamos el segundo select 
        document.getElementById("cuenta").disabled=true; 
    }else{ 
        // eliminamos todos los posibles valores que contenga el select2 
        document.getElementById("cuenta").options.length=0; 
        //añadimos los nuevos valores al select2 
        document.getElementById("cuenta").options[0]=new Option("Consultar por cuenta", "0"); 
        for(i=0;i<arrayValores.length;i++) { 
            // unicamente añadimos las opciones que pertenecen al id seleccionado 
            // del primer select 
            if(arrayValores[i][0]==valor) { 
                document.getElementById("cuenta").options[document.getElementById("cuenta").options.length]
                        = new Option(arrayValores[i][2], arrayValores[i][1]); 
            } 
        } // habilitamos el segundo select 
        document.getElementById("cuenta").disabled=false; 
    }
}

/** 
* Una vez selecciona una valor del segundo selecte, obtenemos la información 
* de los dos selects y la mostramos 
* */ 
function seleccinado_select2(value) { 
var v1 = document.getElementById("select1"); 
var valor1 = v1.options[v1.selectedIndex].value; 
var text1 = v1.options[v1.selectedIndex].text; 
var v2 = document.getElementById("select2"); 
var valor2 = v2.options[v2.selectedIndex].value; 
var text2 = v2.options[v2.selectedIndex].text; 
alert("Se ha seleccionado el valor "+valor1+" ("+text1+") del primer select y el valor "+valor2+" ("+text2+") del segundo select"); 
} 

