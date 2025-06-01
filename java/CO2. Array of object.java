Q)Program to create a class for Employee having attributes eNo, eName eSalary. Read n 
employ information and Search for an employee given eNo, using the concept of Array of 
Objects


code:

import java.util.Scanner;

class Employee {
    int eNo;
    String eName;
    double eSalary;

    Employee(int eNo, String eName, double eSalary) {
        this.eNo = eNo;
        this.eName = eName;
        this.eSalary = eSalary;
    }

    void show() {
        System.out.println("No: " + eNo + ", Name: " + eName + ", Salary: " + eSalary);
    }
}

public class EmployeeSearch {
    public static void main (String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("How many employees? ");
        int n = sc.nextInt();
        Employee[] emp = new Employee[n];

        for (int i = 0; i < n; i++) {
            System.out.print("Enter No, Name, Salary: ");
            int no = sc.nextInt();
            String name = sc.next();
            double sal = sc.nextDouble();
            emp[i] = new Employee(no, name, sal);
        }

        System.out.print("Enter employee number to search: ");
        int search = sc.nextInt();
        boolean found = false;

        for (Employee e : emp) {
            if (e.eNo == search) {
                e.show();
                found = true;
                break;
            }
        }

        if (!found)
            System.out.println("Employee not found.");

        sc.close();
    }
}
