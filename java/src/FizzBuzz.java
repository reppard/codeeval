import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

public class FizzBuzz {
    public static void main(String[] args) throws IOException {
        File file = new File(args[0]);
        BufferedReader in = new BufferedReader(new FileReader(file));
        String line;
        while ((line = in.readLine()) != null) {
            int[] parsedLine = FizzBuzz.getNumbers(line);
            int[] range = FizzBuzz.getRange(parsedLine[2]);
            String newLine = "";
            for (int aRange : range) {
                String format = FizzBuzz.fizzBuzz(aRange, parsedLine[0], parsedLine[1]);
                String next = format != null ? format : Integer.toString(aRange);

                newLine = newLine + next + " ";
            }
            System.out.println(newLine);
        }
    }

    public static int[] getNumbers(String line) {
        String[] stringNumbers = line.split("\\s");
        int[] numbers = new int[stringNumbers.length];

        for (int i = 0; i < stringNumbers.length; i++) {
            numbers[i] = Integer.parseInt(stringNumbers[i]);
        }
        return numbers;
    }

    public static int[] getRange(int n) {
        int[] range = new int[n];
        for (int i = 0; i < n; i++) {
            range[i] = i + 1;
        }
        return range;
    }

    public static String fizzBuzz(int n, int a, int b) {
        boolean fizz = (n % a == 0);
        boolean buzz = (n % b == 0);
        boolean fizzbuzz = (n % a == 0 && n % b == 0);

        if (fizzbuzz) {
            return "FB";
        } else if (fizz) {
            return "F";
        } else if (buzz) {
            return "B";
        } else {
            return null;
        }
    }
}
