package kz.my.guestbook.web.controller;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.PostConstruct;
import kz.my.guestbook.db.entity.Guestbook;
import kz.my.guestbook.db.spring.service.HbObjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

/**
 *
 * @author lutpulla.avakriyev
 */
@Controller
@Scope("session")
public class ViewBean implements Serializable {
    
    private static final Logger LOGGER = Logger.getLogger(ViewBean.class.getName());

    @Autowired
    private HbObjectService service;
    
    private List<Guestbook> guestbookList;
    
    @PostConstruct
    public void init() {
        guestbookList = new ArrayList<>();
    }
    
    public void refresh() {
        try {
            List<Guestbook> gbList = service.getAll(Guestbook.class, "id desc");
            guestbookList.clear();
            guestbookList.addAll(gbList);
        } catch (Exception ex) {
            LOGGER.log(Level.SEVERE, null, ex);
        }
    }

    public List<Guestbook> getGuestbookList() {
        return guestbookList;
    }
    
}
