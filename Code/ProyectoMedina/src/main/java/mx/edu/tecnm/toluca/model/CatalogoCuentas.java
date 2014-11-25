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
public class CatalogoCuentas {
    private int idCatalogoCuentas;
    private String descripcion;
    private String haber;
    private String deber;
    private int Empresa_idEmpresa;

    public CatalogoCuentas(int idCatalogoCuentas, String descripcion, String haber, String deber, int Empresa_idEmpresa) {
        this.idCatalogoCuentas = idCatalogoCuentas;
        this.descripcion = descripcion;
        this.haber = haber;
        this.deber = deber;
        this.Empresa_idEmpresa = Empresa_idEmpresa;
    }

    
    
    public int getIdCatalogoCuentas() {
        return idCatalogoCuentas;
    }

    public void setIdCatalogoCuentas(int idCatalogoCuentas) {
        this.idCatalogoCuentas = idCatalogoCuentas;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getHaber() {
        return haber;
    }

    public void setHaber(String haber) {
        this.haber = haber;
    }

    public String getDeber() {
        return deber;
    }

    public void setDeber(String deber) {
        this.deber = deber;
    }

    public int getEmpresa_idEmpresa() {
        return Empresa_idEmpresa;
    }

    public void setEmpresa_idEmpresa(int Empresa_idEmpresa) {
        this.Empresa_idEmpresa = Empresa_idEmpresa;
    }
}
