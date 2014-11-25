/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mx.edu.tecnm.toluca.controller;

/**
 *
 * @author Eddy
 */

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class MainControllerAlmacen {
     @RequestMapping(value = "Almacen/AltaProductoView", method = RequestMethod.GET)
    public String AltaProductoView() {
    return "Almacen/AltaProductoView";
       
    }
     @RequestMapping(value = "Almacen/ConsultaProductoView", method = RequestMethod.GET)
    public String ConsultaProductoView (){
    return "Almacen/ConsultaProductoView";
       
    }
    @RequestMapping(value = "Almacen/index", method = RequestMethod.GET)
    public String index(){
    return "Almacen/index";
       
    }
     @RequestMapping(value = "Almacen/LlegadaProductoView", method = RequestMethod.GET)
    public String LlegadaProductoView (){
    return "Almacen/LlegadaProductoView";
       
    }
      @RequestMapping(value = "Almacen/ModificaProductoView", method = RequestMethod.GET)
    public String ModicaProductoView() {
    return "Almacen/ModificaProductoView";
       
    }
}
