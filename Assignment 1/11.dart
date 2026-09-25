import 'dart:io';

void main() {
  print("Enter total bill amount:");
  double bill = double.parse(stdin.readLineSync()!);

  print("Enter number of people:");
  int people = int.parse(stdin.readLineSync()!);

  double split_Amount = bill / people;

  print("Bill per person: $split_Amount");
}