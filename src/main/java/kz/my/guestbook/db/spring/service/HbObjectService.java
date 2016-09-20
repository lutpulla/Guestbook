package kz.my.guestbook.db.spring.service;

import java.util.List;
import kz.my.guestbook.db.HbObject;

/**
 *
 * @author lutpulla.avakriyev
 */
public interface HbObjectService {
    
    public <T extends HbObject> List<T> getAll(Class<T> cl, String orderBy) throws Exception;

    public <T extends HbObject> T read(Class<T> cl, Long id) throws Exception;
    
    public <T extends HbObject> void create(T object) throws Exception;
    
    public <T extends HbObject> void edit(T object) throws Exception;
    
    public <T extends HbObject> void delete(T object) throws Exception;

}
