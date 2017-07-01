
package com.websystique.springmvc.dao;

import com.websystique.springmvc.model.Rules;
import org.springframework.stereotype.Repository;

@Repository("RuleDao")
public class RuleDaoImpl extends AbstractDao<Integer, Rules> implements RuleDao {
 
    @Override
    public Rules findById(String id) {
        return new Rules();
    }
    
    public void saveRule(Rules rule) {
        persist(rule);
    }
 
}
