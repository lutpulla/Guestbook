package kz.my.guestbook.db.spring.dao;

import java.io.Serializable;
import java.util.List;
import java.util.Map;
import kz.my.guestbook.db.HbObject;
import org.hibernate.NonUniqueObjectException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author lutpulla.avakriyev
 */
@Repository
public class HbObjectDAOImpl implements HbObjectDAO, Serializable {
    
    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession() {
        return sessionFactory.getCurrentSession();
    }
    
    @Override
    public <T extends HbObject> List<T> query(String hql, Map<String, Object> parameters) {
        Query query = getSession().createQuery(hql);
        if(parameters != null) {
            for(String key : parameters.keySet()) {
                query.setParameter(key, parameters.get(key));
            }
        }
        List<T> list = query.list();
        return list;
    }
    
    @Override
    public <T extends HbObject> void create(T hbObject) {
        getSession().persist(hbObject);
    }
    
    @Override
    public <T extends HbObject> void edit(T hbObject) {
        try {
            getSession().update(hbObject);
        } catch (NonUniqueObjectException ex) {
            getSession().merge(hbObject);
        }
    }
    
    @Override
    public <T extends HbObject> void delete(T hbObject) {
        getSession().delete(hbObject);
    }
    
    @Override
    public <T extends HbObject> T read(Class<T> cl, Long id) {
        return (T) getSession().get(cl, id);
    }
    
    @Override
    public <T extends HbObject> void refresh(T hbObject) {
        getSession().refresh(hbObject);
    }

}
