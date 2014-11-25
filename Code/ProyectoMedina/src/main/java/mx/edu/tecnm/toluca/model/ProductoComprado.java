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
public class ProductoComprado {
    private int Producto_idProducto;
    private int OrdenCompra_idOrdenCompra;
    private int cantidad;

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

    /**
     * @return the OrdenCompra_idOrdenCompra
     */
    public int getOrdenCompra_idOrdenCompra() {
        return OrdenCompra_idOrdenCompra;
    }

    /**
     * @param OrdenCompra_idOrdenCompra the OrdenCompra_idOrdenCompra to set
     */
    public void setOrdenCompra_idOrdenCompra(int OrdenCompra_idOrdenCompra) {
        this.OrdenCompra_idOrdenCompra = OrdenCompra_idOrdenCompra;
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
    
}
