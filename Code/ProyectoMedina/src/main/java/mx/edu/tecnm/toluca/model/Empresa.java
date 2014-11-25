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
public class Empresa {
    private int idEmpresa;
    private String nombre;
    private String razonSocial;
    private String rFC;
    private String capitalInicial;
    private String flujoEfectivo;
    private String domicilio;

    public Empresa(int idEmpresa, String nombre, String razonSocial, String rFC, String capitalInicial, String flujoEfectivo) {
        this.idEmpresa = idEmpresa;
        this.nombre = nombre;
        this.razonSocial = razonSocial;
        this.rFC = rFC;
        this.capitalInicial = capitalInicial;
        this.flujoEfectivo = flujoEfectivo;
    }
        
    
    public int getIdEmpresa() {
        return idEmpresa;
    }

    public void setIdEmpresa(int idEmpresa) {
        this.idEmpresa = idEmpresa;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getRazonSocial() {
        return razonSocial;
    }

    public void setRazonSocial(String razonSocial) {
        this.razonSocial = razonSocial;
    }

    public String getrFC() {
        return rFC;
    }

    public void setrFC(String rFC) {
        this.rFC = rFC;
    }

    public String getCapitalInicial() {
        return capitalInicial;
    }

    public void setCapitalInicial(String capitalInicial) {
        this.capitalInicial = capitalInicial;
    }

    public String getFlujoEfectivo() {
        return flujoEfectivo;
    }

    public void setFlujoEfectivo(String flujoEfectivo) {
        this.flujoEfectivo = flujoEfectivo;
    }

    public String getDomicilio() {
        return domicilio;
    }

    public void setDomicilio(String domicilio) {
        this.domicilio = domicilio;
    }
}
