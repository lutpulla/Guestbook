package kz.my.guestbook.db.spring.service;

import java.io.Serializable;
import java.util.List;
import kz.my.guestbook.db.HbObject;
import kz.my.guestbook.db.spring.dao.HbObjectDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author lutpulla.avakriyev
 */
@Service
public class HbObjectServiceImpl implements HbObjectService, Serializable {
 
    @Autowired
    private HbObjectDAO objectDAO;
 
    @Transactional
    @Override
    public <T extends HbObject> List<T> getAll(Class<T> cl, String orderBy) throws Exception {
        String hql = "from " + cl.getSimpleName();
        if(orderBy != null && !orderBy.trim().isEmpty()) {
            hql = hql + " order by " + orderBy;
        }
        return objectDAO.query(hql, null);
    }

    @Transactional
    @Override
    public <T extends HbObject> T read(Class<T> cl, Long id) throws Exception {
        return objectDAO.read(cl, id);
    }
    
    @Transactional
    @Override
    public <T extends HbObject> void create(T object) throws Exception {
        objectDAO.create(object);
    }
    
    @Transactional
    @Override
    public <T extends HbObject> void edit(T object) throws Exception {
        try {
            objectDAO.edit(object);
        } catch (Exception ex) {
            objectDAO.refresh(object);
            throw ex;
        }
    }
    
    @Transactional
    @Override
    public <T extends HbObject> void delete(T object) throws Exception {
        objectDAO.delete(object);
    }

}
