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
public class DiaNoTrabajado {
  private int idDiaNoTrabajo;
  private String fechaInicio;
  private String fechaFin;
  private boolean aprobado;
  private int Usuario_idUsuario;
  private int tipoFalta_idtipoFalta;

    /**
     * @return the idDiaNoTrabajo
     */
    public int getIdDiaNoTrabajo() {
        return idDiaNoTrabajo;
    }

    /**
     * @param idDiaNoTrabajo the idDiaNoTrabajo to set
     */
    public void setIdDiaNoTrabajo(int idDiaNoTrabajo) {
        this.idDiaNoTrabajo = idDiaNoTrabajo;
    }

    /**
     * @return the fechaInicio
     */
    public String getFechaInicio() {
        return fechaInicio;
    }

    /**
     * @param fechaInicio the fechaInicio to set
     */
    public void setFechaInicio(String fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    /**
     * @return the fechaFin
     */
    public String getFechaFin() {
        return fechaFin;
    }

    /**
     * @param fechaFin the fechaFin to set
     */
    public void setFechaFin(String fechaFin) {
        this.fechaFin = fechaFin;
    }

    /**
     * @return the aprobado
     */
    public boolean isAprobado() {
        return aprobado;
    }

    /**
     * @param aprobado the aprobado to set
     */
    public void setAprobado(boolean aprobado) {
        this.aprobado = aprobado;
    }

    /**
     * @return the Usuario_idUsuario
     */
    public int getUsuario_idUsuario() {
        return Usuario_idUsuario;
    }

    /**
     * @param Usuario_idUsuario the Usuario_idUsuario to set
     */
    public void setUsuario_idUsuario(int Usuario_idUsuario) {
        this.Usuario_idUsuario = Usuario_idUsuario;
    }

    /**
     * @return the tipoFalta_idtipoFalta
     */
    public int getTipoFalta_idtipoFalta() {
        return tipoFalta_idtipoFalta;
    }

    /**
     * @param tipoFalta_idtipoFalta the tipoFalta_idtipoFalta to set
     */
    public void setTipoFalta_idtipoFalta(int tipoFalta_idtipoFalta) {
        this.tipoFalta_idtipoFalta = tipoFalta_idtipoFalta;
    }
}
