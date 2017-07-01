package com.websystique.springmvc.dao;
 
import org.springframework.stereotype.Repository;
 
import com.websystique.springmvc.model.EventsRules;
 
@Repository("EventRuleDao")
public class EventRuleDaoImpl extends AbstractDao<Integer, EventsRules> implements EventRuleDao {
 
    public void saveEventRule(EventsRules eventRule) {
        persist(eventRule);
    }
 
}