import 'dart:io';

abstract class Company {
  String name;

  Company(this.name);

  double calculateSalary();
}

class Manager extends Company {
  double basicSalary;

  Manager(String name, this.basicSalary) : super(name);

  @override
  double calculateSalary() {
    return basicSalary + 10000;
  }
}

class Developer extends Company {
  double basicSalary;

  Developer(String name, this.basicSalary) : super(name);

  @override
  double calculateSalary() {
    return basicSalary + 5000;
  }
}

void main() {
  stdout.write("Enter employee type (manager/developer): ");
  String type = stdin.readLineSync()!.toLowerCase();

  stdout.write("Enter name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter basic salary: ");
  double salary = double.parse(stdin.readLineSync()!);

  Company employee;

  if (type == "manager") {
    employee = Manager(name, salary);
  } else if(type == "developer"){
    employee = Developer(name, salary);
  } else{
    print("Invalid type");
    return;
  }

  print("Monthly Salary = ${employee.calculateSalary()}");
}