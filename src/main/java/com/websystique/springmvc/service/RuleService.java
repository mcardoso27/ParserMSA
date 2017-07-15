package com.websystique.springmvc.service;
 
import com.websystique.springmvc.model.Rules;
 
public interface RuleService {
     
    void saveRule(Rules rule);
    
    Rules findByRuleId(String ruleId);
     
}