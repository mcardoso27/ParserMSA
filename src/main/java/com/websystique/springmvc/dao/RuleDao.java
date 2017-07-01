
package com.websystique.springmvc.dao;

import com.websystique.springmvc.model.Rules;

public interface RuleDao {
    
    Rules findById(String id);
    
    void saveRule(Rules rule);
            
}
