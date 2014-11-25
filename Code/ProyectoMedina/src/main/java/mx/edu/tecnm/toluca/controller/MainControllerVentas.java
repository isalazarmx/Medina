package mx.edu.tecnm.toluca.controller;

/**
 *
 * @author Salvadorjr
*/

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainControllerVentas
{
    @RequestMapping(value = "Ventas/index", method = RequestMethod.GET)
    public String index()
    {
        return "Ventas/index";
    }

    @RequestMapping(value = "Ventas/AltaClientes", method = RequestMethod.GET)
    public String AltaClientes(Model model)
    {
        System.out.println("Entrando al contralador");
//        Clientes cliente = new Clientes();
//        model.addAttribute("clientes", cliente);
        return "Ventas/AltaClientes";
    }
    @RequestMapping(value = "Ventas/AddClientes", method = RequestMethod.POST)
//    public String AddCliente(Model model,Clientes clientes)
    public String AddCliente(Model model)
    {        
//        JdbcTemplate jdbcTemplate = ConexionDb.Connection();
//        jdbcTemplate.update("INSERT INTO clientes (municipio,calle,rfc) values(?,?,?)",clientes.getMunicipio(),clientes.getCalle(),clientes.getRfc());
        return "Ventas/AltaClientes";
    }


    @RequestMapping(value = "Ventas/AltaVentas", method = RequestMethod.GET)
    public String AltaVentas()
    {

        return "Ventas/AltaVentas";
    }

    @RequestMapping(value = "Ventas/CatalogoProductos", method = RequestMethod.GET)
    public String CatalogoProductos()
    {
        return "Ventas/CatalogoProductos";
    }

    @RequestMapping(value = "Ventas/ConsultaVenta", method = RequestMethod.GET)
    public String ConsultaVenta()
    {
        return "Ventas/ConsultaVenta";
    }

    @RequestMapping(value = "Ventas/ConsultarFactura", method = RequestMethod.GET)
    public String ConsultarFactura()
    {
        return "Ventas/ConsultarFactura";
    }

    @RequestMapping(value = "Ventas/GraficoVentas", method = RequestMethod.GET)
    public String GraficoVentas()
    {
        return "Ventas/GraficoVentas";
    }

    @RequestMapping(value = "Ventas/MontoTotalVenta", method = RequestMethod.GET)
    public String MontoTotalVenta()
    {
        return "Ventas/MontoTotalVenta";
    }

    @RequestMapping(value = "Ventas/OrdenVentaAceptada", method = RequestMethod.GET)
    public String OrdenVentaAceptada()
    {
        return "Ventas/OrdenVentaAceptada";
    }

    @RequestMapping(value = "Ventas/OrdenVentaPendiente", method = RequestMethod.GET)
    public String OrdenVentaPendiente()
    {
        return "Ventas/OrdenVentaPendiente";
    }

    @RequestMapping(value = "Ventas/OrdenVentaRechazada", method = RequestMethod.GET)
    public String OrdenVentaRechazada()
    {
        return "Ventas/OrdenVentaRechazada";
    }

    @RequestMapping(value = "Ventas/RealizarFactura", method = RequestMethod.GET)
    public String RealizarFactura()
    {
        return "Ventas/RealizarFactura";
    }

    @RequestMapping(value = "Ventas/ReportePorDia", method = RequestMethod.GET)
    public String ReportePorDia()
    {
        return "Ventas/ReportePorDia";
    }

    @RequestMapping(value = "Ventas/ReportePorPeriodo", method = RequestMethod.GET)
    public String ReportePorPeriodo()
    {
        return "Ventas/ReportePorPeriodo";
    }

    @RequestMapping(value = "Ventas/comisionEmpleados", method = RequestMethod.GET)
    public String comisionEmpleados()
    {
        return "Ventas/comisionEmpleados";
    }

    @RequestMapping(value = "Ventas/verClientes", method = RequestMethod.GET)
    public String verClientes()
    {
        return "Ventas/verClientes";
    }
}
