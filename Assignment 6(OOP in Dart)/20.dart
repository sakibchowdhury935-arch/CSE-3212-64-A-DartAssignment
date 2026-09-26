import 'dart:io';

extension StringExtension on String {
  String toCapitalized() {
    if (isEmpty) return this;

    return this[0].toUpperCase() + substring(1).toLowerCase();
  }
}

void main() {
  stdout.write("Enter a word: ");
  String word = stdin.readLineSync()!;

  print("Capitalized: ${word.toCapitalized()}");
}