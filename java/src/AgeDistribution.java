import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

/**
 * User: reppard
 * Date: 8/24/14
 * Time: 5:56 PM
 */
public class AgeDistribution {
    public static void main(String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader in = new BufferedReader(new FileReader(file));
        String line;
        while ((line = in.readLine()) != null) {
            printCategory(line);
        }
    }

    private static void printCategory(String line) {
        System.out.println(getCategory(Integer.parseInt(line)));
    }

    public static String getCategory(int age) {
        if(age == 0 && age <= 2){
            return "Still in Mama's arms";
        }else if(age == 3 || age == 4){
            return "Preschool Maniac";
        }else if(age >= 5 && age <= 11){
            return "Elementary school";
        }else if(age >= 12 && age <= 14){
            return "Middle school";
        }else if(age >= 15 && age <= 18){
            return "High school";
        }else if(age >= 19 && age <= 22){
            return "College";
        }else if(age >= 23 && age <= 65){
            return "Working for the man";
        }else if(age >= 66 && age <= 100){
            return "The Golden Years";
        }else if(age > 0 || age < 100){
            return "This program is for humans";
        }
        return null;
    }
}
