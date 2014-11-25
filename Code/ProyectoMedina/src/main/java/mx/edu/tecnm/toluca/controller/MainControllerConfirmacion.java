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
public class MainControllerConfirmacion {

//    @RequestMapping(value = "/Adiciona", method = RequestMethod.GET)
//    public String processGet(int x, int y, Model model) {
//        return "/add";
//    }
    
    @RequestMapping(value = "exito", method = RequestMethod.GET)
    public String index() {
        return "exito";
    }
    
    
    
    
    }
    
    
