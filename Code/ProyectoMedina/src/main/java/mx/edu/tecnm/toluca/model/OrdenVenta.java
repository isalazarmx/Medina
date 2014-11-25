/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mx.edu.tecnm.toluca.model;

/**
 *
 * @author SalomonTM
 */
public class OrdenVenta {
private int idOrdenVenta;
private String fechaEntrega;
private String fechaVenta;
private String subTotal;
private int total;
private boolean aprobada;
private int idVendedor;
private int cliente_idcliente;
private int DatosVenta_idDatosVenta;
private String idFactura;

    /**
     * @return the idOrdenVenta
     */
    public int getIdOrdenVenta() {
        return idOrdenVenta;
    }

    /**
     * @param idOrdenVenta the idOrdenVenta to set
     */
    public void setIdOrdenVenta(int idOrdenVenta) {
        this.idOrdenVenta = idOrdenVenta;
    }

    /**
     * @return the fechaEntrega
     */
    public String getFechaEntrega() {
        return fechaEntrega;
    }

    /**
     * @param fechaEntrega the fechaEntrega to set
     */
    public void setFechaEntrega(String fechaEntrega) {
        this.fechaEntrega = fechaEntrega;
    }

    /**
     * @return the fechaVenta
     */
    public String getFechaVenta() {
        return fechaVenta;
    }

    /**
     * @param fechaVenta the fechaVenta to set
     */
    public void setFechaVenta(String fechaVenta) {
        this.fechaVenta = fechaVenta;
    }

    /**
     * @return the subTotal
     */
    public String getSubTotal() {
        return subTotal;
    }

    /**
     * @param subTotal the subTotal to set
     */
    public void setSubTotal(String subTotal) {
        this.subTotal = subTotal;
    }

    /**
     * @return the total
     */
    public int getTotal() {
        return total;
    }

    /**
     * @param total the total to set
     */
    public void setTotal(int total) {
        this.total = total;
    }

    /**
     * @return the aprobada
     */
    public boolean isAprobada() {
        return aprobada;
    }

    /**
     * @param aprobada the aprobada to set
     */
    public void setAprobada(boolean aprobada) {
        this.aprobada = aprobada;
    }

    /**
     * @return the idVendedor
     */
    public int getIdVendedor() {
        return idVendedor;
    }

    /**
     * @param idVendedor the idVendedor to set
     */
    public void setIdVendedor(int idVendedor) {
        this.idVendedor = idVendedor;
    }

    /**
     * @return the cliente_idcliente
     */
    public int getCliente_idcliente() {
        return cliente_idcliente;
    }

    /**
     * @param cliente_idcliente the cliente_idcliente to set
     */
    public void setCliente_idcliente(int cliente_idcliente) {
        this.cliente_idcliente = cliente_idcliente;
    }

    /**
     * @return the DatosVenta_idDatosVenta
     */
    public int getDatosVenta_idDatosVenta() {
        return DatosVenta_idDatosVenta;
    }

    /**
     * @param DatosVenta_idDatosVenta the DatosVenta_idDatosVenta to set
     */
    public void setDatosVenta_idDatosVenta(int DatosVenta_idDatosVenta) {
        this.DatosVenta_idDatosVenta = DatosVenta_idDatosVenta;
    }

    /**
     * @return the idFactura
     */
    public String getIdFactura() {
        return idFactura;
    }

    /**
     * @param idFactura the idFactura to set
     */
    public void setIdFactura(String idFactura) {
        this.idFactura = idFactura;
    }
}
