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
public class Usuario {
    private int idUsuario;
    private String nombre;
    private String aPaterno;
    private String aMaterno;
    private String diasVacaciones;
    private int status;
    private int horasTrabajo;
    private int Departamento_idDepartamento;
    private int Perfil_idPerfil;
    private int DatosBaja_idDatosBaja;
    private int Sueldo_idSueldo;
    private String fechaAlta;

    /**
     * @return the idUsuario
     */
    public int getIdUsuario() {
        return idUsuario;
    }

    /**
     * @param idUsuario the idUsuario to set
     */
    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
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
     * @return the aPaterno
     */
    public String getaPaterno() {
        return aPaterno;
    }

    /**
     * @param aPaterno the aPaterno to set
     */
    public void setaPaterno(String aPaterno) {
        this.aPaterno = aPaterno;
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
     * @return the diasVacaciones
     */
    public String getDiasVacaciones() {
        return diasVacaciones;
    }

    /**
     * @param diasVacaciones the diasVacaciones to set
     */
    public void setDiasVacaciones(String diasVacaciones) {
        this.diasVacaciones = diasVacaciones;
    }

    /**
     * @return the status
     */
    public int getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(int status) {
        this.status = status;
    }

    /**
     * @return the horasTrabajo
     */
    public int getHorasTrabajo() {
        return horasTrabajo;
    }

    /**
     * @param horasTrabajo the horasTrabajo to set
     */
    public void setHorasTrabajo(int horasTrabajo) {
        this.horasTrabajo = horasTrabajo;
    }

    /**
     * @return the Departamento_idDepartamento
     */
    public int getDepartamento_idDepartamento() {
        return Departamento_idDepartamento;
    }

    /**
     * @param Departamento_idDepartamento the Departamento_idDepartamento to set
     */
    public void setDepartamento_idDepartamento(int Departamento_idDepartamento) {
        this.Departamento_idDepartamento = Departamento_idDepartamento;
    }

    /**
     * @return the Perfil_idPerfil
     */
    public int getPerfil_idPerfil() {
        return Perfil_idPerfil;
    }

    /**
     * @param Perfil_idPerfil the Perfil_idPerfil to set
     */
    public void setPerfil_idPerfil(int Perfil_idPerfil) {
        this.Perfil_idPerfil = Perfil_idPerfil;
    }

    /**
     * @return the DatosBaja_idDatosBaja
     */
    public int getDatosBaja_idDatosBaja() {
        return DatosBaja_idDatosBaja;
    }

    /**
     * @param DatosBaja_idDatosBaja the DatosBaja_idDatosBaja to set
     */
    public void setDatosBaja_idDatosBaja(int DatosBaja_idDatosBaja) {
        this.DatosBaja_idDatosBaja = DatosBaja_idDatosBaja;
    }

    /**
     * @return the Sueldo_idSueldo
     */
    public int getSueldo_idSueldo() {
        return Sueldo_idSueldo;
    }

    /**
     * @param Sueldo_idSueldo the Sueldo_idSueldo to set
     */
    public void setSueldo_idSueldo(int Sueldo_idSueldo) {
        this.Sueldo_idSueldo = Sueldo_idSueldo;
    }

    /**
     * @return the fechaAlta
     */
    public String getFechaAlta() {
        return fechaAlta;
    }

    /**
     * @param fechaAlta the fechaAlta to set
     */
    public void setFechaAlta(String fechaAlta) {
        this.fechaAlta = fechaAlta;
    }
}
