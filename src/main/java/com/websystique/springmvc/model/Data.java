/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.websystique.springmvc.model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author usuario
 */
@Entity
@Table(name = "data")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Data.findAll", query = "SELECT d FROM Data d"),
    @NamedQuery(name = "Data.findById", query = "SELECT d FROM Data d WHERE d.id = :id")})
public class Data implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 16777215)
    @Column(name = "PartA")
    private String partA;
    @Lob
    @Size(max = 16777215)
    @Column(name = "PartB")
    private String partB;
    @Lob
    @Size(max = 16777215)
    @Column(name = "PartC")
    private String partC;
    @Lob
    @Size(max = 16777215)
    @Column(name = "PartD")
    private String partD;
    @Lob
    @Size(max = 16777215)
    @Column(name = "PartE")
    private String partE;
    @Lob
    @Size(max = 16777215)
    @Column(name = "PartF")
    private String partF;
    @Lob
    @Size(max = 16777215)
    @Column(name = "PartG")
    private String partG;
    @Lob
    @Size(max = 16777215)
    @Column(name = "PartH")
    private String partH;
    @Lob
    @Size(max = 16777215)
    @Column(name = "PartI")
    private String partI;
    @Lob
    @Size(max = 16777215)
    @Column(name = "PartJ")
    private String partJ;
    @Lob
    @Size(max = 16777215)
    @Column(name = "PartK")
    private String partK;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 16777215)
    @Column(name = "PartZ")
    private String partZ;

    public Data() {
    }

    public Data(Integer id) {
        this.id = id;
    }

    public Data(Integer id, String partA, String partZ) {
        this.id = id;
        this.partA = partA;
        this.partZ = partZ;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPartA() {
        return partA;
    }

    public void setPartA(String partA) {
        this.partA = partA;
    }

    public String getPartB() {
        return partB;
    }

    public void setPartB(String partB) {
        this.partB = partB;
    }

    public String getPartC() {
        return partC;
    }

    public void setPartC(String partC) {
        this.partC = partC;
    }

    public String getPartD() {
        return partD;
    }

    public void setPartD(String partD) {
        this.partD = partD;
    }

    public String getPartE() {
        return partE;
    }

    public void setPartE(String partE) {
        this.partE = partE;
    }

    public String getPartF() {
        return partF;
    }

    public void setPartF(String partF) {
        this.partF = partF;
    }

    public String getPartG() {
        return partG;
    }

    public void setPartG(String partG) {
        this.partG = partG;
    }

    public String getPartH() {
        return partH;
    }

    public void setPartH(String partH) {
        this.partH = partH;
    }

    public String getPartI() {
        return partI;
    }

    public void setPartI(String partI) {
        this.partI = partI;
    }

    public String getPartJ() {
        return partJ;
    }

    public void setPartJ(String partJ) {
        this.partJ = partJ;
    }

    public String getPartK() {
        return partK;
    }

    public void setPartK(String partK) {
        this.partK = partK;
    }

    public String getPartZ() {
        return partZ;
    }

    public void setPartZ(String partZ) {
        this.partZ = partZ;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Data)) {
            return false;
        }
        Data other = (Data) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.websystique.springmvc.model.Data[ id=" + id + " ]";
    }
    
}
