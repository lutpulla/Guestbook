package kz.my.guestbook.web.controller;

import java.io.Serializable;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.PostConstruct;
import kz.my.guestbook.db.entity.Guestbook;
import kz.my.guestbook.db.spring.service.HbObjectService;
import kz.my.guestbook.util.JsfUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

/**
 *
 * @author lutpulla.avakriyev
 */
@Controller
@Scope("session")
public class AddBean implements Serializable {
    
    private static final Logger LOGGER = Logger.getLogger(AddBean.class.getName());

    @Autowired
    private HbObjectService service;
    
    private ViewBean viewBean;
    private Guestbook newItem;
    private String captcha;
    
    @PostConstruct
    public void init() {
        viewBean = (ViewBean) JsfUtil.getBean("viewBean");
    }
    
    public void refresh() {
        newItem = new Guestbook();
        captcha = null;
        viewBean.refresh();
    }
    
    public void add() {
        try {
            if (JsfUtil.checkCapthca(captcha)) {
                Guestbook newGuestbook = new Guestbook();
                newGuestbook.setUserName(newItem.getUserName());
                newGuestbook.setEmail(newItem.getEmail());
                newGuestbook.setHomePage(newItem.getHomePage());
                newGuestbook.setMessageText(newItem.getMessageText());
                newGuestbook.setCreationDate(new Date());
                newGuestbook.setIpAddress(JsfUtil.getIpAddress());
                newGuestbook.setBrowser(JsfUtil.getBrowser());
                service.create(newGuestbook);
                refresh();
                JsfUtil.addInfoMessage(null, "Успешно добавлено!");
            } else {
                JsfUtil.addErrorMessage(null, "В капче символы не соответствуют изображению!");
            }
        } catch (Exception ex) {
            JsfUtil.addErrorMessage(null, ex.toString());
            LOGGER.log(Level.SEVERE, null, ex);
        }
    }

    public Guestbook getNewItem() {
        return newItem;
    }

    public String getCaptcha() {
        return captcha;
    }

    public void setCaptcha(String captcha) {
        this.captcha = captcha;
    }

}
