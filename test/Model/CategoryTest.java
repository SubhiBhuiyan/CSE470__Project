package Model;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

public class CategoryTest {
    
    public CategoryTest() {
    }

    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of setCategory method, of class Category.
     */
    @Test
    public void testSetCategory() {
        System.out.println("setCategory");
        Category category = null;
        Category instance = new Category();
        instance.setCategory(category);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getCategory method, of class Category.
     */
    @Test
    public void testGetCategory() {
        System.out.println("getCategory");
        Category instance = new Category();
        Category expResult = null;
        Category result = instance.getCategory();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setCatId method, of class Category.
     */
    @Test
    public void testSetCatId() {
        System.out.println("setCatId");
        int catId = 0;
        Category instance = new Category();
        instance.setCatId(catId);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setCatTitle method, of class Category.
     */
    @Test
    public void testSetCatTitle() {
        System.out.println("setCatTitle");
        String catTitle = "";
        Category instance = new Category();
        instance.setCatTitle(catTitle);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setCatDescription method, of class Category.
     */
    @Test
    public void testSetCatDescription() {
        System.out.println("setCatDescription");
        String catDescription = "";
        Category instance = new Category();
        instance.setCatDescription(catDescription);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getCatId method, of class Category.
     */
    @Test
    public void testGetCatId() {
        System.out.println("getCatId");
        Category instance = new Category();
        int expResult = 0;
        int result = instance.getCatId();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getCatTitle method, of class Category.
     */
    @Test
    public void testGetCatTitle() {
        System.out.println("getCatTitle");
        Category instance = new Category();
        String expResult = "";
        String result = instance.getCatTitle();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getCatDescription method, of class Category.
     */
    @Test
    public void testGetCatDescription() {
        System.out.println("getCatDescription");
        Category instance = new Category();
        String expResult = "";
        String result = instance.getCatDescription();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
