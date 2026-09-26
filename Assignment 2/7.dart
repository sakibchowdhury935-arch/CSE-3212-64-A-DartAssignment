void main() {
  for (int num = 1; num <= 9; num++) {
    print("\nTable of $num");

    for (int i = 1; i <= 10; i++) {
      print("$num x $i = ${num * i}");
    }
  }
}