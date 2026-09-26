import 'dart:io';

void main() {
  File file = File('hello.txt');

  file.writeAsStringSync('\nRatul',
      mode: FileMode.append);

  print("Friend's name is added!");
}