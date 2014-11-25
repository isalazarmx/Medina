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
public class DatosBaja {
    private int idDatosBaja;
    private String descripcion;
    private String porcentajeLiquidacion;
    private String fechaBaja;

    /**
     * @return the idDatosBaja
     */
    public int getIdDatosBaja() {
        return idDatosBaja;
    }

    /**
     * @param idDatosBaja the idDatosBaja to set
     */
    public void setIdDatosBaja(int idDatosBaja) {
        this.idDatosBaja = idDatosBaja;
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
     * @return the porcentajeLiquidacion
     */
    public String getPorcentajeLiquidacion() {
        return porcentajeLiquidacion;
    }

    /**
     * @param porcentajeLiquidacion the porcentajeLiquidacion to set
     */
    public void setPorcentajeLiquidacion(String porcentajeLiquidacion) {
        this.porcentajeLiquidacion = porcentajeLiquidacion;
    }

    /**
     * @return the fechaBaja
     */
    public String getFechaBaja() {
        return fechaBaja;
    }

    /**
     * @param fechaBaja the fechaBaja to set
     */
    public void setFechaBaja(String fechaBaja) {
        this.fechaBaja = fechaBaja;
    }
    
}
