/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.tecnm.toluca.model;

/**
 *
 * @author Monse
 */
public class Cliente {
    private int idCliente;
    private String nombre;
    private String aPäterno;
    private String aMaterno;
    private int prioridad;
    private int Empresa_idEmpresa;
    private int Credito_idCredito;

    /**
     * @return the idCliente
     */
    public int getIdCliente() {
        return idCliente;
    }

    /**
     * @param idCliente the idCliente to set
     */
    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
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
     * @return the aPäterno
     */
    public String getaPäterno() {
        return aPäterno;
    }

    /**
     * @param aPäterno the aPäterno to set
     */
    public void setaPäterno(String aPäterno) {
        this.aPäterno = aPäterno;
    }

    /**
     * @return the aMaterno
     */
    public String getaMaterno() {
        return aMaterno;
    }

    /**
     * @param aMaterno the aMaterno to set
     */
    public void setaMaterno(String aMaterno) {
        this.aMaterno = aMaterno;
    }

    /**
     * @return the prioridad
     */
    public int getPrioridad() {
        return prioridad;
    }

    /**
     * @param prioridad the prioridad to set
     */
    public void setPrioridad(int prioridad) {
        this.prioridad = prioridad;
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
     * @return the Credito_idCredito
     */
    public int getCredito_idCredito() {
        return Credito_idCredito;
    }

    /**
     * @param Credito_idCredito the Credito_idCredito to set
     */
    public void setCredito_idCredito(int Credito_idCredito) {
        this.Credito_idCredito = Credito_idCredito;
    }
    
}
