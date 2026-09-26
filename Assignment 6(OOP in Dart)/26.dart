import 'dart:io';

T findLargest<T extends num>(T a, T b) {
  return a > b ? a : b;
}

void main() {
  stdout.write("Enter first number: ");
  double a = double.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  double b = double.parse(stdin.readLineSync()!);

  print("Largest = ${findLargest(a, b)}");
}