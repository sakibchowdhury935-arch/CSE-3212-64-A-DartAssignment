import 'dart:io';

class Student {
  String name;
  String id;
  double cgpa;

  Student(this.name, this.id, this.cgpa);

  void displayInfo() {
    print("Name: $name");
    print("ID: $id");
    print("CGPA: $cgpa");
  }
}

void main() {
  stdout.write("Enter student name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter student ID: ");
  String id = stdin.readLineSync()!;

  stdout.write("Enter CGPA: ");
  double cgpa = double.parse(stdin.readLineSync()!);

  Student student = Student(name, id, cgpa);
  student.displayInfo();
}

