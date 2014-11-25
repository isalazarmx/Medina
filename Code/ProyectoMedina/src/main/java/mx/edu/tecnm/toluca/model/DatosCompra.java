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
public class DatosCompra {
    private int idDatosCompra;
    private int totalEsperado;
    private int totalRecibido;

    /**
     * @return the idDatosCompra
     */
    public int getIdDatosCompra() {
        return idDatosCompra;
    }

    /**
     * @param idDatosCompra the idDatosCompra to set
     */
    public void setIdDatosCompra(int idDatosCompra) {
        this.idDatosCompra = idDatosCompra;
    }

    /**
     * @return the totalEsperado
     */
    public int getTotalEsperado() {
        return totalEsperado;
    }

    /**
     * @param totalEsperado the totalEsperado to set
     */
    public void setTotalEsperado(int totalEsperado) {
        this.totalEsperado = totalEsperado;
    }

    /**
     * @return the totalRecibido
     */
    public int getTotalRecibido() {
        return totalRecibido;
    }

    /**
     * @param totalRecibido the totalRecibido to set
     */
    public void setTotalRecibido(int totalRecibido) {
        this.totalRecibido = totalRecibido;
    }
}
