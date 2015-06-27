import java.io.*;

public class Main {
    public static void main(String[] args) throws IOException {
        System.out.println("Solution to Codeval FizzBuzz Problem:");
        System.out.println("\n");
        FizzBuzz.main(new String[] {"data/FizzData"});
        System.out.println("\n");


        System.out.println("Solution to Codeval RollerCoaster Problem:");
        System.out.println("\n");
        RollerCoaster.main(new String[] {"data/RollerCoasterData"});
        System.out.println("\n");

        System.out.println("Solution to Codeval AgeDistribution Problem:");
        System.out.println("\n");
        AgeDistribution.main(new String[] {"data/AgeDistributionData"});
        System.out.println("\n");
    }

}