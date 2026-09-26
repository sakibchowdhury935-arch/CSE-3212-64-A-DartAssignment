import 'dart:io';

class Customer {
  final String name;
  final int id;

  const Customer(this.name, this.id);
}

void main() {
  stdout.write("Enter customer name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter customer ID: ");
  int id = int.parse(stdin.readLineSync()!);

  constCustomer(name, id);
}

void constCustomer(String name, int id) {
  Customer customer = Customer(name, id);

  print("Name: ${customer.name}");
  print("ID: ${customer.id}");
}

