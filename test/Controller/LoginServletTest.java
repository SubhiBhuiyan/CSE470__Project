package Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Subhi Bhuiyan
 */
public class LoginServletTest {
    
    public LoginServletTest() {
    }

    @Before
    public void setUp() {
    }

    @Test
    public void testGetServletInfo() {
        System.out.println("getServletInfo");
        LoginServlet instance = new LoginServlet();
        String expResult = "";
        String result = instance.getServletInfo();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
