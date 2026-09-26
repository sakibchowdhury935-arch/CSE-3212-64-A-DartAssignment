import 'dart:io';

class Temperature {
  double _temp = 0;

  set celsius(double value) {
    _temp = value;
  }

  double get fahrenheit {
    return (_temp * 9 / 5) + 32;
  }
}

void main() {
  Temperature temperature = Temperature();

  stdout.write("Enter temperature in Celsius: ");
  double celsius = double.parse(stdin.readLineSync()!);

  temperature.celsius = celsius;

  print("Temperature in Fahrenheit: ${temperature.fahrenheit}");
}

