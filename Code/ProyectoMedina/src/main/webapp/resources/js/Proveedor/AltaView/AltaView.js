// JavaScript Document

function validar()
{
    var num = soloNumeros()
    var tel = document.getElementById("Telefono");
    longitudTelefono(tel);
}

function longitudTelefono(tel)
{

    //alert(tel.g);
}

function validaALtaProveedor(ip)
{
    
    
     alert("Alta exitosa");   
        
    
    
   
}

function ValidateIPaddress(ip)
{
    var ipformat = /^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$/;
    val=0;
    
     if (ip.value.match(ipformat))
    {
        
        val =1;
    }
    else
    {
        val=0;
    }
    
    
    if (val==0)
    {
        alert("IP Invalida");
        return false;
    }
   
}
