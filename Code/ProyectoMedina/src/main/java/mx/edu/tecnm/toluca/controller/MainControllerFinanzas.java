/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.tecnm.toluca.controller;

import java.util.ArrayList;
import java.util.List;
import mx.edu.tecnm.toluca.model.Book;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Jesus
 */
@Controller
public class MainControllerFinanzas {
@RequestMapping(value="Finanzas/index",method=RequestMethod.GET)
    public String FinanazasIndex(){
        return "Finanzas/index";
    }
    @RequestMapping(value="/Finanzas/CatalogoCuentasView",method=RequestMethod.GET)
    public String FinanazasCatalogoCuentasView(){
        return "Finanzas/CatalogoCuentasView";
    }
    @RequestMapping(value="Finanzas/CatalogoVerView",method=RequestMethod.GET)
    public String FinanazasCatalogoVerView(){
        return "Finanzas/CatalogoVerView";
    }
    @RequestMapping(value="Finanzas/EstadoResultadosView",method=RequestMethod.GET)
    public String FinanazasEstadoResultadosView(){
        return "Finanzas/EstadoResultadosView";
    }
    @RequestMapping(value="Finanzas/BalanceGeneralView",method=RequestMethod.GET)
    public String FinanazasBalanceGeneralView(){
        return "Finanzas/BalanceGeneralView";
    }
    @RequestMapping(value="Finanzas/FlujoEfectivoView",method=RequestMethod.GET)
    public String FinanazasFlujoEfectivoView(){
        return "Finanzas/FlujoEfectivoView";
    }
    @RequestMapping(value="Finanzas/SeleccionAutorizacionView",method=RequestMethod.GET)
    public String FinanazasSeleccionAutorizacionView(){
        return "Finanzas/SeleccionAutorizacionView";
    }
    @RequestMapping(value="Finanzas/ReporteEstadoResultadosView",method=RequestMethod.POST)
    public String FinanazasReporteEstadoResultadosView(){
        return "Finanzas/ReporteEstadoResultadosView";
    }
    @RequestMapping(value="Finanzas/ReporteBalanceGeneralView",method=RequestMethod.POST)
    public String FinanazasReporteBalanceGeneralView(){
        return "Finanzas/ReporteBalanceGeneralView";
    }
    @RequestMapping(value="Finanzas/ReporteFlujoEfectivoView",method=RequestMethod.POST)
    public String FinanazasReporteFlujoEfectivoView(){
        return "Finanzas/ReporteFlujoEfectivoView";
    }
    @RequestMapping(value="Finanzas/AutorizacionView",method=RequestMethod.POST)
    public String FinanazasAutorizacionView(){
        return "Finanzas/AutorizacionView";
    }
    @RequestMapping(value = "/Finanzas/downloadPDF", method = RequestMethod.GET)
	public ModelAndView downloadPDF() {
            System.out.println("Al menos entro al metodo");
		// create some sample data
		List<Book> listBooks = new ArrayList<Book>();
		listBooks.add(new Book("Spring in Action", "Craig Walls", "1935182358",
				"June 29th 2011", 31.98F));
		listBooks.add(new Book("Spring in Practice", "Willie Wheeler, Joshua White",
				"1935182056", "May 16th 2013", 31.95F));
		listBooks.add(new Book("Pro Spring 3",
				"Clarence Ho, Rob Harrop", "1430241071", "April 18th 2012", 31.85F));
		listBooks.add(new Book("Spring Integration in Action", "Mark Fisher", "1935182439",
				"September 26th 2012", 28.73F));
		// return a view which will be resolved by an excel view resolver
		return new ModelAndView("downloadPDF", "listBooks", listBooks);
	}
}
