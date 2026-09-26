import 'dart:io';

class Book {
  String title;
  String subtitle;
  String author;

  Book(this.title, this.subtitle, this.author);

  void displayInfo() {
    print("Title: $title");
    print("Subtitle: $subtitle");
    print("Author: $author");
  }
}

void main() {
  stdout.write("Enter book title: ");
  String title = stdin.readLineSync()!;

  stdout.write("Enter book subtitle: ");
  String subtitle = stdin.readLineSync()!;

  stdout.write("Enter author name: ");
  String author = stdin.readLineSync()!;

  Book book = Book(title, subtitle, author);
  book.displayInfo();
}
