function noFuncional2()
{
	var producto=document.getElementById("comboProducto");
	var componente=document.getElementById("comboComponente");
	var cantidad=document.getElementById("cantidad");
	producto=producto.value;
	componente=componente.value;
	cantidad=cantidad.value;
	
	if(producto==0)
	{
		alert("Selecciona un Producto");
		return false;
	}else 
	{
		if(componente==0)
		{
			alert("Selecciona un Componente");
			return false;
		}
	}
}

function exito()
{
	alert("Operación Exitosa");
}