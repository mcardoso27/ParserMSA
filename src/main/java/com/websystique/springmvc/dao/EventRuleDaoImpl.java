package com.websystique.springmvc.dao;
 
import org.springframework.stereotype.Repository;
 
import com.websystique.springmvc.model.EventRule;
 
@Repository("EventRuleDao")
public class EventRuleDaoImpl extends AbstractDao<Integer, EventRule> implements EventRuleDao {
 
    public void saveEventRule(EventRule eventRule) {
        persist(eventRule);
    }
 
}