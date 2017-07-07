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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author martin
 */
@Entity
@Table(name = "EventsRules")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "EventsRules.findAll", query = "SELECT e FROM EventsRules e")
    , @NamedQuery(name = "EventsRules.findById", query = "SELECT e FROM EventsRules e WHERE e.id = :id")})
public class EventsRules implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @JoinColumn(name = "eventsId", referencedColumnName = "ID")
    @ManyToOne(optional = false)
    private Events eventsId;
    @JoinColumn(name = "rulesId", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Rules rulesId;

    public EventsRules() {
    }

    public EventsRules(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Events getEventsId() {
        return eventsId;
    }

    public void setEventsId(Events eventsId) {
        this.eventsId = eventsId;
    }

    public Rules getRulesId() {
        return rulesId;
    }

    public void setRulesId(Rules rulesId) {
        this.rulesId = rulesId;
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
        if (!(object instanceof EventsRules)) {
            return false;
        }
        EventsRules other = (EventsRules) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.websystique.springmvc.model.EventsRules[ id=" + id + " ]";
    }
    
}
