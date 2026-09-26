void main() {
  Map<String, String> contacts = {
    "Sakib": "01859899299",
    "Hasan": "01829298238",
    "Ratul": "01718588291",
    "Ayon": "01911613839"
  };

  var result =
      contacts.keys.where((key) => key.length == 4);

  print("Keys with length 4:");

  result.forEach(print);
}