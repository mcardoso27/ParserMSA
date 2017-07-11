
package com.websystique.springmvc.dao;

import com.websystique.springmvc.model.Rules;

public interface RuleDao {
    
    void saveRule(Rules rule);
    
    public Rules findByRuleId(String ruleId);
    
}
