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
public class MainControllerActivosFijos {
    @RequestMapping(value = "ActivosFijos/bajaDeActivoView", method = RequestMethod.GET)
    public String bajaDeActivoView() {
        return "ActivosFijos/bajaDeActivoView";
    }
    
    @RequestMapping(value = "ActivosFijos/index", method = RequestMethod.GET)
    public String index() {
        return "ActivosFijos/index";
    }
    
    @RequestMapping(value = "ActivosFijos/informacionDeActivoView", method = RequestMethod.GET)
    public String informacionDeActivoView() {
        return "ActivosFijos/informacionDeActivoView";
    }
    
    @RequestMapping(value = "ActivosFijos/reevaluacionDeActivoView", method = RequestMethod.GET)
    public String reevaluacionDeActivoView() {
        return "ActivosFijos/reevaluacionDeActivoView";
    }
    
    @RequestMapping(value = "ActivosFijos/registroDeActivoView", method = RequestMethod.GET)
    public String registroDeActivoView() {
        return "ActivosFijos/registroDeActivoView";
    }
    
    @RequestMapping(value = "ActivosFijos/solicitudDeActivoView", method = RequestMethod.GET)
    public String solicitudDeActivoView() {
        return "ActivosFijos/solicitudDeActivoView";
    }
    
}
