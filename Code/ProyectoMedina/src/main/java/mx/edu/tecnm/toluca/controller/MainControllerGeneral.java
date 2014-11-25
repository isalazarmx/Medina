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
 * @author K-PB-C05-L01
 */
@Controller
public class MainControllerGeneral {

//    @RequestMapping(value = "/Adiciona", method = RequestMethod.GET)
//    public String processGet(int x, int y, Model model) {
//        return "/add";
//    }
      @RequestMapping(value = "General/cargarLogin", method = RequestMethod.GET)
    public String cargarLogin(Model model) {
        model.addAttribute("Error","");
        return "General/login";
    }
    
    @RequestMapping(value = "General/login", method = RequestMethod.POST)
    public String login(String user, String pass,Model model) {
        String err="";
        System.out.println(user+"u");
        System.out.println(pass+"p");
        if(user !=null && pass!=null)
        {
            switch(user)
            {
                case "RecursosHumanos":
                    return "RecursosHumanos/index";
                    
                case "AdminActivos":
                    return "Activos/index";
                   
                case "Almacen":
                    return "Almacen/index.html";
                    
                case "Clientes":
                    return "Clientes/index.html";
                   
                case "Compras":
                    return "Compras/index.html";
                    
                case "Direccion":
                    return "Direccion/index.html";
                   
                case "Finanzas":
                    return "Finanzas/index.html";
                    
                case "Proveedores":
                   return "Proveedores/index";
                    
                case "Ventas":
                    return "Ventas/index.html";
                                
            }
        model.addAttribute("Error", err);
        
    }   
        System.out.println("Antes Login");
        return "login";
    }
    
    
    
    }
    
    
