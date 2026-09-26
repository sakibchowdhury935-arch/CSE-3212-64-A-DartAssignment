import 'dart:io';

class Rectangle {
  double length;
  double width;

  Rectangle(this.length, this.width);

  double area() {
    return length * width;
  }

  double perimeter() {
    return 2 * (length + width);
  }
}

void main() {
  stdout.write("Enter length: ");
  double length = double.parse(stdin.readLineSync()!);

  stdout.write("Enter width: ");
  double width = double.parse(stdin.readLineSync()!);

  Rectangle rectangle = Rectangle(length, width);

  print("\nArea = ${rectangle.area()}");
  print("Perimeter = ${rectangle.perimeter()}");
}

