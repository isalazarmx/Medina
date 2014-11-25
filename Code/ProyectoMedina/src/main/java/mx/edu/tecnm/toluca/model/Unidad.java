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
public class Unidad {
    private int idUnidad;
    private String descripcion;
    private int precio; 
    private int codigo;
    private int existencia;
    private int minimoPermitido;
    private int maximoPermitido;
    private int demanda;
    private boolean eliminado;
    private int comision;
    private String fechaIngreso;
    private String Unidadcol;
    private int Producto_idProducto;

    public Unidad(int idUnidad, String descripcion, int precio, int codigo, int existencia, int minimoPermitido, int maximoPermitido, int demanda, boolean eliminado, int comision, String fechaIngreso, String Unidadcol, int Producto_idProducto) {
        this.idUnidad = idUnidad;
        this.descripcion = descripcion;
        this.precio = precio;
        this.codigo = codigo;
        this.existencia = existencia;
        this.minimoPermitido = minimoPermitido;
        this.maximoPermitido = maximoPermitido;
        this.demanda = demanda;
        this.eliminado = eliminado;
        this.comision = comision;
        this.fechaIngreso = fechaIngreso;
        this.Unidadcol = Unidadcol;
        this.Producto_idProducto = Producto_idProducto;
    }

    
    public int getIdUnidad() {
        return idUnidad;
    }

    public void setIdUnidad(int idUnidad) {
        this.idUnidad = idUnidad;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public int getExistencia() {
        return existencia;
    }

    public void setExistencia(int existencia) {
        this.existencia = existencia;
    }

    public int getMinimoPermitido() {
        return minimoPermitido;
    }

    public void setMinimoPermitido(int minimoPermitido) {
        this.minimoPermitido = minimoPermitido;
    }

    public int getMaximoPermitido() {
        return maximoPermitido;
    }

    public void setMaximoPermitido(int maximoPermitido) {
        this.maximoPermitido = maximoPermitido;
    }

    public int getDemanda() {
        return demanda;
    }

    public void setDemanda(int demanda) {
        this.demanda = demanda;
    }

    public boolean isEliminado() {
        return eliminado;
    }

    public void setEliminado(boolean eliminado) {
        this.eliminado = eliminado;
    }

    public int getComision() {
        return comision;
    }

    public void setComision(int comision) {
        this.comision = comision;
    }

    public String getFechaIngreso() {
        return fechaIngreso;
    }

    public void setFechaIngreso(String fechaIngreso) {
        this.fechaIngreso = fechaIngreso;
    }

    public String getUnidadcol() {
        return Unidadcol;
    }

    public void setUnidadcol(String Unidadcol) {
        this.Unidadcol = Unidadcol;
    }

    public int getProducto_idProducto() {
        return Producto_idProducto;
    }

    public void setProducto_idProducto(int Producto_idProducto) {
        this.Producto_idProducto = Producto_idProducto;
    }
}
