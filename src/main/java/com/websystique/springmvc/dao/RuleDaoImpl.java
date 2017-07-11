
package com.websystique.springmvc.dao;

import com.websystique.springmvc.model.Rules;
import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

@Repository("RuleDao")
public class RuleDaoImpl extends AbstractDao<Integer, Rules> implements RuleDao {
    
    public void saveRule(Rules rule) {
        persist(rule);
    }
    
    @Override
    public Rules findByRuleId(String ruleId){
        Criteria crit = createEntityCriteria();
        crit.add(Restrictions.eq("ruleId", ruleId));
        Rules rule = (Rules) crit.uniqueResult();
        return rule;
    }
    
}
