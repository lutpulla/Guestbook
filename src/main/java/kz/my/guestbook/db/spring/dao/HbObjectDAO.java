package kz.my.guestbook.db.spring.dao;

import java.util.List;
import java.util.Map;
import kz.my.guestbook.db.HbObject;

/**
 *
 * @author lutpulla.avakriyev
 */
public interface HbObjectDAO {
    
    public <T extends HbObject> List<T> query(String hql, Map<String, Object> parameters);
    
    public <T extends HbObject> void create(T hbObject);
    
    public <T extends HbObject> void edit(T hbObject);
    
    public <T extends HbObject> void delete(T hbObject);
    
    public <T extends HbObject> T read(Class<T> cl, Long id);
    
    public <T extends HbObject> void refresh(T hbObject);
    
}
