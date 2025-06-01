Q)Program to sort strings


code:

import java.util.Arrays;
import java.util.Scanner;

public class SortStrings {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the number of strings: ");
        int n = scanner.nextInt();
        scanner.nextLine();
        String[] words = new String[n];
        System.out.println("Enter the strings:");
        for (int i = 0; i < n; i++) {
            words[i] = scanner.nextLine();
        }
        Arrays.sort(words);
        System.out.println("Sorted Strings:");
        for (String word : words) {
            System.out.println(word);
        }
    }
}
