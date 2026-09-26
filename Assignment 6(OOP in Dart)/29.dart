import 'dart:io';

class Book {
  String title;
  bool _issued = false;

  Book(this.title);

  bool get issued => _issued;

  void issueBook() {
    _issued = true;
  }

  void returnBook() {
    _issued = false;
  }
}

class Member {
  String name;

  Member(this.name);
}

class Library {
  void issue(Book book, Member member) {
    if (!book.issued) {
      book.issueBook();
      print("${book.title} issued to ${member.name}");
    } else {
      print("Book already issued");
    }
  }

  void returnBook(Book book) {
    book.returnBook();
    print("${book.title} returned");
  }
}

void main() {
  Book book = Book("OOP");

  stdout.write("Enter member name: ");
  String name = stdin.readLineSync()!;

  Member member = Member(name);

  Library library = Library();

  library.issue(book, member);
  library.returnBook(book);
}