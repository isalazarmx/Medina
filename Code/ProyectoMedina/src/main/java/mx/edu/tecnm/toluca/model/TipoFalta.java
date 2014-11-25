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
public class TipoFalta {
    private int idtipoFalta;
    private String descripcion;

    /**
     * @return the idtipoFalta
     */
    public int getIdtipoFalta() {
        return idtipoFalta;
    }

    /**
     * @param idtipoFalta the idtipoFalta to set
     */
    public void setIdtipoFalta(int idtipoFalta) {
        this.idtipoFalta = idtipoFalta;
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
}
