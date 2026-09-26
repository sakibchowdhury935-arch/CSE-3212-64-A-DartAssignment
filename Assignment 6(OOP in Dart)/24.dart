import 'dart:io';

class Box<T> {
  T value;

  Box(this.value);

  void display() {
    print("Stored Value: $value");
  }
}

void main() {
  stdout.write("Enter a value: ");
  String value = stdin.readLineSync()!;

  Box<String> box = Box<String>(value);

  box.display();
}