package kz.my.guestbook.db;

import java.io.Serializable;
import javax.persistence.MappedSuperclass;

/**
 *
 * @author lutpulla.avakriyev
 */
@MappedSuperclass
public interface HbObject extends Serializable {
    
    public Long getId();

    public void setId(Long id);
    
}
