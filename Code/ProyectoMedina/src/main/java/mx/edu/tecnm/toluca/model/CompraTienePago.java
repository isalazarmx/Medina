/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.tecnm.toluca.model;

/**
 *
 * @author Pablo RosHdz
 */
public class CompraTienePago {
    private int OrdenCompra_idOrdenCompra;
    private int FormaPago_idFormaPago;

    /**
     * @return the OrdenCompra_idOrdenCompra
     */
    public int getOrdenCompra_idOrdenCompra() {
        return OrdenCompra_idOrdenCompra;
    }

    /**
     * @param OrdenCompra_idOrdenCompra the OrdenCompra_idOrdenCompra to set
     */
    public void setOrdenCompra_idOrdenCompra(int OrdenCompra_idOrdenCompra) {
        this.OrdenCompra_idOrdenCompra = OrdenCompra_idOrdenCompra;
    }

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
}
