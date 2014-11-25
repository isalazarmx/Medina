/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mx.edu.tecnm.toluca.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Carlos
 */
@Controller
public class MainControllerClientes {
    @RequestMapping(value = "Clientes/AltaClienteView", method = RequestMethod.GET)
    public String AltaClienteView() {
        return "Clientes/AltaClienteView";
    }
    
    @RequestMapping(value = "Clientes/BuscarClienteView", method = RequestMethod.GET)
    public String BuscarClienteView(){
        return "Clientes/BuscarClienteView";
    }
    
    @RequestMapping(value = "Clientes/ModificarClienteView", method = RequestMethod.GET)
    public String ModificarClienteView(){
        return "Clientes/ModificarClienteView";
    }
    
    @RequestMapping(value = "Clientes/index", method = RequestMethod.GET)
    public String index(){
        return "Clientes/index";
    }
    
    
            
    
}
