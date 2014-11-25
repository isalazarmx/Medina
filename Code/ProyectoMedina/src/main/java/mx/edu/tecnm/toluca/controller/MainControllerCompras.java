/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.tecnm.toluca.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Monse
 */
@Controller
public class MainControllerCompras {
    @RequestMapping(value = "Compras/Aprobacion", method = RequestMethod.GET)
    public String Aprobacion() {
        return "Compras/Aprobacion";
    }
@RequestMapping(value = "Compras/Busqueda", method = RequestMethod.GET)
    public String Busqueda() {
        return "Compras/Busqueda";
    }
@RequestMapping(value = "Compras/OrdenesCompra", method = RequestMethod.GET)
    public String OrdenesCompra() {
        return "Compras/OrdenesCompra";
    }
@RequestMapping(value = "Compras/index", method = RequestMethod.GET)
    public String index() {
        return "Compras/index";
    }
}
