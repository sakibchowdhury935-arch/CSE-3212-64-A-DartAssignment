import 'dart:io';

abstract class Flyable {
  void fly();
}

abstract class Swimmable {
  void swim();
}

class Duck implements Flyable, Swimmable {
  @override
  void fly() {
    print("Duck is Flying");
  }

  @override
  void swim() {
    print("Duck is Swimming");
  }
}

void main() {
  Duck duck = Duck();

  stdout.write("Enter action (fly/swim): ");
  String action = stdin.readLineSync()!.toLowerCase();

  if (action == "fly") {
    duck.fly();
  } else if (action == "swim") {
    duck.swim();
  } else {
    print("Invalid Action");
  }
}