import 'dart:io';

enum OrderStatus {
  pending,
  shipped,
  delivered
}

void main() {
  stdout.write("Enter status (pending/shipped/delivered): ");
  String input = stdin.readLineSync()!.toLowerCase();

  OrderStatus status = OrderStatus.values.firstWhere(
    (e) => e.name == input,
  );

  switch (status) {
    case OrderStatus.pending:
      print("Order is pending.");
      break;

    case OrderStatus.shipped:
      print("Order has been shipped.");
      break;

    case OrderStatus.delivered:
      print("Order has been delivered.");
      break;
  }
}