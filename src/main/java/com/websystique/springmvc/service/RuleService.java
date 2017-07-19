package com.websystique.springmvc.service;
 
import com.websystique.springmvc.model.Rule;
 
public interface RuleService {
     
    void saveRule(Rule rule);
    
    Rule findByRuleId(String ruleId);
     
}