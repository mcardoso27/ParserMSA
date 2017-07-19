package com.websystique.springmvc.service;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
 
import com.websystique.springmvc.dao.EventRuleDao;
import com.websystique.springmvc.model.EventRule;
 
@Service("eventRuleService")
@Transactional
public class EventRuleServiceImpl implements EventRuleService {
 
    @Autowired
    private EventRuleDao dao;
 
    @Override
    public void saveEventRule(EventRule eventRule) {
        dao.saveEventRule(eventRule);
    }
     
}