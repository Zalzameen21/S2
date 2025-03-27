import java.util.Scanner;

class Employee {
    String name;
    String jobTitle;
    double salary;

    public Employee(String name, String jobTitle, double salary) {
        this.name = name;
        this.jobTitle = jobTitle;
        this.salary = salary;
    }

    public void updateSalary(double raisePercentage) {
        salary += salary * raisePercentage / 100;
    }

    public double getSalary() {
        return salary;
    }

    public void printEmployeeDetails() {
        System.out.println("Name: " + name);
        System.out.println("Job Title: " + jobTitle);
        System.out.println("Salary: $" + salary);
    }

    public static void compareSalaries(Employee emp1, Employee emp2) {
        if (emp1.getSalary() > emp2.getSalary()) {
            System.out.println("Employee with highest salary: " + emp1.name + ", " + emp1.jobTitle);
        } else if (emp1.getSalary() < emp2.getSalary()) {
            System.out.println("Employee with highest salary: " + emp2.name + ", " + emp2.jobTitle);
        } else {
            System.out.println("Both employees have the same salary.");
        }
    }
}

public class EmployeeTest {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Enter details for the first employee:");
        System.out.print("Name: ");
        String name1 = scanner.nextLine();
        System.out.print("Job Title: ");
        String jobTitle1 = scanner.nextLine();
        System.out.print("Salary: ");
        double salary1 = scanner.nextDouble();
        scanner.nextLine();

        Employee emp1 = new Employee(name1, jobTitle1, salary1);

        System.out.println("\nEnter details for the second employee:");
        System.out.print("Name: ");
        String name2 = scanner.nextLine();
        System.out.print("Job Title: ");
        String jobTitle2 = scanner.nextLine();
        System.out.print("Salary: ");
        double salary2 = scanner.nextDouble();

        Employee emp2 = new Employee(name2, jobTitle2, salary2);

        Employee.compareSalaries(emp1, emp2);
    }
}
