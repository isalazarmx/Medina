/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.tecnm.toluca.model;

/**
 *
 * @author Jorge
 */
public class SubCategoria {
    private int idSubCategoria,Categoria_idCategoria;
    private String descripcion;

    /**
     * @return the idSubCategoria
     */
    public int getIdSubCategoria() {
        return idSubCategoria;
    }

    /**
     * @param idSubCategoria the idSubCategoria to set
     */
    public void setIdSubCategoria(int idSubCategoria) {
        this.idSubCategoria = idSubCategoria;
    }

    /**
     * @return the Categoria_idCategoria
     */
    public int getCategoria_idCategoria() {
        return Categoria_idCategoria;
    }

    /**
     * @param Categoria_idCategoria the Categoria_idCategoria to set
     */
    public void setCategoria_idCategoria(int Categoria_idCategoria) {
        this.Categoria_idCategoria = Categoria_idCategoria;
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
