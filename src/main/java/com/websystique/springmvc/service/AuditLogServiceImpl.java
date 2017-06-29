
package com.websystique.springmvc.service;

import com.websystique.springmvc.dao.EventDao;
import com.websystique.springmvc.model.Events;
import com.websystique.springmvc.model.EventsRules;
import com.websystique.springmvc.model.Files;
import com.websystique.springmvc.model.Rules;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("auditLogService")
@Transactional
public class AuditLogServiceImpl implements AuditLogService {
 
    @Autowired
    private EventDao eventDao;
    
//    @Autowired
//    private EventRuleDao eventsRulesDao; 
//    
//    @Autowired
//    private RuleDao rulesDao; 
//    
//    @Autowired
//    private FileDao fileDao; 
    
    public void saveEvent(Events event) {
        eventDao.saveEvent(event);
    }
     
    public void saveAuditLog (Events event, EventsRules eventRule, Rules rule, Files file){
        
    }
    
    public boolean isRuleRegistred(String idRule){
        return true;
    }
    
    public boolean isFileRegistred(String FileName){
        return true;
    }
    
}