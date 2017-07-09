package com.websystique.springmvc.dao;

import com.websystique.springmvc.model.Files;
import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

@Repository("FileDao")
public class FileDaoImpl extends AbstractDao<Integer, Files> implements FileDao {

    @Override
    public void saveFile(Files file) {
        persist(file);
    }

    @Override
    public Files findByPath(String path) {
        Criteria crit = createEntityCriteria();
        crit.add(Restrictions.eq("filePath", path));
        Files file = (Files) crit.uniqueResult();
        return file;
    }

}
