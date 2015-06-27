import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.Arrays;

public class RollerCoaster {
    public static void main(String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader in = new BufferedReader(new FileReader(file));
        String line;
        while ((line = in.readLine()) != null) {
            String newLine = format(line);

            System.out.println(newLine);
        }
    }

    public static String format(String line) {
        boolean upper = true;
        String[] split = getSplit(line);
        String[] newLine = new String[split.length];
        for(int i = 0; i < split.length; i++){
              if(Character.isLetter(split[i].charAt(0))){
                newLine[i] = upper ? split[i].toUpperCase() : split[i].toLowerCase();
                upper = !upper;
              }else{
                  newLine[i] = split[i];
              }
        }
        StringBuilder builder = new StringBuilder();
        for(String s: newLine){
            builder.append(s);
        }

        return builder.toString();
    }

    public static String[] getSplit(String line) {
        String[] oldArray = line.split("");
        return Arrays.copyOfRange(oldArray,1,oldArray.length);
    }
}
