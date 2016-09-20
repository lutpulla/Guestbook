package kz.my.guestbook.util;

import javax.faces.application.FacesMessage;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import kz.my.guestbook.web.Captcha;

/**
 *
 * @author lutpulla.avakriyev
 */
public class JsfUtil {
    
    public static FacesContext getFacesContext() {
        return FacesContext.getCurrentInstance();
    }
    
    public static HttpServletRequest getRequest() {
        return (HttpServletRequest) getFacesContext().getExternalContext().getRequest();
    }
    
    public static String getIpAddress() {
        return getRequest().getRemoteAddr();
    }
    
    public static boolean checkCapthca(String value) {
        HttpSession session = getRequest().getSession();
        String key = (String) session.getAttribute(Captcha.CAPTCHA_KEY);
        return value.equals(key);
    }
    
    public static String getBrowser() {
        ExternalContext externalContext = getFacesContext().getExternalContext();
        return externalContext.getRequestHeaderMap().get("User-Agent");
    }

    public static Object getBean(String name) {
        FacesContext fc = getFacesContext();
        return fc.getApplication().getELResolver().getValue(fc.getELContext(), null, name);
    }

    public static void addErrorMessage(String id, String msg) {
        FacesMessage facesMsg = new FacesMessage(FacesMessage.SEVERITY_ERROR, msg, null);
        getFacesContext().addMessage(id, facesMsg);
    }

    public static void addInfoMessage(String id, String msg) {
        FacesMessage facesMsg = new FacesMessage(FacesMessage.SEVERITY_INFO, msg, null);
        getFacesContext().addMessage(id, facesMsg);
    }
}
