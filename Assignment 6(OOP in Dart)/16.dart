import 'dart:io';

abstract class Appliance {
  void turnOn();
  void turnOff();
}

class Fan extends Appliance {
  @override
  void turnOn() {
    print("Fan is ON");
  }

  @override
  void turnOff() {
    print("Fan is OFF");
  }
}

void main() {
  Fan fan = Fan();

  stdout.write("Enter command (on/off): ");
  String command = stdin.readLineSync()!.toLowerCase();

  if (command == "on") {
    fan.turnOn();
  } else if (command == "off") {
    fan.turnOff();
  } else {
    print("Invalid Command");
  }
}