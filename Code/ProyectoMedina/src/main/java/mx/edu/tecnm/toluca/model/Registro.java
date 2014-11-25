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
public class Registro {
    private int idRegistro;
    private String fechaEntrada;
    private String fechaSalida;
    private int Empresa_idEmpresa;
    private int Usuario_idUsuario;

    /**
     * @return the idRegistro
     */
    public int getIdRegistro() {
        return idRegistro;
    }

    /**
     * @param idRegistro the idRegistro to set
     */
    public void setIdRegistro(int idRegistro) {
        this.idRegistro = idRegistro;
    }

    /**
     * @return the fechaEntrada
     */
    public String getFechaEntrada() {
        return fechaEntrada;
    }

    /**
     * @param fechaEntrada the fechaEntrada to set
     */
    public void setFechaEntrada(String fechaEntrada) {
        this.fechaEntrada = fechaEntrada;
    }

    /**
     * @return the fechaSalida
     */
    public String getFechaSalida() {
        return fechaSalida;
    }

    /**
     * @param fechaSalida the fechaSalida to set
     */
    public void setFechaSalida(String fechaSalida) {
        this.fechaSalida = fechaSalida;
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
     * @return the Usuario_idUsuario
     */
    public int getUsuario_idUsuario() {
        return Usuario_idUsuario;
    }

    /**
     * @param Usuario_idUsuario the Usuario_idUsuario to set
     */
    public void setUsuario_idUsuario(int Usuario_idUsuario) {
        this.Usuario_idUsuario = Usuario_idUsuario;
    }
    
}
