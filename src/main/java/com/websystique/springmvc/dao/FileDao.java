
package com.websystique.springmvc.dao;

import com.websystique.springmvc.model.Files;

public interface FileDao {
    
    void saveFile(Files file);
    
    public Files findByPath(String path);
    
}
