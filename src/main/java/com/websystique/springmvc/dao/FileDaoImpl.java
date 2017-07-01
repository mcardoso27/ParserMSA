
package com.websystique.springmvc.dao;

import com.websystique.springmvc.model.Files;
import org.springframework.stereotype.Repository;

@Repository("FileDao")
public class FileDaoImpl extends AbstractDao<Integer, Files> implements FileDao {
 
    public void saveFile(Files file) {
        persist(file);
    }
 
}
