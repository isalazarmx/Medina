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
public class DatosFactura {
    private int idDatosFactura;
    private String razonSocial;
    private String RFC;
    private String telefono;
    private String correoElectronico;
    private String calle;
    private String numero;
    private String delegacion;

    public DatosFactura(int idDatosFactura, String razonSocial, String RFC, String telefono, String correoElectronico, String calle, String numero, String delegacion) {
        this.idDatosFactura = idDatosFactura;
        this.razonSocial = razonSocial;
        this.RFC = RFC;
        this.telefono = telefono;
        this.correoElectronico = correoElectronico;
        this.calle = calle;
        this.numero = numero;
        this.delegacion = delegacion;
    }

    
    
    public int getIdDatosFactura() {
        return idDatosFactura;
    }

    public void setIdDatosFactura(int idDatosFactura) {
        this.idDatosFactura = idDatosFactura;
    }

    public String getRazonSocial() {
        return razonSocial;
    }

    public void setRazonSocial(String razonSocial) {
        this.razonSocial = razonSocial;
    }

    public String getRFC() {
        return RFC;
    }

    public void setRFC(String RFC) {
        this.RFC = RFC;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getCorreoElectronico() {
        return correoElectronico;
    }

    public void setCorreoElectronico(String correoElectronico) {
        this.correoElectronico = correoElectronico;
    }

    public String getCalle() {
        return calle;
    }

    public void setCalle(String calle) {
        this.calle = calle;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public String getDelegacion() {
        return delegacion;
    }

    public void setDelegacion(String delegacion) {
        this.delegacion = delegacion;
    }
}
