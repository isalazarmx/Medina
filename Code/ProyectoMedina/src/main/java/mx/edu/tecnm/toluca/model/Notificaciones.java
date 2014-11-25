/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.tecnm.toluca.model;

import java.util.Date;

/**
 *
 * @author Jorge
 */
public class Notificaciones {
private int idNotificaciones, idRemitente, usuario_idUsuario;
private String asunto, descripcion;
private Date fechaEnvio;

    /**
     * @return the idNotificaciones
     */
    public int getIdNotificaciones() {
        return idNotificaciones;
    }

    /**
     * @param idNotificaciones the idNotificaciones to set
     */
    public void setIdNotificaciones(int idNotificaciones) {
        this.idNotificaciones = idNotificaciones;
    }

    /**
     * @return the idRemitente
     */
    public int getIdRemitente() {
        return idRemitente;
    }

    /**
     * @param idRemitente the idRemitente to set
     */
    public void setIdRemitente(int idRemitente) {
        this.idRemitente = idRemitente;
    }

    /**
     * @return the usuario_idUsuario
     */
    public int getUsuario_idUsuario() {
        return usuario_idUsuario;
    }

    /**
     * @param usuario_idUsuario the usuario_idUsuario to set
     */
    public void setUsuario_idUsuario(int usuario_idUsuario) {
        this.usuario_idUsuario = usuario_idUsuario;
    }

    /**
     * @return the asunto
     */
    public String getAsunto() {
        return asunto;
    }

    /**
     * @param asunto the asunto to set
     */
    public void setAsunto(String asunto) {
        this.asunto = asunto;
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
     * @return the fechaEnvio
     */
    public Date getFechaEnvio() {
        return fechaEnvio;
    }

    /**
     * @param fechaEnvio the fechaEnvio to set
     */
    public void setFechaEnvio(Date fechaEnvio) {
        this.fechaEnvio = fechaEnvio;
    }

}
