/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.Hashtable;
import java.util.List;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Asus
 */
public class CategoryDatabaseTest {
    
    public CategoryDatabaseTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of saveCategory method, of class CategoryDatabase.
     */
    @Test
    public void testSaveCategory() {
        System.out.println("saveCategory");
        Category category = null;
        CategoryDatabase instance = null;
        boolean expResult = false;
        boolean result = instance.saveCategory(category);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of fetchCat method, of class CategoryDatabase.
     */
    @Test
    public void testFetchCat() {
        System.out.println("fetchCat");
        String catTitle = "";
        String catDescription = "";
        CategoryDatabase instance = null;
        Category expResult = null;
        Category result = instance.fetchCat(catTitle, catDescription);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getCategory method, of class CategoryDatabase.
     */
    @Test
    public void testGetCategory() {
        System.out.println("getCategory");
        CategoryDatabase instance = null;
        Hashtable<Integer, String> expResult = null;
        Hashtable<Integer, String> result = instance.getCategory();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getAllcategories method, of class CategoryDatabase.
     */
    @Test
    public void testGetAllcategories() {
        System.out.println("getAllcategories");
        CategoryDatabase instance = null;
        List<Category> expResult = null;
        List<Category> result = instance.getAllcategories();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
