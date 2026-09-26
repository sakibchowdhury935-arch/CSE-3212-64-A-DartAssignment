import 'dart:io';

class Person {
  void displayInfo() {
    print("I am a Person");
  }
}

class Teacher extends Person {
  @override
  void displayInfo() {
    print("I am a Teacher");
  }
}

class Student extends Person {
  @override
  void displayInfo() {
    print("I am a Student");
  }
}

void main() {
  stdout.write("Enter person type (t/s): ");
  String type = stdin.readLineSync()!;

  if (type == "t") {
    Teacher teacher = Teacher();
    teacher.displayInfo();
  } else if (type == "s") {
    Student student = Student();
    student.displayInfo();
  } else {
    print("Invalid type.");
  }
}
