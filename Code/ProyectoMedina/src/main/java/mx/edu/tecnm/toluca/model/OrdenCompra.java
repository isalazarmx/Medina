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
public class OrdenCompra {
    private int idOrdenCompra;
    private String fechaCompra;
    private String fechaEntrega;
    private int subTotal;
    private int total;
    private boolean activoFijo;
    private boolean aprobada;
    private int DatosCompra_idDatosCompra;
    private int Proveedor_idProveedor;

    /**
     * @return the idOrdenCompra
     */
    public int getIdOrdenCompra() {
        return idOrdenCompra;
    }

    /**
     * @param idOrdenCompra the idOrdenCompra to set
     */
    public void setIdOrdenCompra(int idOrdenCompra) {
        this.idOrdenCompra = idOrdenCompra;
    }

    /**
     * @return the fechaCompra
     */
    public String getFechaCompra() {
        return fechaCompra;
    }

    /**
     * @param fechaCompra the fechaCompra to set
     */
    public void setFechaCompra(String fechaCompra) {
        this.fechaCompra = fechaCompra;
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
     * @return the subTotal
     */
    public int getSubTotal() {
        return subTotal;
    }

    /**
     * @param subTotal the subTotal to set
     */
    public void setSubTotal(int subTotal) {
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
     * @return the activoFijo
     */
    public boolean isActivoFijo() {
        return activoFijo;
    }

    /**
     * @param activoFijo the activoFijo to set
     */
    public void setActivoFijo(boolean activoFijo) {
        this.activoFijo = activoFijo;
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
     * @return the DatosCompra_idDatosCompra
     */
    public int getDatosCompra_idDatosCompra() {
        return DatosCompra_idDatosCompra;
    }

    /**
     * @param DatosCompra_idDatosCompra the DatosCompra_idDatosCompra to set
     */
    public void setDatosCompra_idDatosCompra(int DatosCompra_idDatosCompra) {
        this.DatosCompra_idDatosCompra = DatosCompra_idDatosCompra;
    }

    /**
     * @return the Proveedor_idProveedor
     */
    public int getProveedor_idProveedor() {
        return Proveedor_idProveedor;
    }

    /**
     * @param Proveedor_idProveedor the Proveedor_idProveedor to set
     */
    public void setProveedor_idProveedor(int Proveedor_idProveedor) {
        this.Proveedor_idProveedor = Proveedor_idProveedor;
    }
    
}
