import 'dart:io';

class BankAccount {
  double _balance = 0;

  set balance(double value) {
    if (value >= 0) {
      _balance = value;
      print("Balance updated successfully.");
    } else {
      print("Balance cannot be negative.");
    }
  }

  double get balance {
    return _balance;
  }
}

void main() {
  BankAccount account = BankAccount();

  stdout.write("Enter balance: ");
  double amount = double.parse(stdin.readLineSync()!);

  account.balance = amount;

  print("Current Balance: ${account.balance}");
}

