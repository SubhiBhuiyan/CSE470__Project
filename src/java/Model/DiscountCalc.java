package Model;
public class DiscountCalc {
    
    public double discountedPrice(double price, double discount){
        return price-price*discount/100;
    }
    
}
