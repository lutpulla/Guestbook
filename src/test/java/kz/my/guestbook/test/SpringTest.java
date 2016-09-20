package kz.my.guestbook.test;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import kz.my.guestbook.db.entity.Guestbook;
import kz.my.guestbook.db.spring.service.HbObjectService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author lutpulla.avakriyev
 */
@org.junit.Ignore
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:root-context.xml")
public class SpringTest {
    
    private static final Logger LOGGER = Logger.getLogger(SpringTest.class.getName());

    @Autowired
    private HbObjectService objectService;
    
    @Test
    @Transactional
    public void test() throws Exception {
        try {
            List<Guestbook> objectList = objectService.getAll(Guestbook.class, "id");
            for (Guestbook gb : objectList) {
                System.out.printf("%d : %s, %s, %s \n", gb.getId(), gb.getUserName(), gb.getEmail(), gb.getCreationDate());
            }
            System.out.println("------------------");
        } catch (Exception ex) {
            LOGGER.log(Level.SEVERE, "Exception", ex);
        }
    }
    
}

