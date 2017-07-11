package com.websystique.springmvc.service;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
 
import com.websystique.springmvc.dao.RuleDao;
import com.websystique.springmvc.model.Rules;

@Service("ruleService")
@Transactional
public class RuleServiceImpl implements RuleService {
 
    @Autowired
    private RuleDao dao;
 
    @Override
    public void saveRule(Rules rule) {
        if (dao.findByRuleId(rule.getRuleId())!=null){
        }else{
            dao.saveRule(rule);
        }
    }
    
}