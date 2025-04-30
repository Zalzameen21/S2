import java.util.Scanner;

public class Area {

    double area(double radius) {
        return Math.PI * radius * radius;
    }

    double area(double length, double width) {
        return length * width;
    }

    double area(double base, double height, boolean Triangle) {
        if (Triangle) {
            return 0.5 * base * height;
        }
        return 0.0;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Area shape = new Area();

        System.out.println("Choose shape to calculate area:");
        System.out.println("1. Circle");
        System.out.println("2. Rectangle");
        System.out.println("3. Triangle");
        int choice = scanner.nextInt();

        switch (choice) {
            case 1:
                System.out.print("Enter radius: ");
                double radius = scanner.nextDouble();
                System.out.println("Area of circle: " + shape.area(radius));
                break;
            case 2:
                System.out.print("Enter length: ");
                double length = scanner.nextDouble();
                System.out.print("Enter width: ");
                double width = scanner.nextDouble();
                System.out.println("Area of rectangle: " + shape.area(length, width));
                break;
            case 3:
                System.out.print("Enter base of the triangle: ");
                double base = scanner.nextDouble();
                System.out.print("Enter height of the triangle: ");
                double height = scanner.nextDouble();
                System.out.println("Area of triangle: " + shape.area(base, height, true));
                break;
            default:
                System.out.println("Invalid choice.");
        }

        scanner.close();
    }
}


                                                                    
