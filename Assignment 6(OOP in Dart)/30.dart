import 'dart:io';

abstract class Person {
  void displayInfo();
}

class Student extends Person {
  String _name;
  int _id;

  Student(this._name, this._id);

  String get name => _name;
  int get id => _id;

  @override
  void displayInfo() {
    print("Student Name: $_name");
    print("Student ID: $_id");
  }
}

class Course {
  String courseName;

  Course(this.courseName);
}

class Enrollment {
  Student student;
  Course course;

  Enrollment(this.student, this.course);

  void showEnrollment() {
    student.displayInfo();
    print("Course: ${course.courseName}");
  }
}

void main() {
  stdout.write("Enter student name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter student ID: ");
  int id = int.parse(stdin.readLineSync()!);

  stdout.write("Enter course name: ");
  String courseName = stdin.readLineSync()!;

  Student student = Student(name, id);
  Course course = Course(courseName);

  Enrollment enrollment =
      Enrollment(student, course);

  enrollment.showEnrollment();
}