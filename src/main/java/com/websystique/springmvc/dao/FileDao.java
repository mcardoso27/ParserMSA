
package com.websystique.springmvc.dao;

import com.websystique.springmvc.model.File;

public interface FileDao {
    
    void saveFile(File file);
    
    public File findByPath(String path);
    
}
