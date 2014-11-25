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
public class ProductoVendido {
    private int OrdenVenta_idOrdenVenta;
    private int Producto_idProducto;
    private int cantidad;

    /**
     * @return the OrdenVenta_idOrdenVenta
     */
    public int getOrdenVenta_idOrdenVenta() {
        return OrdenVenta_idOrdenVenta;
    }

    /**
     * @param OrdenVenta_idOrdenVenta the OrdenVenta_idOrdenVenta to set
     */
    public void setOrdenVenta_idOrdenVenta(int OrdenVenta_idOrdenVenta) {
        this.OrdenVenta_idOrdenVenta = OrdenVenta_idOrdenVenta;
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
