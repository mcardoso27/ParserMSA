
package com.websystique.springmvc.dao;

import com.websystique.springmvc.model.Rule;

public interface RuleDao {
    
    void saveRule(Rule rule);
    
    public Rule findByRuleId(String ruleId);
    
}
