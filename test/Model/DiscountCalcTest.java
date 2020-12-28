package Model;
import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.*;

public class DiscountCalcTest {
    
    public DiscountCalcTest() {
    }
    DiscountCalc p;
    
    @Before
    public void setUp() {
        p = new DiscountCalc();
    }

    @Test
    public void testDiscountedPrice() {
        System.out.println("discountedPrice");
        double price = 1000.0;
        double discount = 10.0;
        DiscountCalc instance = new DiscountCalc();
        double expResult = 900.0;
        double result = instance.discountedPrice(price, discount);
        assertEquals(expResult, result, 0.0);
    }
    
}
