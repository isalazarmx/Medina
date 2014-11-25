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
public class Departamento {
    private int idDepartamento;
    private int idResponsable;
    private int presupuesto;
    private int nivelOrganigrama;
    private String nombre;
    private int Empresa_idEmpresa;

    /**
     * @return the idDepartamento
     */
    public int getIdDepartamento() {
        return idDepartamento;
    }

    /**
     * @param idDepartamento the idDepartamento to set
     */
    public void setIdDepartamento(int idDepartamento) {
        this.idDepartamento = idDepartamento;
    }

    /**
     * @return the idResponsable
     */
    public int getIdResponsable() {
        return idResponsable;
    }

    /**
     * @param idResponsable the idResponsable to set
     */
    public void setIdResponsable(int idResponsable) {
        this.idResponsable = idResponsable;
    }

    /**
     * @return the presupuesto
     */
    public int getPresupuesto() {
        return presupuesto;
    }

    /**
     * @param presupuesto the presupuesto to set
     */
    public void setPresupuesto(int presupuesto) {
        this.presupuesto = presupuesto;
    }

    /**
     * @return the nivelOrganigrama
     */
    public int getNivelOrganigrama() {
        return nivelOrganigrama;
    }

    /**
     * @param nivelOrganigrama the nivelOrganigrama to set
     */
    public void setNivelOrganigrama(int nivelOrganigrama) {
        this.nivelOrganigrama = nivelOrganigrama;
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
    
}
