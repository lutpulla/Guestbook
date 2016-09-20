package kz.my.guestbook.db.entity;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import kz.my.guestbook.db.HbObject;

/**
 *
 * @author lutpulla.avakriyev
 */
@Entity
@Table(name = "guestbook", schema = "public")
public class Guestbook implements HbObject {

    private Long id;
    private String userName;
    private Date creationDate;
    private String email;
    private String homePage;
    private String messageText;
    private String ipAddress;
    private String browser;

    @Id
    @Override
    @GeneratedValue(strategy=GenerationType.SEQUENCE, generator="guestbookSeq")
    @SequenceGenerator(name="guestbookSeq", sequenceName="guestbook_seq", allocationSize=1)
    @Column(name = "id", unique = true, nullable = false)
    public Long getId() {
        return this.id;
    }

    @Override
    public void setId(Long id) {
        this.id = id;
    }
    
    @Column(name = "user_name", nullable = false, length = 100)
    public String getUserName() {
        return this.userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "creation_date", nullable = false, length = 35)
    public Date getCreationDate() {
        return this.creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

    @Column(name = "email", nullable = false, length = 100)
    public String getEmail() {
        return this.email;
    }

    public void setEmail(String eMail) {
        this.email = eMail;
    }

    @Column(name = "home_page", length = 200)
    public String getHomePage() {
        return this.homePage;
    }

    public void setHomePage(String homePage) {
        this.homePage = homePage;
    }

    @Column(name = "message_text", nullable = false)
    public String getMessageText() {
        return this.messageText;
    }

    public void setMessageText(String messageText) {
        this.messageText = messageText;
    }

    @Column(name = "ip_address", length = 30)
    public String getIpAddress() {
        return ipAddress;
    }

    public void setIpAddress(String ipAddress) {
        this.ipAddress = ipAddress;
    }

    @Column(name = "browser", length = 200)
    public String getBrowser() {
        return browser;
    }

    public void setBrowser(String browser) {
        this.browser = browser;
    }

}
