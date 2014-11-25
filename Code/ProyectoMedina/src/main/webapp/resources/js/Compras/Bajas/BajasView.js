function confirmarSelect(idD)
{
    var res=validarDropDown(idD);
    if (res!==0) 
    {
        confirmarBorrado();
    }
    else
    {
        return false;
    }
}

function confirmarBorrado()
{
    if (confirm("¿Seguro quiere borrar la Orden de Compra seleccionada?"))
    alert("Funcion no disponible")
    return " "
}