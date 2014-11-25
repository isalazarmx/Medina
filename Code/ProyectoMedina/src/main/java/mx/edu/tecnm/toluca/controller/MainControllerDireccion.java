/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.tecnm.toluca.controller;

import java.util.ArrayList;
import java.util.List;
//import mx.edu.tecnm.toluca.model.ReportePdf;
import org.springframework.stereotype.Controller;

/**
 *
 * @author Jorge
 */
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainControllerDireccion
{
 @RequestMapping(value = "Direccion/index",method = RequestMethod.GET)
 public String index()
 {
  System.out.println("ALGO");
  return "Direccion/index";
 }
 
 @RequestMapping(value = "Direccion/Dashboard",method = RequestMethod.GET)
 public String dashboard()
 {
  return "Direccion/Dashboard";
 }
 
 @RequestMapping(value = "Direccion/Graficas",method = RequestMethod.GET)
 public String graficas()
 {
  return "Direccion/Graficas";
 }
 
 @RequestMapping(value = "Direccion/Proyecciones",method = RequestMethod.GET)
 public String proyecciones()
 {
  return "Direccion/Proyecciones";
 }
 
 @RequestMapping(value = "Direccion/verMensaje",method = RequestMethod.GET)
 public String verMensaje()
 {
  return "Direccion/verMensaje";
 }
 
 @RequestMapping(value = "Direccion/edicionNotificaciones",method = RequestMethod.GET)
 public String edicionNotificaciones()
 {
  return "Direccion/edicionNotificaciones";
 }
 
 @RequestMapping(value = "Direccion/formatoReporte",method = RequestMethod.GET)
 public String formatoReporte()
 {
  return "Direccion/formatoReporte";
 }
 
 @RequestMapping(value = "Direccion/historial",method = RequestMethod.GET)
 public String historial()
 {
  return "Direccion/historial";
 }
 
 @RequestMapping(value = "Direccion/verReportePdf",method = RequestMethod.GET)
 public String verReportePdf()
 {
  return "Direccion/verReportePdf";
 }
 
// @RequestMapping
// public ModelAndView descargarPdf()
// {
//          // create some sample data
//        List<ReportePdf> listBooks = new ArrayList<ReportePdf>();
//        listBooks.add(new ReportePdf("Spring in Action", "Craig Walls", "1935182358",
//                "June 29th 2011", 31.98F));
//        listBooks.add(new ReportePdf("Spring in Practice", "Willie Wheeler, Joshua White",
//                "1935182056", "May 16th 2013", 31.95F));
//        listBooks.add(new ReportePdf("Pro Spring 3",
//                "Clarence Ho, Rob Harrop", "1430241071", "April 18th 2012", 31.85F));
//        listBooks.add(new ReportePdf("Spring Integration in Action", "Mark Fisher", "1935182439",
//                "September 26th 2012", 28.73F));
// 
//        // return a view which will be resolved by an excel view resolver
//        return new ModelAndView("pdfView", "listBooks", listBooks);
// }
}