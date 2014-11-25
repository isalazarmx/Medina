/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.edu.tecnm.toluca.model;

import static mx.edu.tecnm.toluca.database.ConexionDB.Connection;
import mx.edu.tecnm.toluca.database.Query;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Jesus
 */
public class Proveedor {
    private int idProveedor;
    private String nombre;
    private String aPaterno;
    private String aMaterno;
    private String razonSocial;
    private int telefono;
    private String iP;
    private String puertoComunicacion;
    private int Empresa_idEmpresa;
    private String rFC;
    private String colonia;
    private int numInt;
    private int codigoPostal;
    private int numExt;
    private String calle;

    /**
     * @return the idProveedor
     */
    public int getIdProveedor() {
        return idProveedor;
    }

    /**
     * @param idProveedor the idProveedor to set
     */
    public void setIdProveedor(int idProveedor) {
        this.idProveedor = idProveedor;
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
    public String getaPaterno() {
        return aPaterno;
    }

    /**
     * @param aPaterno the aPäterno to set
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
     * @return the razonSocial
     */
    public String getRazonSocial() {
        return razonSocial;
    }

    /**
     * @param razonSocial the razonSocial to set
     */
    public void setRazonSocial(String razonSocial) {
        this.razonSocial = razonSocial;
    }

    /**
     * @return the telefono
     */
    public int getTelefono() {
        return telefono;
    }

    /**
     * @param telefono the telefono to set
     */
    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    /**
     * @return the iP
     */
    public String getiP() {
        return iP;
    }

    /**
     * @param iP the iP to set
     */
    public void setiP(String iP) {
        this.iP = iP;
    }

    /**
     * @return the puertoComunicacion
     */
    public String getPuertoComunicacion() {
        return puertoComunicacion;
    }

    /**
     * @param puertoComunicacion the puertoComunicacion to set
     */
    public void setPuertoComunicacion(String puertoComunicacion) {
        this.puertoComunicacion = puertoComunicacion;
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
 
    public boolean save()
    {
        boolean insert=false;
        /*
        if(this.razonSocial != null && this.getrFC() !=null &&  this.calle!=null && this.colonia != null &&
           this.numInt >=0 && this.codigoPostal >0 && this.numExt>= 0 && this.poblacion != null &&
           this.nombre != null &&  this.aPaterno !=null &&  this.aMaterno!=null && this.telefono>=0 && this.email != null && this.ip!=null
               && this.puertoComu>=0)
        {
            /*JdbcTemplate jdbcTemplate = Connection();
            jdbcTemplate.execute("Insert into proveedor (nombre,aPaterno,aMaterno,razonSocial,telefono,ip, puertocomunicacion) values "
                    + "('"+getNombre()+" ',' "+getaPäterno()+" ',' "+getaMaterno()+" ',' "+getRazonSocial()+" ', "+getTelefono()+");");*/
      
            String campos[]={"nombre","aPaterno","aMaterno","razonSocial","telefono"}; 
            String datos[]={getNombre(),getaPaterno(),getaMaterno(),getRazonSocial(),String.valueOf(getTelefono())};
            //insert=Query.insertaGeneral(campos, datos, "proveedor");
            insert=Query.actualizarGeneral("nombre='Raul'", "nombre='Rafael'", "proveedor");
                 
        return insert;
    }
    private int puertoComu;
    private String ip;
    private String email;
    private String poblacion;

    /**
     * @return the rFC
     */
    public String getrFC() {
        return rFC;
    }

    /**
     * @param rFC the rFC to set
     */
    public void setrFC(String rFC) {
        this.rFC = rFC;
    }

    /**
     * @param colonia the colonia to set
     */
    public void setColonia(String colonia) {
        this.colonia = colonia;
    }

    /**
     * @param numInt the numInt to set
     */
    public void setNumInt(int numInt) {
        this.numInt = numInt;
    }

    /**
     * @param codigoPostal the codigoPostal to set
     */
    public void setCodigoPostal(int codigoPostal) {
        this.codigoPostal = codigoPostal;
    }

    /**
     * @param numExt the numExt to set
     */
    public void setNumExt(int numExt) {
        this.numExt = numExt;
    }

    /**
     * @param calle the calle to set
     */
    public void setCalle(String calle) {
        this.calle = calle;
    }

    /**
     * @param puertoComu the puertoComu to set
     */
    public void setPuertoComu(int puertoComu) {
        this.puertoComu = puertoComu;
    }

    /**
     * @param ip the ip to set
     */
    public void setIp(String ip) {
        this.ip = ip;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @param poblacion the poblacion to set
     */
    public void setPoblacion(String poblacion) {
        this.poblacion = poblacion;
    }
}
