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
public class ProductoFabricacion {
    
    private int idProductoFabricacion;
    private int cantidad;
    private String descripcion;
    private int Producto_idProducto;

    /**
     * @return the idProductoFabricacion
     */
    public int getIdProductoFabricacion() {
        return idProductoFabricacion;
    }

    /**
     * @param idProductoFabricacion the idProductoFabricacion to set
     */
    public void setIdProductoFabricacion(int idProductoFabricacion) {
        this.idProductoFabricacion = idProductoFabricacion;
    }

    /**
     * @return the cantidad
     */
    public int getCantidad() {
        return cantidad;
    }

    /**
     * @param cantidad the cantidad to set
     */
    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
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
     * @return the Producto_idProducto
     */
    public int getProducto_idProducto() {
        return Producto_idProducto;
    }

    /**
     * @param Producto_idProducto the Producto_idProducto to set
     */
    public void setProducto_idProducto(int Producto_idProducto) {
        this.Producto_idProducto = Producto_idProducto;
    }
    
}
