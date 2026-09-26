import 'dart:io';

class Person {
  String name;

  Person(this.name);
}

class Employee extends Person {
  double salary;

  Employee(String name, this.salary) : super(name);

  void displayInfo() {
    print("Name: $name");
    print("Salary: $salary");
  }
}

void main() {
  stdout.write("Enter employee name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter salary: ");
  double salary = double.parse(stdin.readLineSync()!);

  Employee employee = Employee(name, salary);

  employee.displayInfo();
}

