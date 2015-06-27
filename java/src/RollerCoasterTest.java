import org.junit.Test;

import static org.junit.Assert.assertArrayEquals;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

public class RollerCoasterTest {
    @Test
    public void testGetSplitReturnsAStringArray () {
        String line = "This line";
        String[] expected = new String[] {"T","h","i","s"," ","l","i","n","e"};
        assertArrayEquals(expected, RollerCoaster.getSplit(line));
    }
    @Test
    public void testFormatReturnsRollerCoasterCaseWhenPassedALine () {
        String line = "This line";
        assertEquals("ThIs LiNe", RollerCoaster.format(line));
    }

    @Test
    public void testFormatIgnoresSpecialCharacters () {
        String line= "This, Line";
        assertEquals("ThIs, LiNe", RollerCoaster.format(line));
    }
}
