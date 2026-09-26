import 'dart:io';

abstract class Payment {
  void pay(double amount);
}

class CashPayment extends Payment {
  @override
  void pay(double amount) {
    print("Paid $amount using Cash");
  }
}

class CardPayment extends Payment {
  @override
  void pay(double amount) {
    print("Paid $amount using Card");
  }
}

void main() {
  stdout.write("Enter payment method (cash/card): ");
  String method = stdin.readLineSync()!.toLowerCase();

  stdout.write("Enter amount: ");
  double amount = double.parse(stdin.readLineSync()!);

  Payment payment;

  if (method == "cash") {
    payment = CashPayment();
  } else if(method == "card"){
    payment = CardPayment();
  } else{
    print("Invalid method");
    return;
  }

  payment.pay(amount);
}