import java.util.Scanner;

class CPU {
    double price;

    class Processor {
        int cores;
        String manufacturer;

        Processor(int cores, String manufacturer) {
            this.cores = cores;
            this.manufacturer = manufacturer;
        }

        void displayProcessorInfo() {
            System.out.println("Processor Cores: " + cores);
            System.out.println("Processor Manufacturer: " + manufacturer);
        }
    }

    static class RAM {
        int memory;
        String manufacturer;

        RAM(int memory, String manufacturer) {
            this.memory = memory;
            this.manufacturer = manufacturer;
        }

        void displayRAMInfo() {
            System.out.println("RAM Memory: " + memory + " GB");
            System.out.println("RAM Manufacturer: " + manufacturer);
        }
    }

    CPU(double price) {
        this.price = price;
    }

    void displayCPUInfo() {
        System.out.println("CPU Price: $" + price);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter CPU price: ");
        double price = scanner.nextDouble();
        scanner.nextLine();

        CPU cpu = new CPU(price); 
        cpu.displayCPUInfo();

        System.out.print("Enter number of cores for the processor: ");
        int cores = scanner.nextInt();
        scanner.nextLine();

        System.out.print("Enter processor manufacturer: ");
        String processorManufacturer = scanner.nextLine();

        CPU.Processor processor = cpu.new Processor(cores, processorManufacturer);
        processor.displayProcessorInfo();

        System.out.print("Enter RAM memory (in GB): ");
        int memory = scanner.nextInt();
        scanner.nextLine();

        System.out.print("Enter RAM manufacturer: ");
        String ramManufacturer = scanner.nextLine();

        CPU.RAM ram = new CPU.RAM(memory, ramManufacturer);
        ram.displayRAMInfo();

        scanner.close();
    }
}
