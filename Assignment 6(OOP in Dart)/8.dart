import 'dart:io';

class Employee {
  String name;
  String designation;
  double salary;

  Employee(this.name, this.designation, this.salary);
}

void main() {
  List<Employee> employees = [];

  for (int i = 1; i <= 2; i++) {
    print("\nEnter details for Employee $i:");

    stdout.write("Name: ");
    String name = stdin.readLineSync()!;

    stdout.write("Designation: ");
    String designation = stdin.readLineSync()!;

    stdout.write("Salary: ");
    double salary = double.parse(stdin.readLineSync()!);

    employees.add(Employee(name, designation, salary));
  }

  print("\nEmployee Details:");

  for (var employee in employees) {
    print("Name: ${employee.name}");
    print("Designation: ${employee.designation}");
    print("Salary: ${employee.salary}");
  }
}

