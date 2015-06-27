import org.junit.Test;

import static org.junit.Assert.assertArrayEquals;
import static org.junit.Assert.assertEquals;

public class FizzBuzzTest {
    @Test
    public void testGetNumbersReturnsArrayOfNumbers() throws Exception {
        String string = "5 6 15";
        int[] expected = new int[] {5,6,15};
        assertArrayEquals(expected, FizzBuzz.getNumbers(string));
    }
    @Test
    public void testGetRangeReturnsArrayOfOneToN(){
        int n = 7;
        int[] expected = new int[] {1,2,3,4,5,6,7};
        assertArrayEquals(expected, FizzBuzz.getRange(n));
    }
    @Test
    public void testFizzBuzzReturnsFIfNIsDivisibleByA (){
        int n = 4;
        int a = 2;
        int b = 5;
        assertEquals("F", FizzBuzz.fizzBuzz(n,a,b));
    }
    @Test
    public void testFizzBuzzReturnsBIfNDivisibleByB (){
        int n = 15;
        int a = 2;
        int b = 5;
        assertEquals("B",FizzBuzz.fizzBuzz(n,a,b));
    }
    @Test
    public void testFizzBuzzReturnsFBIfNDivisibleByBoth (){
        int n = 10;
        int a = 2;
        int b = 5;
        assertEquals("FB",FizzBuzz.fizzBuzz(n,a,b));
    }
    @Test
    public void testFizzBuzzReturnsNullNIfDivisibleByNether (){
        int n = 7;
        int a = 2;
        int b = 5;
        assertEquals(null,FizzBuzz.fizzBuzz(n,a,b));
    }
}
