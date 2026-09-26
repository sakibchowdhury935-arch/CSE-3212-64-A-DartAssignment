import 'dart:io';

void main() {
  File file = File('hello.txt');

  file.writeAsStringSync('Sakib');

  print("Name written to hello.txt");
}