import 'dart:math';

String generatePassword(int length) {
  const chars =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';

  Random random = Random();

  return List.generate(
      length, (index) => chars[random.nextInt(chars.length)]).join();
}

void main() {
  print("Password: ${generatePassword(8)}");
}