/*
 Esta clase se encarga de guardar todo el log en la base de datos, haciendo las validaciones correspodientes.
 Guarda el evento y lo relaciona a la reglas y archivos.
 */
package com.websystique.springmvc.service;

import com.websystique.springmvc.model.Event;
import com.websystique.springmvc.model.EventsRules;
import com.websystique.springmvc.model.Files;
import com.websystique.springmvc.model.Rules;

public interface AuditLogService {
    
    void saveAuditLog (Event event, EventsRules eventRule, Rules rule, Files file);
    
    public void saveEvent(Event event);
    
    boolean isRuleRegistred(String idRule);
    
    boolean isFileRegistred(String FileName);
    
}
