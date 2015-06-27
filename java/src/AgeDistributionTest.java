import org.junit.Test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

/**
 * User: reppard
 * Date: 8/24/14
 * Time: 6:50 PM
 * If they're from 0 to 2 the child should be with parents print : 'Still in Mama's arms'
 * If they're 3 or 4 and should be in preschool print : 'Preschool Maniac'
 * If they're from 5 to 11 and should be in elementary school print : 'Elementary school'
 * From 12 to 14: 'Middle school'
 * From 15 to 18: 'High school'
 * From 19 to 22: 'College'
 * From 23 to 65: 'Working for the man'
 * From 66 to 100: 'The Golden Years'
 * If the age of the person less than 0 or more than 100 - it might be an alien - print: "This program is for humans"
 */
public class AgeDistributionTest {

    @Test
    public void testGetCategoryShouldReturnCorrectCategory () {
        assertEquals("Still in Mama's arms",      AgeDistribution.getCategory(0));
        assertEquals("Preschool Maniac",          AgeDistribution.getCategory(3));
        assertEquals("Elementary school",         AgeDistribution.getCategory(7));
        assertEquals("Middle school",             AgeDistribution.getCategory(13));
        assertEquals("High school",               AgeDistribution.getCategory(17));
        assertEquals("College",                   AgeDistribution.getCategory(21));
        assertEquals("Working for the man",       AgeDistribution.getCategory(33));
        assertEquals("The Golden Years",          AgeDistribution.getCategory(99));
        assertEquals("This program is for humans",AgeDistribution.getCategory(-1));
        assertEquals("This program is for humans",AgeDistribution.getCategory(101));
    }
}