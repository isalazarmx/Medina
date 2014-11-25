/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mx.edu.tecm.toluca.db;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Jovic
 */
@Entity
@Table(name = "clientes", catalog = "pw2014", schema = "public", uniqueConstraints =
{
   @UniqueConstraint(columnNames =
   {
       "id"
   })
})
@XmlRootElement
@NamedQueries(
{
    @NamedQuery(name = "Clientes.findAll", query = "SELECT c FROM Clientes c"),
    @NamedQuery(name = "Clientes.findById", query = "SELECT c FROM Clientes c WHERE c.id = :id"),
    @NamedQuery(name = "Clientes.findByTipo", query = "SELECT c FROM Clientes c WHERE c.tipo = :tipo"),
    @NamedQuery(name = "Clientes.findByRazonSocial", query = "SELECT c FROM Clientes c WHERE c.razonSocial = :razonSocial"),
    @NamedQuery(name = "Clientes.findByRfc", query = "SELECT c FROM Clientes c WHERE c.rfc = :rfc"),
    @NamedQuery(name = "Clientes.findByCalle", query = "SELECT c FROM Clientes c WHERE c.calle = :calle"),
    @NamedQuery(name = "Clientes.findByColonia", query = "SELECT c FROM Clientes c WHERE c.colonia = :colonia"),
    @NamedQuery(name = "Clientes.findByMunicipio", query = "SELECT c FROM Clientes c WHERE c.municipio = :municipio"),
    @NamedQuery(name = "Clientes.findByEstado", query = "SELECT c FROM Clientes c WHERE c.estado = :estado"),
    @NamedQuery(name = "Clientes.findByCp", query = "SELECT c FROM Clientes c WHERE c.cp = :cp"),
    @NamedQuery(name = "Clientes.findByTelefono", query = "SELECT c FROM Clientes c WHERE c.telefono = :telefono"),
    @NamedQuery(name = "Clientes.findByEmail", query = "SELECT c FROM Clientes c WHERE c.email = :email")
})
public class Clientes implements Serializable
{
    private static final long serialVersionUID = 1L;
    @Column(name = "id")
    private Integer id;
    @Size(max = 10)
    @Column(name = "tipo", length = 10)
    private String tipo;
    @Size(max = 50)
    @Column(name = "razon_social", length = 50)
    private String razonSocial;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 13)
    @Column(name = "rfc", nullable = false, length = 13)
    private String rfc;
    @Size(max = 30)
    @Column(name = "calle", length = 30)
    private String calle;
    @Size(max = 30)
    @Column(name = "colonia", length = 30)
    private String colonia;
    @Size(max = 30)
    @Column(name = "municipio", length = 30)
    private String municipio;
    @Size(max = 30)
    @Column(name = "estado", length = 30)
    private String estado;
    @Column(name = "cp")
    private Integer cp;
    @Size(max = 10)
    @Column(name = "telefono", length = 10)
    private String telefono;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Size(max = 30)
    @Column(name = "email", length = 30)
    private String email;

    public Clientes()
    {
    }

    public Clientes(String rfc)
    {
        this.rfc = rfc;
    }

    public Integer getId()
    {
        return id;
    }

    public void setId(Integer id)
    {
        this.id = id;
    }

    public String getTipo()
    {
        return tipo;
    }

    public void setTipo(String tipo)
    {
        this.tipo = tipo;
    }

    public String getRazonSocial()
    {
        return razonSocial;
    }

    public void setRazonSocial(String razonSocial)
    {
        this.razonSocial = razonSocial;
    }

    public String getRfc()
    {
        return rfc;
    }

    public void setRfc(String rfc)
    {
        this.rfc = rfc;
    }

    public String getCalle()
    {
        return calle;
    }

    public void setCalle(String calle)
    {
        this.calle = calle;
    }

    public String getColonia()
    {
        return colonia;
    }

    public void setColonia(String colonia)
    {
        this.colonia = colonia;
    }

    public String getMunicipio()
    {
        return municipio;
    }

    public void setMunicipio(String municipio)
    {
        this.municipio = municipio;
    }

    public String getEstado()
    {
        return estado;
    }

    public void setEstado(String estado)
    {
        this.estado = estado;
    }

    public Integer getCp()
    {
        return cp;
    }

    public void setCp(Integer cp)
    {
        this.cp = cp;
    }

    public String getTelefono()
    {
        return telefono;
    }

    public void setTelefono(String telefono)
    {
        this.telefono = telefono;
    }

    public String getEmail()
    {
        return email;
    }

    public void setEmail(String email)
    {
        this.email = email;
    }

    @Override
    public int hashCode()
    {
        int hash = 0;
        hash += (rfc != null ? rfc.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object)
    {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Clientes))
        {
            return false;
        }
        Clientes other = (Clientes) object;
        if ((this.rfc == null && other.rfc != null) || (this.rfc != null && !this.rfc.equals(other.rfc)))
        {
            return false;
        }
        return true;
    }

    @Override
    public String toString()
    {
        return "mx.edu.tecm.toluca.db.Clientes[ rfc=" + rfc + " ]";
    }
    
}
