/*
 Esta clase se encarga de guardar todo el log en la base de datos, haciendo las validaciones correspodientes.
 Guarda el evento y lo relaciona a la reglas y archivos.
 */
package com.websystique.springmvc.service;

import com.websystique.springmvc.model.Events;
import com.websystique.springmvc.model.EventsRules;
import com.websystique.springmvc.model.Files;
import com.websystique.springmvc.model.Rules;

public interface AuditLogService {
    
    void saveAuditLog (Events event, EventsRules eventRule, Rules rule, Files file);
    
    public void saveEvent(Events event);
    
    boolean isRuleRegistred(String idRule);
    
    boolean isFileRegistred(String FileName);
    
}
