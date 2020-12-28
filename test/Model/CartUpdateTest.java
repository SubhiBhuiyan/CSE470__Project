package Model;

import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.*;

public class CartUpdateTest {
    
    public CartUpdateTest() {
    }
    CartUpdate c;
    
    @Before
    public void setUp() {
        c = new CartUpdate();
    }

    @Test
    public void testAddCartItems() {
        System.out.println("addCartItems");
        int a = 5;
        int b = 3;
        CartUpdate instance = new CartUpdate();
        int expResult = 8;
        int result = instance.addCartItems(a, b);
        assertEquals(expResult, result);
    }

    @Test
    public void testRemoveCartItems() {
        System.out.println("removeCartItems");
        int a = 9;
        int b = 2;
        CartUpdate instance = new CartUpdate();
        int expResult = 7;
        int result = instance.removeCartItems(a, b);
        assertEquals(expResult, result);

    }
    
}
