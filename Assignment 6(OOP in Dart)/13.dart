import 'dart:io';
import 'dart:math';

class Shape {
  double area() {
    return 0;
  }
}

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double area() {
    return length * width;
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return pi * radius * radius;
  }
}

void main() {
  stdout.write("Enter rectangle length: ");
  double length = double.parse(stdin.readLineSync()!);

  stdout.write("Enter rectangle width: ");
  double width = double.parse(stdin.readLineSync()!);

  stdout.write("Enter circle radius: ");
  double radius = double.parse(stdin.readLineSync()!);

  Shape rectangle = Rectangle(length, width);
  Shape circle = Circle(radius);

  print("\nRectangle Area = ${rectangle.area()}");
  print("Circle Area = ${circle.area()}");
}

