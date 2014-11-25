/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.tecnm.toluca.model;

/**
 *
 * @author Monse
 */
public class FormaPago {
    private int idFormaPago;
    private String descripcion;
    private boolean liquidada;
    private String fechaLimitePago;

    /**
     * @return the idFormaPago
     */
    public int getIdFormaPago() {
        return idFormaPago;
    }

    /**
     * @param idFormaPago the idFormaPago to set
     */
    public void setIdFormaPago(int idFormaPago) {
        this.idFormaPago = idFormaPago;
    }

    /**
     * @return the descripcion
     */
    public String getDescripcion() {
        return descripcion;
    }

    /**
     * @param descripcion the descripcion to set
     */
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    /**
     * @return the liquidada
     */
    public boolean isLiquidada() {
        return liquidada;
    }

    /**
     * @param liquidada the liquidada to set
     */
    public void setLiquidada(boolean liquidada) {
        this.liquidada = liquidada;
    }

    /**
     * @return the fechaLimitePago
     */
    public String getFechaLimitePago() {
        return fechaLimitePago;
    }

    /**
     * @param fechaLimitePago the fechaLimitePago to set
     */
    public void setFechaLimitePago(String fechaLimitePago) {
        this.fechaLimitePago = fechaLimitePago;
    }
}
