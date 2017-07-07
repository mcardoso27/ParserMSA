package com.websystique.springmvc.service;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
 
import com.websystique.springmvc.dao.EventRuleDao;
import com.websystique.springmvc.model.EventsRules;
 
@Service("eventRuleService")
@Transactional
public class EventRuleServiceImpl implements EventRuleService {
 
    @Autowired
    private EventRuleDao dao;
 
    @Override
    public void saveEventRule(EventsRules eventRule) {
        dao.saveEventRule(eventRule);
    }
     
}