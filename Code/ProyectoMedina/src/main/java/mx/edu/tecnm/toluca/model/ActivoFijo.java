/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mx.edu.tecnm.toluca.model;

/**
 *
 * @author SATELLITE
 */
public class ActivoFijo {
    
    private int idActivoFijo;
    private int depreciacion; 
    private int valorActual; 
    private String descripcionBaja; 
    private String fechaUltimaRevision; 
    private String fechaRenovacion; 
    
    
    public ActivoFijo(int idActivoFijo, int depreciacion, int valorActual, String descripcionBaja, String fechaUltimaRevision, String fechaRenovacion) {
        this.idActivoFijo = idActivoFijo;
        this.depreciacion = depreciacion;
        this.valorActual = valorActual;
        this.descripcionBaja = descripcionBaja;
        this.fechaUltimaRevision = fechaUltimaRevision;
        this.fechaRenovacion = fechaRenovacion;
    }
    

    public int getIdActivoFijo() {
        return idActivoFijo;
    }

    public void setIdActivoFijo(int idActivoFijo) {
        this.idActivoFijo = idActivoFijo;
    }

    public int getDepreciacion() {
        return depreciacion;
    }

    public void setDepreciacion(int depreciacion) {
        this.depreciacion = depreciacion;
    }

    public int getValorActual() {
        return valorActual;
    }

    public void setValorActual(int valorActual) {
        this.valorActual = valorActual;
    }

    public String getDescripcionBaja() {
        return descripcionBaja;
    }

    public void setDescripcionBaja(String descripcionBaja) {
        this.descripcionBaja = descripcionBaja;
    }

    public String getFechaUltimaRevision() {
        return fechaUltimaRevision;
    }

    public void setFechaUltimaRevision(String fechaUltimaRevision) {
        this.fechaUltimaRevision = fechaUltimaRevision;
    }

    public String getFechaRenovacion() {
        return fechaRenovacion;
    }

    public void setFechaRenovacion(String fechaRenovacion) {
        this.fechaRenovacion = fechaRenovacion;
    }
}
