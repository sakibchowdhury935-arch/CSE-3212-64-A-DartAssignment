import 'dart:io';

void main() {
  File file = File('students.csv');

  file.writeAsStringSync(
      'Name,Age,Address\n'
      'Sakib,21,Sylhet\n'
      'Fuyad,22,Sylhet\n');

  print("Data stored in CSV file.");

  print("\nReading CSV File:\n");

  String content = file.readAsStringSync();
  print(content);
}