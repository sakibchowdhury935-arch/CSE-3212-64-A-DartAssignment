import 'dart:io';

bool isEqual<T>(T a, T b) {
  return a == b;
}

void main() {
  stdout.write("Enter first number: ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  int b = int.parse(stdin.readLineSync()!);

  print(isEqual<int>(a, b));
}