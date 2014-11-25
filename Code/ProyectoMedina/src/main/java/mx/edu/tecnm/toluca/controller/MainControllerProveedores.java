/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.tecnm.toluca.controller;

import static mx.edu.tecnm.toluca.database.ConexionDB.Connection;
import mx.edu.tecnm.toluca.model.Proveedor;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Pablo RosHdz
 *
 */
@Controller
public class MainControllerProveedores {

    @RequestMapping(value = "Proveedores/index", method = RequestMethod.GET)
    public String index() {
        return "Proveedores/index";
    }

    @RequestMapping(value = "Proveedores/AltaProveedorView", method = RequestMethod.GET)
    public String altaProveedorView() {
        return "Proveedores/AltaProveedorView";
    }

    @RequestMapping(value = "Proveedores/BusquedaProveedorView", method = RequestMethod.GET)
    public String BusquedaProveedorView() {
        return "Proveedores/BusquedaProveedorView";
    }
    
    @RequestMapping(value = "Proveedores/ModificarProveedorView", method = RequestMethod.GET)
    public String ModificaProveedorView(){
        return "Proveedores/ModificarProveedorView";
    }
    @RequestMapping(value = "Proveedores/ProductoFabricacionView", method = RequestMethod.GET)
    public String ProductoView()
    {
        return "Proveedores/ProductoFabricacionView";
    }
    
    @RequestMapping(value = "Proveedores/guardarProveedor", method = RequestMethod.POST)
    public String guardarProveedor(Model model,
                                    String razonSocial,
                                    String rFC,
                                    String calle,
                                    String colonia,
                                    int numInt,
                                    int codigoPostal,
                                    int numExt,
                                    String poblacion,
                                    String nombre,
                                    String aPaterno,
                                    String aMaterno,
                                    String telefono,
                                    String email,
                                    String ip,
                                    String puertoComu
                                    )
    {
        
       Proveedor prov=new Proveedor();
       prov.setRazonSocial(razonSocial);
       prov.setrFC(rFC);
       prov.setNombre(nombre);
       prov.setaPaterno(aPaterno);
       prov.setaMaterno(aMaterno);
       prov.setTelefono(numInt);
       prov.setiP(ip);
       prov.setPuertoComunicacion(puertoComu);
       if(prov.save())
         return "Confirmacion/exito";
       else
        return "Proveedores/AltaProveedorView";   
    }
    
    
    
}
