import 'dart:io';

class Car {
  Car.manual() {
    print("Manual Car");
  }

  Car.automatic() {
    print("Automatic Car");
  }
}

void main() {
  stdout.write("Enter car type (m/a): ");
  String type = stdin.readLineSync()!;

  if (type == "m") {
    Car.manual();
  } else if (type == "a") {
    Car.automatic();
  } else {
    print("Invalid type.");
  }
}

