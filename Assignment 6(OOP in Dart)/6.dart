import 'dart:io';

class BankAccount {
  String accountHolder;
  double balance;

  BankAccount(this.accountHolder, this.balance);

  void deposit(double amount) {
    balance += amount;
    print("Deposited: $amount");
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print("Withdrawn: $amount");
    } else {
      print("Insufficient Balance");
    }
  }

  void displayBalance() {
    print("Current Balance: $balance");
  }
}

void main() {
  stdout.write("Enter account holder name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter initial balance: ");
  double balance = double.parse(stdin.readLineSync()!);

  BankAccount account = BankAccount(name, balance);

  stdout.write("Enter deposit amount: ");
  double depositAmount = double.parse(stdin.readLineSync()!);
  account.deposit(depositAmount);

  stdout.write("Enter withdrawal amount: ");
  double withdrawAmount = double.parse(stdin.readLineSync()!);
  account.withdraw(withdrawAmount);

  account.displayBalance();
}