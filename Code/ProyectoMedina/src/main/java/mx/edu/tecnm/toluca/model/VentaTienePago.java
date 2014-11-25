/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.tecnm.toluca.model;

/**
 *
 * @author Jesus
 */
public class VentaTienePago {
    private int FormaPago_idFormaPago;
    private int OrdenVenta_idOrdenVenta;

    /**
     * @return the FormaPago_idFormaPago
     */
    public int getFormaPago_idFormaPago() {
        return FormaPago_idFormaPago;
    }

    /**
     * @param FormaPago_idFormaPago the FormaPago_idFormaPago to set
     */
    public void setFormaPago_idFormaPago(int FormaPago_idFormaPago) {
        this.FormaPago_idFormaPago = FormaPago_idFormaPago;
    }

    /**
     * @return the OrdenVenta_idOrdenVenta
     */
    public int getOrdenVenta_idOrdenVenta() {
        return OrdenVenta_idOrdenVenta;
    }

    /**
     * @param OrdenVenta_idOrdenVenta the OrdenVenta_idOrdenVenta to set
     */
    public void setOrdenVenta_idOrdenVenta(int OrdenVenta_idOrdenVenta) {
        this.OrdenVenta_idOrdenVenta = OrdenVenta_idOrdenVenta;
    }
}
