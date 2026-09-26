import 'dart:math';

double areaOfCircle(double radius) {
  return pi * radius * radius;
}

void main() {
  print("Area = ${areaOfCircle(5)}");
}