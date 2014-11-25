function confirmarSelect(idD, idU)
{
    var res=validarDropDown(idD);
    var res2=validarDropDown(idU);
    if (res!==0) 
    {
        if (res2!==0) 
        {
            noFuncional();
        }
        else
        {       
            alert("Falta un producto");
            return false;
        }
    }
    else
    {
        alert("Falta un proveedor");
        return false;
    }
}
// JavaScript Document