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
public class Producto {
    private int idProducto;
    private String marca;
    private String nombre;
    private int Empresa_idEmpresa;
    private int Categoria_idCategoria;
    private int ActivoFijo_idActivoFijo;

    /**
     * @return the idProducto
     */
    public int getIdProducto() {
        return idProducto;
    }

    /**
     * @param idProducto the idProducto to set
     */
    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    /**
     * @return the marca
     */
    public String getMarca() {
        return marca;
    }

    /**
     * @param marca the marca to set
     */
    public void setMarca(String marca) {
        this.marca = marca;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the Empresa_idEmpresa
     */
    public int getEmpresa_idEmpresa() {
        return Empresa_idEmpresa;
    }

    /**
     * @param Empresa_idEmpresa the Empresa_idEmpresa to set
     */
    public void setEmpresa_idEmpresa(int Empresa_idEmpresa) {
        this.Empresa_idEmpresa = Empresa_idEmpresa;
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
     * @return the ActivoFijo_idActivoFijo
     */
    public int getActivoFijo_idActivoFijo() {
        return ActivoFijo_idActivoFijo;
    }

    /**
     * @param ActivoFijo_idActivoFijo the ActivoFijo_idActivoFijo to set
     */
    public void setActivoFijo_idActivoFijo(int ActivoFijo_idActivoFijo) {
        this.ActivoFijo_idActivoFijo = ActivoFijo_idActivoFijo;
    }
    
}
